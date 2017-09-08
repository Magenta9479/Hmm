package com.kh.hmm.board.model.service;

import java.util.ArrayList;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.kh.hmm.board.model.dao.BoardDao;
import com.kh.hmm.board.model.vo.Board;
import com.kh.hmm.member.model.dao.MemberDao;
import com.kh.hmm.member.model.vo.Member;

@Service("boardService")
public class BoardServiceImpl implements BoardService
{

	@Autowired
	private BoardDao bDao;

	@Override
	public Board selectBoard(int boardCode)
	{
		return bDao.selectBoard(boardCode);
	}

	@Override
	public ArrayList<Board> SelectBoardList(int dis)
	{
		return bDao.selectBoardList(dis);
	}

	@Override
	public int insertBoard(Board b)
	{
		return bDao.insertBoard(b);
	}

	@Override
	public int updateBoard(Board b)
	{
		return bDao.updateBoard(b);
	}

	@Override
	public int deletBoard(Board b)
	{
		return bDao.deleteBoard(b);
	}


	
}
