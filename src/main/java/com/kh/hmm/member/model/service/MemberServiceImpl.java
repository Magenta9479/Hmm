package com.kh.hmm.member.model.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.kh.hmm.member.model.dao.MemberDao;
import com.kh.hmm.member.model.vo.Member;

@Service("memberService")
public class MemberServiceImpl implements MemberService
{

	@Autowired
	private MemberDao mDao;

	@Override
	public Member loginMember(Member m)
	{
		return mDao.loginMember(m);
	}
	
	/*@Override
	public Member selectMember()
	{
		return mDao.selectMember();
	}*/
	
	
}
