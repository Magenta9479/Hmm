package com.kh.hmm.board.model.vo;

public class CommentsPoint
{
	private int ccode;
	private int good;
	private int bad;
	private int cal;
	
	public CommentsPoint() {}
	
	public CommentsPoint(int ccode, int good, int bad, int cal)
	{
		super();
		this.ccode = ccode;
		this.good = good;
		this.bad = bad;
		this.cal = cal;
	}
	public int getCcode()
	{
		return ccode;
	}
	public void setCcode(int ccode)
	{
		this.ccode = ccode;
	}
	public int getGood()
	{
		return good;
	}
	public void setGood(int good)
	{
		this.good = good;
	}
	public int getBad()
	{
		return bad;
	}
	public void setBad(int bad)
	{
		this.bad = bad;
	}
	public int getCal()
	{
		return cal;
	}
	public void setCal(int cal)
	{
		this.cal = cal;
	}

	@Override
	public String toString()
	{
		return "CommentsPoint [ccode=" + ccode + ", good=" + good + ", bad=" + bad + ", cal=" + cal + "]";
	}
	
	
}
