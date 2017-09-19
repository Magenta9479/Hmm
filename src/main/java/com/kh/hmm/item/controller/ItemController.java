package com.kh.hmm.item.controller;

import java.util.ArrayList;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.kh.hmm.board.controller.BoardController;
import com.kh.hmm.item.model.service.ItemService;
import com.kh.hmm.item.model.vo.Item;

@Controller
public class ItemController
{
	private static final Logger logger = LoggerFactory.getLogger(BoardController.class);
	
	@Autowired
	private ItemService itemService;
	
	@RequestMapping(value = "itemLists.do", method = RequestMethod.GET)
	public String selectItemList(Model model) 
	{
		logger.info("selectItemList() call...");

		ArrayList<Item> list=itemService.selectItemList();		
		
		if(list != null)
		{
			model.addAttribute("list", list);
		}		
		
		//매점으로
		return "../../cashshop";
	}
	
	@RequestMapping(value = "itemOne.do", method = RequestMethod.GET)
	public String selectItemOne(Model model,int itemcode) 
	{
		logger.info("selectItemOne("+itemcode+") call...");

		Item item=itemService.selectItemOne(itemcode);		
		
		if(item != null)
		{
			model.addAttribute("item", item);
		}		
		
		//아이템 상세보기로
		return "../../index";
	}
	
	@RequestMapping(value = "itemPurchasedLists.do", method = RequestMethod.GET)
	public String selectPurchasedItemList(Model model,int membercode) 
	{
		logger.info("selectPurchasedItemList("+membercode+") call...");

		ArrayList<Item> list=itemService.selectPurchasedItemList(membercode);		
		
		if(list != null)
		{
			model.addAttribute("list", list);
		}		
		
		//인벤토리로
		return "../../index";
	}
}
