package com.kh.hmm.newTech.controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Date;
import java.util.ArrayList;

import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.json.simple.JSONArray;
import org.json.simple.JSONObject;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.kh.hmm.board.controller.BoardController;
import com.kh.hmm.board.model.vo.Board;
import com.kh.hmm.member.model.vo.Member;
import com.kh.hmm.newTech.model.service.WeeksubjectService;
import com.kh.hmm.newTech.model.vo.Conlist;
import com.kh.hmm.newTech.model.vo.Prolist;
import com.kh.hmm.newTech.model.vo.Weeksubject;

@Controller
public class WeeksubjectController
{
	private static final Logger logger = LoggerFactory.getLogger(BoardController.class);
			
	@Autowired
	private WeeksubjectService weekService;
	
	@RequestMapping(value = "weeksubject.do", method = RequestMethod.GET)
	public String weeksubject(Model m) 
	{
		logger.info("weeksubject() call...");		
		
		Weeksubject ws=weekService.selectWeek();
		
		if(ws!=null) m.addAttribute("weeksub", ws);
		
		return "../../newtech";
	}
	
	@RequestMapping(value = "proInsert.do", method = RequestMethod.POST)
	public void proInsert(HttpServletResponse response,HttpSession session) throws IOException 
	{
		logger.info("proInsert() call...");		
		System.out.println((Member)session.getAttribute("member"));
		PrintWriter pw = response.getWriter();
		pw.write(weekService.proInsert(((Member)session.getAttribute("member")).getId()));
		pw.close();		
	}
	
	@RequestMapping(value = "conInsert.do", method = RequestMethod.POST)
	public void conInsert(HttpServletResponse response,HttpSession session) throws IOException 
	{
		logger.info("conInsert() call...");
		
		PrintWriter pw = response.getWriter();
		pw.write(weekService.conInsert(((Member)session.getAttribute("member")).getId()));
		pw.close();		
	}
	
	@RequestMapping(value = "conList.do", method = RequestMethod.GET)
	public void conList(HttpServletResponse response) throws IOException 
	{
		logger.info("conList() call...");
		
		ArrayList<Conlist> list=weekService.conList();
						
		JSONObject json = new JSONObject();
		JSONArray jarr = new JSONArray();
		
		for(Conlist con : list)
		{			
			jarr.add(con.getId());
		}
		
		json.put("list", jarr);
		System.out.println(json.toJSONString());
		response.setContentType("application/json"); 
		PrintWriter out = response.getWriter();
		out.print(json.toJSONString());
		out.flush();
		out.close();
	}
	
	@RequestMapping(value = "proList.do", method = RequestMethod.GET)
	public void proList(HttpServletResponse response) throws IOException 
	{
		logger.info("proList() call...");
		
		ArrayList<Prolist> list=weekService.proList();
						
		JSONObject json = new JSONObject();
		JSONArray jarr = new JSONArray();
		
		for(Prolist pro : list)
		{			
			jarr.add(pro.getId());
		}
		
		json.put("list", jarr);
		System.out.println(json.toJSONString());
		response.setContentType("application/json"); 
		PrintWriter out = response.getWriter();
		out.print(json.toJSONString());
		out.flush();
		out.close();
	}
	
	@RequestMapping(value = "proCount.do", method = RequestMethod.GET)
	public void proCount(HttpServletResponse response) throws IOException 
	{
		logger.info("proCount() call...");
		
		int count=weekService.proCount();
						
		PrintWriter out = response.getWriter();
		out.print(count);
		out.flush();
		out.close();
	}
}
