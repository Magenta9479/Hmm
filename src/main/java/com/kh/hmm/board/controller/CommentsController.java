package com.kh.hmm.board.controller;

import java.util.ArrayList;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.kh.hmm.board.model.service.CommentsService;
import com.kh.hmm.board.model.vo.Comments;

@Controller
public class CommentsController
{
	private static final Logger logger = LoggerFactory.getLogger(CommentsController.class);
	
	@Autowired
	private CommentsService commentsService;
	
	@RequestMapping(value = "commentsLists.do", method = RequestMethod.GET)
	public String selectBoardList(Model model,int bcode) 
	{
		logger.info("selectCommentsList() call...");

		ArrayList<Comments> list=commentsService.selectCommentsList(bcode);	
		
		if(list != null)
		{
			model.addAttribute("clist", list);
		}	
		
		for(Comments c:list) 
		{
			System.out.println(c.getContent());
		}
		
		return "../../index";
	}
}
