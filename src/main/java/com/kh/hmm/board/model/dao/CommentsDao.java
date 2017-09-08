package com.kh.hmm.board.model.dao;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.kh.hmm.board.model.vo.Board;
import com.kh.hmm.board.model.vo.Comments;
import com.kh.hmm.member.model.vo.Member;

@Repository("commentsDao")
public class CommentsDao
{
	@Autowired
	private SqlSessionTemplate sqlSession;
	
	public Comments selectBoard() 
	{
		return (Comments)sqlSession.selectOne("selectBoard");
	}

	public int insertBoard(Board b) 
	{
		return sqlSession.insert("insertBoard",b);
	}
	
	public int updateBoard(Board b) 
	{
		return sqlSession.update("insertBoard",b);
	}
	
	public int deleteBoard(Board b) 
	{
		return sqlSession.delete("insertBoard",b );
	}
}
