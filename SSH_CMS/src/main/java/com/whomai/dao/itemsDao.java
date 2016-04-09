package com.whomai.dao;

import java.util.List;

import com.whoami.po.items;

public interface itemsDao {
		public boolean addItems(items items);
		public boolean deleteItems(int id);
		public boolean updateItems(items items);
		public List<items> viewItemsByNameOrTime(String hql,int offset, int pageSize);
//		public List<items> viewItemsByItemsClass(int offset, int pageSize);
//		public List<items> viewItemsByAll(int offset, int pageSize);
		public int itemsAllCount(String hql); 
}
