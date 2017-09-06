package com.kh.hmm.member.model.dao;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.kh.hmm.member.model.vo.Member;

@Repository("memberDao")
public class MemberDao
{
	@Autowired
	private SqlSessionTemplate sqlSession;
	
	public Member selectMember() 
	{
		return (Member)sqlSession.selectOne("selectMember");
	}

	public Member loginMember(Member m)
	{
		return (Member)sqlSession.selectOne("login",m);
	}
}
