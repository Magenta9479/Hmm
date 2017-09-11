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
	
	@RequestMapping(value = "boardLists.do", method = RequestMethod.GET)
	public String selectBoardList(Model model,int dis) 
	{
		logger.info("selectBoardList("+dis+") call...");
		String rturn=null;
		ArrayList<Board> list=boardService.selectBoardList(dis);		
		
		if(list != null)
		{
			model.addAttribute("list", list);
		}		
		
		if(dis==0) rturn="index";
		else rturn="board";
		
		
		return "../../"+rturn;
	}
	
	@RequestMapping(value = "boardOne.do", method = RequestMethod.GET)
	public String selectBoardOne(Model model,int bcode) 
	{
		logger.info("selectBoardList("+bcode+") call...");
		
		Board board=boardService.selectBoardOne(bcode);		
		
		if(board != null)
		{
			model.addAttribute("board", board);
		}		
		
		return "../../index";
	}

	
	
}
