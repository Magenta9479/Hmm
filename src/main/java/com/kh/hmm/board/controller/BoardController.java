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

import com.kh.hmm.board.model.service.BoardService;
import com.kh.hmm.board.model.vo.Board;
import com.kh.hmm.member.model.service.MemberService;
import com.kh.hmm.member.model.vo.Member;

@Controller
public class BoardController
{
	private static final Logger logger = LoggerFactory.getLogger(BoardController.class);
	
	@Autowired
	private BoardService boardService;
	
	@RequestMapping(value = "boardAllList.do", method = RequestMethod.GET)
	public String selectBoardList(Board b, Model model) 
	{
		logger.info("selectBoardList() call...");
		
		ArrayList<Board> list=boardService.selectBoardList(0);		
		
		if(list != null)
		{
			model.addAttribute("list", list);
		}		
		
		return "../../index";
	}

}
