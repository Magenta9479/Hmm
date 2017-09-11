package com.kh.hmm.board.model.dao;

import java.util.ArrayList;
import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.kh.hmm.board.model.vo.Board;

@Repository("boardDao")
public class BoardDao
{
	@Autowired
	private SqlSessionTemplate sqlSession;
	
	private String pre=null;
	private String post=null;
	
	public BoardDao() {}
	
	private String distributor(int dis,String pre,String post) 
	{
		String result=null;
		/*1	기업
		2	QnA
		3	신기술
		4	아무말대잔치
		5	프로젝트/소스*/
		
		if(dis==0)result="All";		
		else result="";		
		
		return pre+result+post;
	}
	
	public Board selectBoardOne(int bcode) 
	{
		return (Board)sqlSession.selectOne("selectBoardOne",bcode);
	}
	
	public ArrayList<Board> selectBoardList(int dis)
	{
		pre="select";
		post="BoardList";
				
		List<Board> list=sqlSession.selectList(distributor(dis,pre,post),dis);		
		
		return (ArrayList<Board>)list;		
	}

	public int insertBoard(Board b) 
	{
		pre="insert";
		post="Board";
		
		return sqlSession.insert(distributor(b.getDistinguish(),pre,post),b);
	}
	
	public int updateBoard(Board b) 
	{
		pre="update";
		post="Board";
		
		return sqlSession.update(distributor(b.getDistinguish(),pre,post),b);
	}
	
	public int deleteBoard(Board b) 
	{
		pre="delete";
		post="Board";
		
		return sqlSession.delete(distributor(b.getDistinguish(),pre,post),b);
	}
}
