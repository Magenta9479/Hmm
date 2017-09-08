package com.kh.hmm.board.model.vo;

import java.sql.Date;

public class Board
{
	private int bcode;
	private String title;
	private String content;
	private int distinguish;
	private String name;
	private String writerid;
	private String writernick;
	private Date postdate;
	private String isdelete;
	private String hasfile;
	private int viewnum;
	private int best;
	private int good;
	private int bad;
	private int worst;
	private int commentnum;
	
	public Board() {}

	public Board(int bcode, String title, String content, int distinguish, String name, String writerid,
			String writernick, Date postdate, String isdelete, String hasfile, int viewnum, int best, int good, int bad,
			int worst, int commentnum)
	{
		super();
		this.bcode = bcode;
		this.title = title;
		this.content = content;
		this.distinguish = distinguish;
		this.name = name;
		this.writerid = writerid;
		this.writernick = writernick;
		this.postdate = postdate;
		this.isdelete = isdelete;
		this.hasfile = hasfile;
		this.viewnum = viewnum;
		this.best = best;
		this.good = good;
		this.bad = bad;
		this.worst = worst;
		this.commentnum = commentnum;
	}

	public int getBcode()
	{
		return bcode;
	}

	public void setBcode(int bcode)
	{
		this.bcode = bcode;
	}

	public String getTitle()
	{
		return title;
	}

	public void setTitle(String title)
	{
		this.title = title;
	}

	public String getContent()
	{
		return content;
	}

	public void setContent(String content)
	{
		this.content = content;
	}

	public int getDistinguish()
	{
		return distinguish;
	}

	public void setDistinguish(int distinguish)
	{
		this.distinguish = distinguish;
	}

	public String getName()
	{
		return name;
	}

	public void setName(String name)
	{
		this.name = name;
	}

	public String getWriterid()
	{
		return writerid;
	}

	public void setWriterid(String writerid)
	{
		this.writerid = writerid;
	}

	public String getWriternick()
	{
		return writernick;
	}

	public void setWriternick(String writernick)
	{
		this.writernick = writernick;
	}

	public Date getPostdate()
	{
		return postdate;
	}

	public void setPostdate(Date postdate)
	{
		this.postdate = postdate;
	}

	public String getIsdelete()
	{
		return isdelete;
	}

	public void setIsdelete(String isdelete)
	{
		this.isdelete = isdelete;
	}

	public String getHasfile()
	{
		return hasfile;
	}

	public void setHasfile(String hasfile)
	{
		this.hasfile = hasfile;
	}

	public int getViewnum()
	{
		return viewnum;
	}

	public void setViewnum(int viewnum)
	{
		this.viewnum = viewnum;
	}

	public int getBest()
	{
		return best;
	}

	public void setBest(int best)
	{
		this.best = best;
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

	public int getWorst()
	{
		return worst;
	}

	public void setWorst(int worst)
	{
		this.worst = worst;
	}

	public int getCommentnum()
	{
		return commentnum;
	}

	public void setCommentnum(int commentnum)
	{
		this.commentnum = commentnum;
	}

	
}
