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
		return sqlSession.selectOne("login",m);
	}

	public Member enrollMember(Member m) {
		int result;
		Member member = null;
		result = sqlSession.insert("enroll", m);
		
		if(result >= 1)
			member = sqlSession.selectOne("login",m);
		return member;
		
	}

	public Member updateMember(Member m) {
		int result;
		Member member = null;
		result = sqlSession.update("update", m);
		
		if(result >= 1)
			member = sqlSession.selectOne("login", m);
		return member;
	}

	public Member dupMember(Member m) {
		return sqlSession.selectOne("chkDup", m);
	}

	public Member emailCheck(Member m) {
		return (Member)sqlSession.selectOne("emailChk", m);
	}

	public Member updatePhoto(Member m) {
		int result;
		Member member = null;
		result = sqlSession.update("updatePhoto", m);
		
		if(result >= 1)
			member = sqlSession.selectOne("login", m);
		return member;
	}
	
	public int updateDDARU(Member m) 
	{
		return sqlSession.update("updateDDARU",m);
	}
}
