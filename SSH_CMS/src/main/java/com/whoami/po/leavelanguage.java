package com.whoami.po;

import java.util.Date;

public class leavelanguage {
	private int leaveLanguageID;
	private int u_id;
	private String leaveLanguageContext;
	private Date LeaveTime;
	public int getLeaveLanguageID() {
		return leaveLanguageID;
	}
	public void setLeaveLanguageID(int leaveLanguageID) {
		this.leaveLanguageID = leaveLanguageID;
	}
	public int getU_id() {
		return u_id;
	}
	public void setU_id(int u_id) {
		this.u_id = u_id;
	}
	public String getLeaveLanguageContext() {
		return leaveLanguageContext;
	}
	public void setLeaveLanguageContext(String leaveLanguageContext) {
		this.leaveLanguageContext = leaveLanguageContext;
	}
	public Date getLeaveTime() {
		return LeaveTime;
	}
	public void setLeaveTime(Date leaveTime) {
		LeaveTime = leaveTime;
	}
	
}
