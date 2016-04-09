package com.whoami.SpringHelper;

import java.util.List;

import com.whoami.daodo.itemsDaoDo;
import com.whoami.po.PageBean;
import com.whoami.po.items;

public class itemsSpringDoHelp {
	items ims;
	itemsDaoDo imsDo;

	public items getIms() {
		return ims;
	}

	public void setIms(items ims) {
		this.ims = ims;
	}

	public itemsDaoDo getImsDo() {
		return imsDo;
	}

	public void setImsDo(itemsDaoDo imsDo) {
		this.imsDo = imsDo;
	}

	public boolean addItems() {
		return imsDo.addItems(ims);
	}

	public boolean deleteItems(int key) {
		return imsDo.deleteItems(key);
	}

	public boolean updataItems() {
		return imsDo.updateItems(ims);
	}

	public PageBean getPageBean(String hql, int pageSize, int page) {
		PageBean pageBean = new PageBean();
		int allRows = imsDo.itemsAllCount(hql);
		int totalPage = pageBean.getTotalPages(pageSize, allRows);
		int currentPage = pageBean.getCurPage(page);
		int offset = pageBean.getCurrentPageOffset(pageSize, currentPage);
		List<items> list = imsDo.viewItemsByNameOrTime(hql, offset, pageSize);
		pageBean.setList(list);
		pageBean.setAllRows(allRows);
		pageBean.setCurrentPage(currentPage);
		pageBean.setTotalPage(totalPage);
		return pageBean;

	}
}
