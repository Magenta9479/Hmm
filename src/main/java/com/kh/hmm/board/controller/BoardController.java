package com.kh.hmm.board.controller;

import java.util.ArrayList;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.kh.hmm.board.model.service.AttachfileService;
import com.kh.hmm.board.model.service.BoardService;
import com.kh.hmm.board.model.service.CommentsService;
import com.kh.hmm.board.model.vo.Attachfile;
import com.kh.hmm.board.model.vo.Board;
import com.kh.hmm.board.model.vo.Comments;

@Controller
public class BoardController
{
	private static final Logger logger = LoggerFactory.getLogger(BoardController.class);
	
	@Autowired
	private BoardService boardService;
	@Autowired
	private CommentsService commentsService;
	@Autowired
	private AttachfileService attachfileService;
	
	
	
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
		ArrayList<Comments> comments=null;
		ArrayList<Attachfile> files=null;
		
		System.out.println(board);
		System.out.println(board.getPoint());
		System.out.println(board.getCode());
		
		/*if(board.getIsdelete()getCommentnum()>0)	
		{
			comments=commentsService.selectCommentsList(bcode);
		}
		
		if(board.getHasfile()!=null) 
		{
			files=attachfileService.selectFileList(bcode);			
		}
		
		if(board != null)
		{
			model.addAttribute("board", board);
			if(comments!=null) model.addAttribute("comments", comments);
			if(files!=null) model.addAttribute("files", files);
		}		*/
		
		return "../../index";//보드 상세보기로 넘어가야한다.
	}	
}
