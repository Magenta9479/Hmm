package com.kh.hmm.member.controller;

import java.io.File;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.SessionAttributes;
import org.springframework.web.multipart.MultipartFile;

import com.kh.hmm.member.model.service.MemberService;
import com.kh.hmm.member.model.vo.Member;

@Controller
public class MemberController {
	private static final Logger logger = LoggerFactory.getLogger(MemberController.class);

	@Autowired
	private MemberService memberService;

	@RequestMapping(value = "login.do", method = RequestMethod.POST)
	public String loginMember(Member m, HttpSession session) {
		logger.info("login() call...");
		Member member = memberService.loginMember(m);
		if (member != null) {
			session.setAttribute("member", member);
		} else {
			session.setAttribute("member", 0);
		}
		return "redirect:/";
	}

	@RequestMapping("logout.do")
	public String logoutMember(HttpSession session) {
		logger.info("logoutMember() call...");

		if (session.getAttribute("member") != null) {
			session.invalidate();
		}
		return "redirect:/";

	}

	@RequestMapping(value = "enroll.do", method = RequestMethod.POST)
	public String memberInsert(Member m, HttpSession session) {
		logger.info("memberInsert() call...");
		System.out.println(m);
		Member member = memberService.enrollMember(m);
		if (member != null)
			session.setAttribute("member", member);
		return "redirect:/";
	}

	@RequestMapping(value = "update.do", method = RequestMethod.POST)
	public String memberUpdate(Member m, HttpSession session, @RequestParam("photo") MultipartFile file) {
		logger.info("memberUpdate() call...");
		int i = 1;
		System.out.println(m);
		String fileName = file.getOriginalFilename();
		File f = new File("C:\\Hmm\\uploadProfile\\" + m.getId() + fileName);

		if (f.exists()) {
			f = new File("C:\\Hmm\\uploadProfile\\" + m.getId() + fileName + (i++));
		}
		Member member = memberService.enrollMember(m);
		if (member != null) {
			session.setAttribute("member", member);
			try {
				file.transferTo(f);
			} catch (Exception e) {
				e.printStackTrace();
			}

		}
		return "redirect:/";
	}
}
