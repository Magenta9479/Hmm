package com.kh.hmm.member.controller;

import java.io.File;

import javax.servlet.annotation.MultipartConfig;
import javax.servlet.http.HttpSession;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;
import com.kh.hmm.member.model.service.MemberService;
import com.kh.hmm.member.model.vo.Member;

@Controller
@MultipartConfig
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

	@RequestMapping(value = "uploadProfile.do", method = RequestMethod.POST)
	public void profileUpload(@RequestParam("uploadFile") MultipartFile file, HttpSession session) throws Exception {
		int i = 1;
		Member m = (Member) session.getAttribute("member");
		System.out.println(file.getOriginalFilename());
		File f = new File("C:\\Hmm\\uploadProfile\\" + m.getId() + file.getOriginalFilename());
		if (f.exists())
			f = new File("C:\\Hmm\\uploadProfile\\" + m.getId() + file.getOriginalFilename() + (i++));
		file.transferTo(f);
	}

	@RequestMapping(value = "update.do", method = RequestMethod.POST)
	public String memberUpdate(Member m, HttpSession session) {
		logger.info("memberUpdate() call...");

		System.out.println(session.getAttribute("member"));

		Member mem = (Member) (session.getAttribute("member"));
		m.setMembercode(mem.getMembercode());
		Member member = memberService.updateMember(m);
		if (member != null) {
			session.setAttribute("member", member);
		}
		return "redirect:/";
	}
}
