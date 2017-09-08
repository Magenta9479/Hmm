package com.kh.hmm.board.model.service;

import java.util.ArrayList;

import com.kh.hmm.board.model.vo.Board;
import com.kh.hmm.member.model.vo.Member;

public interface BoardService
{
	Board selectBoard(int boardCode);
	
	ArrayList<Board> SelectBoardList(int dis);
	//0:All,1:Com,2:QnA,3:Tech,4:Amu,5:PS
	
	int insertBoard(Board b);
	
	int updateBoard(Board b);
	
	int deletBoard(Board b);
}
