package com.kh.hmm.newTech.model.vo;

import java.sql.Date;

public class Weeksubject
{
	private int wscode;
	private String title;
	private int pro;
	private int con;
	private Date startdate;
	public Weeksubject(int wscode, String title, int pro, int con, Date startdate)
	{
		super();
		this.wscode = wscode;
		this.title = title;
		this.pro = pro;
		this.con = con;
		this.startdate = startdate;
	}
	public int getWscode()
	{
		return wscode;
	}
	public void setWscode(int wscode)
	{
		this.wscode = wscode;
	}
	public String getTitle()
	{
		return title;
	}
	public void setTitle(String title)
	{
		this.title = title;
	}
	public int getPro()
	{
		return pro;
	}
	public void setPro(int pro)
	{
		this.pro = pro;
	}
	public int getCon()
	{
		return con;
	}
	public void setCon(int con)
	{
		this.con = con;
	}
	public Date getStartdate()
	{
		return startdate;
	}
	public void setStartdate(Date startdate)
	{
		this.startdate = startdate;
	}
	@Override
	public String toString()
	{
		return "Weeksubject [wscode=" + wscode + ", title=" + title + ", pro=" + pro + ", con=" + con + "]";
	}
	
	
}
