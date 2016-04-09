package com.whomai.dao;

import java.util.List;

import com.whoami.po.user;

public interface UserDao {
	public boolean resgion(user user);
	public boolean login(String name, String password);
	public List<user> selectById(int id);
	public List<user> selectByAll(int page);
	public int getmaxpagecount();
	public boolean delectUser(int id);
	public boolean updateuser(user u);
	public int selectByName(String name);
}
