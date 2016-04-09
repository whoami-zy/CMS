package com.whoami.struts;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.apache.struts2.ServletActionContext;
import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;

import com.opensymphony.xwork2.ModelDriven;
import com.whoami.SpringHelper.itemsClassSpringDoHelp;
import com.whoami.po.PageBean;
import com.whoami.po.itemsclass;

public class itemsclassAction implements ModelDriven<itemsclass> {
	private int page;
	private List<itemsclass> list1;

	public int getPage() {
		return page;
	}

	public void setPage(int page) {
		this.page = page;
	}

	public List<itemsclass> getList1() {
		return list1;
	}

	public void setList1(List<itemsclass> list1) {
		this.list1 = list1;
	}

	itemsclass itemstype = new itemsclass();
	ApplicationContext context = new ClassPathXmlApplicationContext(new String[] { "itemsClassDo.xml" });
	itemsClassSpringDoHelp springItemsTypeDo =(itemsClassSpringDoHelp) context.getBean("itemsClassDoHelp");
	
	public String addItemsClass(){
		springItemsTypeDo.setItemsType(itemstype);
		if(springItemsTypeDo.addItemsClass())
		{
			return "addSuccess";
		}
		return "addFalse";
	
	}
	public String deleteItemsClass(){
		HttpServletRequest request =ServletActionContext.getRequest();
		int key= Integer.parseInt(request.getParameter("id"));
		if(springItemsTypeDo.deleteItemsClass(key)){
			return "deleteSuccess";
		}
		return "deleteFalse";
	}
	
	public String viewItemsClassByName(){
		springItemsTypeDo.setItemsType(itemstype);
		List<itemsclass> list = springItemsTypeDo.viewByName();
		if(list.size()>0){
			HttpServletRequest request = ServletActionContext.getRequest();
			request.setAttribute("listByName", list);
			return "itemsClassByNameSuccess";
		}
		return "itemsClassByNameFalse";
	}
	public String itemsClassByAll(){
		PageBean pageBean =springItemsTypeDo.getPageBean(5, page);
		HttpServletRequest request =ServletActionContext.getRequest();
		request.setAttribute("listByAll", pageBean);
		return "itemsClassByAllSuccess";
	}
	public itemsclass getModel() {
		// TODO Auto-generated method stub
		return itemstype;
	}

}
