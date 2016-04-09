package com.whoami.SpringHelper;

import java.util.List;

import com.whoami.daodo.AdminDaoDo;
import com.whoami.po.PageBean;
import com.whoami.po.admin;
import com.whoami.service.pageService;

public class adminSpringDoHelp implements pageService{
	private admin admin;
	private AdminDaoDo adminDo;

	public admin getAdmin() {
		return admin;
	}

	public void setAdmin(admin admin) {
		this.admin = admin;
	}

	public AdminDaoDo getAdminDo() {
		return adminDo;
	}

	public void setAdminDo(AdminDaoDo adminDo) {
		this.adminDo = adminDo;
	}

	public boolean addAdmin() {

		return adminDo.adminAdd(admin);

	}

	public boolean loginAdmin() {
		return adminDo.adminLogin(admin.getAdminName(), admin.getAdminPassword());
	}

	public boolean updateAdmin() {
		return adminDo.updateAdmin(admin);

	}

	public boolean deleteAdmin(int id) {
		return adminDo.delectAdmin(id);

	}
	public List<admin> viewAdminById(){
		return adminDo.viewAdminByID(admin.getAdminID());
	}

	public PageBean getPageBean(int pageSize, int page) {
		
		PageBean pageBean = new PageBean();
      
        int allRows = adminDo.getMaxAdminCount();
        
        int totalPage = pageBean.getTotalPages(pageSize, allRows);
        
        int currentPage = pageBean.getCurPage(page);
        
        int offset = pageBean.getCurrentPageOffset(pageSize, currentPage);

        List<admin> list = adminDo.queryByPage(offset, pageSize);
        pageBean.setList(list);
        pageBean.setAllRows(allRows);
        pageBean.setCurrentPage(currentPage);
        pageBean.setTotalPage(totalPage);
        
        return pageBean;
    
	}

}
