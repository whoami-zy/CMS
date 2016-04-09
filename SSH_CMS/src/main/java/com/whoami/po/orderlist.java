package com.whoami.po;

public class orderlist {
	private int  orderListID;
	private int  orderID;
	private int  itemsID;
	private int  itemsNum;
	public int getOrderListID() {
		return orderListID;
	}
	public void setOrderListID(int orderListID) {
		this.orderListID = orderListID;
	}
	public int getOrderID() {
		return orderID;
	}
	public void setOrderID(int orderID) {
		this.orderID = orderID;
	}
	public int getItemsID() {
		return itemsID;
	}
	public void setItemsID(int itemsID) {
		this.itemsID = itemsID;
	}
	public int getItemsNum() {
		return itemsNum;
	}
	public void setItemsNum(int itemsNum) {
		this.itemsNum = itemsNum;
	}
}
