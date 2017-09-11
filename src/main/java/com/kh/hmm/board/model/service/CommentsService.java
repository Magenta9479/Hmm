package com.kh.hmm.board.model.service;

import java.util.ArrayList;

import com.kh.hmm.board.model.vo.Comments;

public interface CommentsService
{	
	ArrayList<Comments> selectCommentsList(int bcode);
		
	int insertComments(Comments c);
	
	int updateComments(Comments c);
	
	int deletComments(Comments c);
}
