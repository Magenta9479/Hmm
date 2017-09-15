package com.kh.hmm.newTech.model.service;

import java.util.ArrayList;

import com.kh.hmm.newTech.model.vo.Conlist;
import com.kh.hmm.newTech.model.vo.Prolist;
import com.kh.hmm.newTech.model.vo.Weeksubject;

public interface WeeksubjectService
{
	int proInsert(String string);

	int conInsert(String string);

	ArrayList<Prolist> proList();
	
	int proCount();
	
	ArrayList<Conlist> conList();

	int conCount();
	
	Weeksubject selectWeek();
}
