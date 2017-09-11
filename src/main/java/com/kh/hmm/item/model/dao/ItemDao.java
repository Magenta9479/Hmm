package com.kh.hmm.item.model.dao;

import java.util.ArrayList;
import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.kh.hmm.item.model.vo.Item;

@Repository("itemDao")
public class ItemDao
{
	@Autowired
	private SqlSessionTemplate sqlSession;

	public Item selectItemOne(int itemcode)
	{
		return (Item)sqlSession.selectOne("selectItemOne",itemcode);
	}

	public ArrayList<Item> selectItemList()
	{
		List<Item> list=sqlSession.selectList("selectItemList");
		return (ArrayList<Item>)list;
	}

	public ArrayList<Item> selectPurchasedItemList(int membercode)
	{
		List<Item> list=sqlSession.selectList("selectPurchasedItemList",membercode);
		return (ArrayList<Item>)list;
	}

}