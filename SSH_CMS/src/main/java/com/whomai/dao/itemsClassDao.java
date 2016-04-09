package com.whomai.dao;

import java.util.List;

import com.whoami.po.itemsclass;

public interface itemsClassDao {
	public boolean addItemsClass(itemsclass itemsType);
	public List<itemsclass> viewAllClass();
	public int itemsAllCount();
	public List<itemsclass> queryByPage(int offset, int pageSize);
	public List<itemsclass> viewByName(String name);
	public boolean deleteItemsClass(int id);
	
}
 