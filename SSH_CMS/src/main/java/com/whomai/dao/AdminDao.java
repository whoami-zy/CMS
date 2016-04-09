package com.whomai.dao;

import java.util.List;

import com.whoami.po.admin;

public interface AdminDao {
	public boolean adminLogin(String name, String passwd);
	public boolean adminAdd(admin admin);
	public List<admin> viewAdminByID(int id);
	public List<admin> viewAllAdmin(int page);
	public List<admin> queryByPage(int offset, int pageSize);
	public int getMaxAdminCount();

	public boolean delectAdmin(int id);

	public boolean updateAdmin(admin admin);
}
