package com.kh.hmm.member.controller;

import java.io.BufferedOutputStream;
import java.io.File;
import java.io.FileOutputStream;
import java.io.PrintWriter;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpRequest;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
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
		if (m.getId() == null)
			return "redirec:/";
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
	public String memberUpdate(Member m, HttpSession session) {
		logger.info("memberUpdate() call...");
		Member member = memberService.updateMember(m);
		if (member != null) {
			session.setAttribute("member", member);

		}
		return "redirect:/";
	}

	@RequestMapping(value = "uploadFile.do", method = RequestMethod.POST)
	public String memberUpdate(HttpServletRequest request, HttpSession session,
			@RequestParam("photo") MultipartFile uploadfile) {
		logger.info("memberUploadProfile() call...");
		int i = 1;
		Member m = (Member) session.getAttribute("member");
		Member member = null;
		String savePath = "C:\\Hmm\\Hmm\\src\\main\\webapp\\resources\\img\\" + m.getId(); // 파일이 저장될 프로젝트 안의 폴더 경로

		// 파일 객체 생성
		File file = new File(savePath);
		// !표를 붙여주어 파일이 존재하지 않는 경우의 조건을 걸어줌
		if (!file.exists()) {
			// 디렉토리 생성 메서드
			file.mkdirs();
			System.out.println("created directory successfully!");
		} else {
			if (file.exists())
				file.delete();
		}

		String originalFilename = uploadfile.getOriginalFilename(); // fileName.jpg
		String onlyFileName = originalFilename.substring(0, originalFilename.indexOf(".")); // fileName
		String extension = originalFilename.substring(originalFilename.indexOf(".")); // .jpg

		String rename = m.getId() + extension;

		String fullPath = savePath + "\\" + rename;
		m.setPhoto(fullPath);
		if (!uploadfile.isEmpty()) {
			try {
				byte[] bytes = uploadfile.getBytes();
				BufferedOutputStream stream = new BufferedOutputStream(new FileOutputStream(new File(fullPath)));
				stream.write(bytes);
				stream.close();
				member = memberService.updateMember(m);

				if (member != null) {
					session.setAttribute("member", member);
				}

			} catch (Exception e) {
				e.printStackTrace();
			}
		}

		return "member/updateMember";
	}

	@RequestMapping(value = "updateProfile.do", method = RequestMethod.GET)
	public String goUpdateProfile(Model model) {
		logger.info("memberUploadProfile() call...");
		return "member/updateMember";
	}

	@RequestMapping(value = "idCheck.do", method = RequestMethod.POST)
	public void idCheck(HttpServletRequest request, HttpServletResponse response, Model model) throws Exception {
		System.out.println("idCheck() call....");
		PrintWriter out = response.getWriter();
		int chk = 0;
		System.out.println("리퀘스트 값 : "+request.getParameter("id"));
		try {
			String paramId = (request.getParameter("id") == null) ? "" : String.valueOf(request.getParameter("id"));
			Member m = new Member();
			m.setId(paramId.trim());
			System.out.println("member 아이디 값 : " + m.getId());
			Member member = memberService.dupMember(m);
			if (member == null)
				chk = 1;
			out.print(chk);
			out.flush();
			out.close();
		} catch (Exception e) {
			e.printStackTrace();
			out.print(0);
		}
	}
}
