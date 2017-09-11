package com.kh.hmm.board.controller;

import java.util.ArrayList;

import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.kh.hmm.board.model.service.AttachfileService;
import com.kh.hmm.board.model.vo.Attachfile;
import com.kh.hmm.board.model.vo.Board;
import com.kh.hmm.member.model.service.MemberService;
import com.kh.hmm.member.model.vo.Member;

@Controller
public class AttachfileController
{
	private static final Logger logger = LoggerFactory.getLogger(AttachfileController.class);
	
	@Autowired
	private AttachfileService attachfileService;
	
	@RequestMapping(value = "fileLists.do", method = RequestMethod.GET)
	public String selectBoardList(Model model,int bcode) 
	{
		logger.info("selectFileList("+bcode+") call...");
		
		ArrayList<Attachfile> list=attachfileService.selectFileList(bcode);		
		
		if(list != null)
		{
			model.addAttribute("flist", list);
		}		
		
		return "../../index";
	}
}
