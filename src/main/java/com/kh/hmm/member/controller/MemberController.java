package com.kh.hmm.member.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.kh.hmm.member.model.service.MemberService;
import com.kh.hmm.member.model.vo.Member;

@Controller
public class MemberController
{
	private static final Logger logger = LoggerFactory.getLogger(MemberController.class);
	
	@Autowired
	private MemberService memberService;
	
	@RequestMapping(value = "login.do", method = RequestMethod.POST)
	public String loginMember(Member m, HttpSession session) {
		logger.info("login() call...");
		System.out.println(m.getId()+"  "+m.getPassword());
		
		Member member = memberService.loginMember(m);
		System.out.println(member);
		if(member != null){
			session.setAttribute("member", member); 			
		}
		return "home";
	}
	
	@RequestMapping("logout.do")
	public String logoutMember(HttpSession session){
		logger.info("logoutMember() call...");
		
		if(session.getAttribute("member") != null){			
			session.invalidate();
		}
		return "home";
		
	}
	
	@RequestMapping(value="enroll.do", method = RequestMethod.POST)
	public String memberInsert(Member m, HttpSession session){
		logger.info("memberInsert() call...");
		System.out.println(m);
		Member member = memberService.enrollMember(m);
		if(member != null)
			session.setAttribute("member", member);
		return "home";
	}
}
