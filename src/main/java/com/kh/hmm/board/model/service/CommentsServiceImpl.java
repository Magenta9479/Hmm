package com.kh.hmm.board.model.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.kh.hmm.board.model.dao.CommentsDao;
import com.kh.hmm.member.model.dao.MemberDao;
import com.kh.hmm.member.model.vo.Member;

@Service("commentsService")
public class CommentsServiceImpl implements CommentsService
{

	@Autowired
	private CommentsDao cDao;

	
	
	
}
