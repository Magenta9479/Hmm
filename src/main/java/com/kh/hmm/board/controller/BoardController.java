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
import com.kh.hmm.board.model.vo.BoardPoint;
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
		logger.info("selectBoardOne("+bcode+") call...");

		Board board=boardService.selectBoardOne(bcode);	
		ArrayList<Comments> comments=null;
		ArrayList<Attachfile> files=null;
		
		if(Integer.parseInt(board.getIsdelete())>0)	
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
		}		
		
		return "../../index";//보드 상세보기로 넘어가야한다.
	}	
	
	@RequestMapping(value = "boardCheck.do", method = RequestMethod.POST)
	public int checkBoard(BoardPoint point) 
	{//아작스 처리를 요한다.
		logger.info("checkBoard("+point+") call...");

		int result=boardService.checkBoard(point);

		return result;
	}	
	
	@RequestMapping(value = "boardInsert.do", method = RequestMethod.POST)
	public int insertBoard(Board b) 
	{//아작스 처리를 요한다.
		logger.info("insertBoard("+b+") call...");

		int result=boardService.insertBoard(b);

		return result;
	}
	
	@RequestMapping(value = "boardUpdate.do", method = RequestMethod.POST)
	public int updateBoard(Board b) 
	{//아작스 처리를 요한다.
		logger.info("updateBoard("+b+") call...");

		int result=boardService.updateBoard(b);

		return result;
	}
	
	@RequestMapping(value = "boardDelete.do", method = RequestMethod.POST)
	public String deleteBoard(int bcode) 
	{
		logger.info("deleteBoard("+bcode+") call...");

		boardService.deletBoard(bcode);

		return "../../Board";
	}
}
