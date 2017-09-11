package com.kh.hmm.item.model.service;

import java.util.ArrayList;

import com.kh.hmm.item.model.vo.Item;

public interface ItemService
{
	Item selectItemOne(int itemcode);
	
	ArrayList<Item> selectItemList();
	
	ArrayList<Item> selectPurchasedItemList(int membercode);	
}
