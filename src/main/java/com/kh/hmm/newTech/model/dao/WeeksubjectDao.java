package com.kh.hmm.newTech.model.dao;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository("weeksubjectDao")
public class WeeksubjectDao
{
	@Autowired
	private SqlSessionTemplate sqlSession;
}
