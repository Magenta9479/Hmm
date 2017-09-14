package com.kh.hmm.newTech.controller;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;

import com.kh.hmm.board.controller.BoardController;
import com.kh.hmm.newTech.model.service.WeeksubjectService;

	@Controller
	public class WeeksubjectController
	{
	private static final Logger logger = LoggerFactory.getLogger(BoardController.class);
		
	@Autowired
	private WeeksubjectService weekServiceServie;
}
