package com.kh.hmm.member.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.kh.hmm.member.dao.MemberDao;
import com.kh.hmm.member.vo.Member;

@Service("memberService")
public class MemberServiceImpl implements MemberService
{

	@Autowired
	private MemberDao mDao;

	@Override
	public Member loginMember()
	{
		return mDao.login();
	}
	
	/*@Override
	public Member selectMember()
	{
		return mDao.selectMember();
	}*/
	
	
}
