package com.kh.hmm.board.model.vo;

public class Comments
{
	private int ccode;
	private String content;
	private String writernick;
	private String writerid;
	private int lev;
	private int upper;
	private int bcode;
	
	public Comments() {}

	public Comments(int ccode, String content, String writernick, String writerid, int lev, int upper, int bcode)
	{
		super();
		this.ccode = ccode;
		this.content = content;
		this.writernick = writernick;
		this.writerid = writerid;
		this.lev = lev;
		this.upper = upper;
		this.bcode = bcode;
	}

	public int getCcode()
	{
		return ccode;
	}

	public void setCcode(int ccode)
	{
		this.ccode = ccode;
	}

	public String getContent()
	{
		return content;
	}

	public void setContent(String content)
	{
		this.content = content;
	}

	public String getWriternick()
	{
		return writernick;
	}

	public void setWriternick(String writernick)
	{
		this.writernick = writernick;
	}

	public String getWriterid()
	{
		return writerid;
	}

	public void setWriterid(String writerid)
	{
		this.writerid = writerid;
	}

	public int getLev()
	{
		return lev;
	}

	public void setLev(int lev)
	{
		this.lev = lev;
	}

	public int getUpper()
	{
		return upper;
	}

	public void setUpper(int upper)
	{
		this.upper = upper;
	}

	public int getBcode()
	{
		return bcode;
	}

	public void setBcode(int bcode)
	{
		this.bcode = bcode;
	}

	
	
	
}
