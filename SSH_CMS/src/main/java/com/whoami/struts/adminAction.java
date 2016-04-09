package com.whoami.struts;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.apache.struts2.ServletActionContext;
import org.apache.struts2.interceptor.validation.SkipValidation;
import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;

import com.opensymphony.xwork2.ModelDriven;
import com.whoami.SpringHelper.adminSpringDoHelp;
import com.whoami.po.PageBean;
import com.whoami.po.admin;

public class adminAction extends supperAction implements ModelDriven<admin> {
	 /**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	private int page;
	public int getPage() {
		return page;
	}
	public void setPage(int page) {
		this.page = page;
	}
	private List<admin> list1;
	
	public List<admin> getList() {
		return list1;
	}
	public void setList(List<admin> list) {
		this.list1= list;
	}
	admin admin = new admin();
	ApplicationContext context = new ClassPathXmlApplicationContext(new String[] { "adminDo.xml" });
	adminSpringDoHelp springAdminDo = (adminSpringDoHelp) context.getBean("adminDoHelp");

	public String adminLogin() {
		springAdminDo.setAdmin(admin);
		boolean result = springAdminDo.loginAdmin();
		HttpServletRequest request=ServletActionContext.getRequest();
		HttpSession session =request.getSession(true);
		session.setAttribute("SessionName", admin.getAdminName());
		if (result) {
			return "adminLoginSuccess";
		} else {
			return "adminLoginFalse";

		}

	}
	@SkipValidation
	public String addAdmin(){
		springAdminDo.setAdmin(admin);
		if(springAdminDo.addAdmin()){
			return "adminAddSuccess";
		}else{
			return "adminAddFalse";
		}
	}
	@SkipValidation
	public String adminViewById(){
		springAdminDo.setAdmin(admin);
		List<admin> result=springAdminDo.viewAdminById();
	
		 if(result.size()>0){
			 HttpServletRequest request = ServletActionContext.getRequest();
			 request.setAttribute("list", result);
			 return "adminByIdSuccess";
		 }else{
			 return "adminByIdFalse";
		 }
	}
	public String adminViewByALL(){
		PageBean pageBean = springAdminDo.getPageBean(5, page);
        HttpServletRequest request = ServletActionContext.getRequest();
        request.setAttribute("pageBean", pageBean);
        return "viewByAllSuccess";
	}
	@SkipValidation
	public String Delete(){
		HttpServletRequest request=ServletActionContext.getRequest();
		int  id=Integer.parseInt(request.getParameter("id"));
		if(springAdminDo.deleteAdmin(id)){
			return "deleteAdminSuccess";
		}else{
		return "deleteAdminFalse";
		}
	}
	@SkipValidation
	public String Update(){
		springAdminDo.setAdmin(admin);
		if(springAdminDo.updateAdmin()){
			return "updateAdminSuccess";
		}
		return "updateAdminFalse";
		
	}
	/**
	 * 判断用户提交表单
	 * 用户名不能为空
	 */
	@Override
	public void validate() {
		if("".equals(admin.getAdminName().trim())){
			this.addFieldError("usernameError", "用户名不能为空");
		}
		if(admin.getAdminPassword().length()<4){
			this.addFieldError("passwordError", "密码长度不少于6位");
		}
	}
	public admin getModel() {
		return admin;
	}

}
