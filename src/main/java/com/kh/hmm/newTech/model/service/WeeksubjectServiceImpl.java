package com.kh.hmm.newTech.model.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.kh.hmm.newTech.model.dao.WeeksubjectDao;

@Service("weeksubjectService")
public class WeeksubjectServiceImpl implements WeeksubjectService
{
	@Autowired
	private WeeksubjectDao wDao;
}
