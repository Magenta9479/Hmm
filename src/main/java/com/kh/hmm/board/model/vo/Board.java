<<<<<<< HEAD
package com.kh.hmm.board.model.vo;

import java.sql.Date;

public class Board
{
	private int bcode;
	private String title;
	private String content;
	private int distinguish;
	private String writerid;
	private String writernick;
	private Date postdate;
	private String isdelete;
	private String hasfile;
	
	public Board() {}

	public Board(int bcode, String title, String content, int distinguish, String writerid, String writernick,
			Date postdate, String isdelete, String hasfile)
	{
		super();
		this.bcode = bcode;
		this.title = title;
		this.content = content;
		this.distinguish = distinguish;
		this.writerid = writerid;
		this.writernick = writernick;
		this.postdate = postdate;
		this.isdelete = isdelete;
		this.hasfile = hasfile;
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
	
}
=======
package com.kh.hmm.board.model.vo;

import java.sql.Date;

public class Board
{
	private int bcode;
	private String title;
	private String content;
	private int distinguish;
	private String writerid;
	private String writernick;
	private Date postdate;
	private String isdelete;
	private String hasfile;
	
	public Board() {}

	public Board(int bcode, String title, String content, int distinguish, String writerid, String writernick,
			Date postdate, String isdelete, String hasfile)
	{
		super();
		this.bcode = bcode;
		this.title = title;
		this.content = content;
		this.distinguish = distinguish;
		this.writerid = writerid;
		this.writernick = writernick;
		this.postdate = postdate;
		this.isdelete = isdelete;
		this.hasfile = hasfile;
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
	
}
>>>>>>> branch 'master' of https://github.com/Magenta9479/Hmm.git
