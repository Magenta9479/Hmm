package com.kh.hmm.board.model.service;

import java.util.ArrayList;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.kh.hmm.board.model.dao.AttachfileDao;
import com.kh.hmm.board.model.vo.Attachfile;
import com.kh.hmm.member.model.dao.MemberDao;
import com.kh.hmm.member.model.vo.Member;

@Service("attachfileService")
public class AttachfileServiceImpl implements AttachfileService
{

	@Autowired
	private AttachfileDao afDao;

	@Override
	public ArrayList<Attachfile> selectFileList(int bcode)
	{
		return afDao.selectAttachfiles(bcode);
	}

	@Override
	public int insertAttachfile(Attachfile file)
	{
		return afDao.insertAttachfile(file);
	}

	@Override
	public int deleteAttachfile(int atcode)
	{
		return afDao.deleteAttachfile(atcode);
	}

	@Override
	public int updateAttachfile(Attachfile file)
	{
		return afDao.updateAttachfile(file);
	}




	
	
}
