package com.kh.hmm.newTech.model.dao;

import java.util.ArrayList;
import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.kh.hmm.newTech.model.vo.Conlist;
import com.kh.hmm.newTech.model.vo.Prolist;
import com.kh.hmm.newTech.model.vo.Weeksubject;

@Repository("weeksubjectDao")
public class WeeksubjectDao
{
	@Autowired
	private SqlSessionTemplate sqlSession;

	public int proInsert(String id)
	{
		return sqlSession.insert("proInsert",id);
	}

	public int conInsert(String id)
	{
		return sqlSession.insert("conInsert",id);
	}

	public ArrayList<Prolist> proList()
	{
		List<Prolist> list=sqlSession.selectList("proList");
		return (ArrayList<Prolist>)list;
	}

	public ArrayList<Conlist> conList()
	{
		List<Conlist> list=sqlSession.selectList("conList");
		return (ArrayList<Conlist>)list;
	}

	public Weeksubject selectWeek()
	{
		return sqlSession.selectOne("selectWeek");
	}

	public int proCount()
	{
		return sqlSession.selectOne("proCount");
	}

	public int conCount()
	{
		return sqlSession.selectOne("conCount");
	}
}
