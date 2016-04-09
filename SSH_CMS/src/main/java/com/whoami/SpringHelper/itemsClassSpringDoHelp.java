package com.whoami.SpringHelper;

import java.util.List;

import com.whoami.daodo.itemsClassDaoDo;
import com.whoami.po.PageBean;
import com.whoami.po.itemsclass;
import com.whoami.service.pageService;

public class itemsClassSpringDoHelp implements pageService {
	itemsclass itemsType;
	itemsClassDaoDo itemsTypeDaoDo;
	public itemsclass getItemsType() {
		return itemsType;
	}
	public void setItemsType(itemsclass itemsType) {
		this.itemsType = itemsType;
	}
	public itemsClassDaoDo getItemsTypeDaoDo() {
		return itemsTypeDaoDo;
	}
	public void setItemsTypeDaoDo(itemsClassDaoDo itemsTypeDaoDo) {
		this.itemsTypeDaoDo = itemsTypeDaoDo;
	}
	public boolean addItemsClass(){
		
		return	itemsTypeDaoDo.addItemsClass(itemsType);
	}
	public List<itemsclass> viewByName(){
		return itemsTypeDaoDo.viewByName(itemsType.getItemsClassName());
	}
	public boolean deleteItemsClass(int key){
		return itemsTypeDaoDo.deleteItemsClass(key);
		
	}
	public PageBean getPageBean(int pageSize, int page) {
		PageBean pageBean =new PageBean();
		int allRows =itemsTypeDaoDo.itemsAllCount();
		int totalPage =pageBean.getTotalPages(pageSize, allRows);
		int currentPage=pageBean.getCurPage(page);
		int offset=pageBean.getCurrentPageOffset(pageSize, currentPage);
		List<itemsclass> list =itemsTypeDaoDo.queryByPage(offset, pageSize);
		pageBean.setList(list);
		pageBean.setAllRows(allRows);
		pageBean.setCurrentPage(currentPage);
		pageBean.setTotalPage(totalPage);
		return pageBean;
	}
	
}
