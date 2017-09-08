package com.kh.hmm.member.model.service;

import com.kh.hmm.member.model.vo.Member;

public interface MemberService
{
	//Member selectMember();
	Member loginMember(Member m);
	Member enrollMember(Member m);
	Member updateMember(Member m);
}
