package com.kh.hmm.item.model.vo;

import java.sql.Date;

public class Item
{
	private int itemcode;
	private String name;
	private int usagedate;
	private String filelink;
	private int price;
	private Date purchasedate;
	
	public Item() {}

	public Item(int itemcode, String name, int usagedate, String filelink, int price, Date purchasedate)
	{
		super();
		this.itemcode = itemcode;
		this.name = name;
		this.usagedate = usagedate;
		this.filelink = filelink;
		this.price = price;
		this.purchasedate = purchasedate;
	}

	public int getItemcode()
	{
		return itemcode;
	}

	public void setItemcode(int itemcode)
	{
		this.itemcode = itemcode;
	}

	public String getName()
	{
		return name;
	}

	public void setName(String name)
	{
		this.name = name;
	}

	public int getUsagedate()
	{
		return usagedate;
	}

	public void setUsagedate(int usagedate)
	{
		this.usagedate = usagedate;
	}

	public String getFilelink()
	{
		return filelink;
	}

	public void setFilelink(String filelink)
	{
		this.filelink = filelink;
	}

	public int getPrice()
	{
		return price;
	}

	public void setPrice(int price)
	{
		this.price = price;
	}

	public Date getPurchasedate()
	{
		return purchasedate;
	}

	public void setPurchasedate(Date purchasedate)
	{
		this.purchasedate = purchasedate;
	}

	
	
}
