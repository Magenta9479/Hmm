package com.kh.hmm.member.controller;

import java.io.BufferedOutputStream;
import java.io.File;
import java.io.FileOutputStream;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
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
	public String memberUpdate(Member m, HttpSession session, @RequestParam("photo") MultipartFile uploadfile) {
		logger.info("memberUpdate() call...");
		int i = 1;

		Member member = memberService.enrollMember(m);
		if (member != null) {
			session.setAttribute("member", member);
			uploadfile = m.getUploadFile();
			if (uploadfile != null) {
				String fileName = uploadfile.getOriginalFilename();
				m.setPhoto(fileName);
				try {
					// 1. FileOutputStream 사용
					// byte[] fileData = file.getBytes();
					// FileOutputStream output = new FileOutputStream("C:/images/" + fileName);
					// output.write(fileData);

					// 2. File 사용
					File file = new File("C:\\Hmm\\uploadProfile\\" + m.getId() + fileName);
					if (file.exists()) {
						file = new File("C:\\Hmm\\uploadProfile\\" + m.getId() + fileName + (i++));
					}
					uploadfile.transferTo(file);
				} catch (Exception e) {
					e.printStackTrace();
				} // try - catch
			} // if
		}
		return "redirect:/";
	}

	@RequestMapping(value = "uploadFile.do", method = RequestMethod.POST)
	public String memberUpdate(HttpServletRequest request, HttpSession session,
			@RequestParam("photo") MultipartFile uploadfile) {
		logger.info("memberUploadProfile() call...");
		int i = 1;
		Member m = (Member) session.getAttribute("member");
		String savePath = "C:/Hmm/uploadProfile/" + m.getId(); // 파일이 저장될 프로젝트 안의 폴더 경로

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

		if (!uploadfile.isEmpty()) {
			try {
				byte[] bytes = uploadfile.getBytes();
				BufferedOutputStream stream = new BufferedOutputStream(new FileOutputStream(new File(fullPath)));
				stream.write(bytes);
				stream.close();
			} catch (Exception e) {
				e.printStackTrace();
			}
		}

		return "redirect:/resources/views/member/updateMember.jsp";
	}
	
	@RequestMapping(value="updateProfile.do", method=RequestMethod.GET)
	public String goUpdateProfile(Model model)
	{
		logger.info("memberUploadProfile() call...");
		return "member/updateMember";
	}
}
