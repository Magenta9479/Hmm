package com.kh.hmm.board.model.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.kh.hmm.board.model.dao.AttachfileDao;
import com.kh.hmm.member.model.dao.MemberDao;
import com.kh.hmm.member.model.vo.Member;

@Service("attachfileService")
public class AttachfileServiceImpl implements AttachfileService
{

	@Autowired
	private AttachfileDao afDao;




	
	
}
