package com.kh.hmm.board.model.service;

import java.util.ArrayList;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.kh.hmm.board.model.dao.BoardDao;
import com.kh.hmm.board.model.vo.Board;
import com.kh.hmm.board.model.vo.BoardPoint;
import com.kh.hmm.member.model.dao.MemberDao;
import com.kh.hmm.member.model.vo.Member;

@Service("boardService")
public class BoardServiceImpl implements BoardService
{

	@Autowired
	private BoardDao bDao;

	@Override
	public Board selectBoardOne(int boardCode)
	{
		return bDao.selectBoardOne(boardCode);
	}

	@Override
	public ArrayList<Board> selectBoardList(int dis)
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
	public int deletBoard(int bcode)
	{
		return bDao.deleteBoard(bcode);
	}

	@Override
	public int checkBoard(BoardPoint point)
	{
		return bDao.checkBoard(point);
	}

	@Override
	public int boardCode()
	{
		return bDao.boardCode();
	}

	@Override
	public int updateAB(int bcode)
	{
		return bDao.updateAB(bcode);
	}

	@Override
	public void recommendation(String recom, int bcode)
	{
		bDao.recommendation(recom,bcode);
	}

	@Override
	public void crecommendation(String recom, int ccode)
	{
		bDao.crecommendation(recom,ccode);
	}


	
}
