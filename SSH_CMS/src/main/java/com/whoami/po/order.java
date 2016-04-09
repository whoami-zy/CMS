package com.whoami.po;

public class order {
	private int  orderID;
	private int  userID;
	private String  submitTime;
	private String  outItemsTime;
	private String  totlePrice;
	private String  leaveLanguage;
	private String  userAddress;
	private int  isPayOff;
	private int  isOutItems;
	public int getOrderID() {
		return orderID;
	}
	public void setOrderID(int orderID) {
		this.orderID = orderID;
	}
	public int getUserID() {
		return userID;
	}
	public void setUserID(int userID) {
		this.userID = userID;
	}
	public String getSubmitTime() {
		return submitTime;
	}
	public void setSubmitTime(String submitTime) {
		this.submitTime = submitTime;
	}
	public String getOutItemsTime() {
		return outItemsTime;
	}
	public void setOutItemsTime(String outItemsTime) {
		this.outItemsTime = outItemsTime;
	}
	public String getTotlePrice() {
		return totlePrice;
	}
	public void setTotlePrice(String totlePrice) {
		this.totlePrice = totlePrice;
	}
	public String getLeaveLanguage() {
		return leaveLanguage;
	}
	public void setLeaveLanguage(String leaveLanguage) {
		this.leaveLanguage = leaveLanguage;
	}
	public String getUserAddress() {
		return userAddress;
	}
	public void setUserAddress(String userAddress) {
		this.userAddress = userAddress;
	}
	public int getIsPayOff() {
		return isPayOff;
	}
	public void setIsPayOff(int isPayOff) {
		this.isPayOff = isPayOff;
	}
	public int getIsOutItems() {
		return isOutItems;
	}
	public void setIsOutItems(int isOutItems) {
		this.isOutItems = isOutItems;
	}
	
}
