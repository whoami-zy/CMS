package com.whoami.struts;

import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.InputStream;
import java.io.OutputStream;
import java.util.Date;
import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.apache.struts2.ServletActionContext;
import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;

import com.opensymphony.xwork2.ActionSupport;
import com.opensymphony.xwork2.ModelDriven;
import com.whoami.SpringHelper.itemsSpringDoHelp;
import com.whoami.po.PageBean;
import com.whoami.po.items;
import com.whoami.po.itemsclass;

public class itemsAction extends ActionSupport implements ModelDriven<items>{

	private static final long serialVersionUID = 1L;
	items ims =new items();
	ApplicationContext context = new ClassPathXmlApplicationContext(new String[] { "itemsDo.xml" });
	itemsSpringDoHelp imsSpringDo =(itemsSpringDoHelp) context.getBean("itemsDoHelp");
	private int page;
	private List<itemsclass> list1;
	private File file;
	private String fileFileName;
	private String fileContentType;
	private String dataUrl;
	
	public File getFile() {
		return file;
	}

	public void setFile(File file) {
		this.file = file;
	}

	public String getFileFileName() {
		return fileFileName;
	}

	public void setFileFileName(String fileFileName) {
		this.fileFileName = fileFileName;
	}

	public String getFileContentType() {
		return fileContentType;
	}

	public void setFileContentType(String fileContentType) {
		this.fileContentType = fileContentType;
	}

	public String getDataUrl() {
		return dataUrl;
	}

	public void setDataUrl(String dataUrl) {
		this.dataUrl = dataUrl;
	}

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

	public String addItems() throws Exception{
	
	String imgpath = "images/";
	 InputStream is = new FileInputStream(file);
	 String path = "C:\\Users\\ZYong\\workspace\\SSH\\target\\m2e-wtp\\web-resources\\";
	 System.out.println(path+"--------PATH------------------");
	 dataUrl=imgpath+this.getFileFileName();
	 System.out.println(dataUrl+"---------URL-----------------------");
	 File destFile = new File(path+imgpath, this.getFileFileName());
	 OutputStream os = new FileOutputStream(destFile);
	 byte[] buffer = new byte[1024];
	 int length = 0;
	 while ((length = is.read(buffer)) > 0) {
		            os.write(buffer, 0, length);
		   }
	 is.close();
    os.close();
    ims.setImage(this.getFileFileName());
    Date d = new Date();
    ims.setItemsTime(d);
    imsSpringDo.setIms(ims);
	if(imsSpringDo.addItems()){
		return "addSuccess";
	}
	return "addFalse";	
}	
	public String deleteItems(){
		HttpServletRequest request = ServletActionContext.getRequest();
		int id=Integer.parseInt(request.getParameter("key"));
		if(imsSpringDo.deleteItems(id)){
			return "deleteSuccess";
		}
		 return "deleteFalse";
		
	}
	public String updateItems(){
		imsSpringDo.setIms(ims);
		if(imsSpringDo.updataItems()){
			return "updateSuccess";
		}
		return "updateFalse";
	}
	public String viewItemsByNameOrTime(){
		String hql="from items ims where ims.itemsName like '%"+ims.getItemsName()+"%' or ims.itemsTime like '%"+ims.getItemsName()+"%'";
		PageBean pageBean =imsSpringDo.getPageBean(hql, 5, page);
		HttpServletRequest request =ServletActionContext.getRequest();
		request.setAttribute("listByAll", pageBean);
		return "itemsByNameOrTimeSuccess";
	}
	public String viewItemsByClass(){
		String hql="from items ims where ims.itemsClassKey like '%"+ims.getItemsClassKey()+"%'";
		PageBean pageBean =imsSpringDo.getPageBean(hql, 5, page);
		HttpServletRequest request =ServletActionContext.getRequest();
		request.setAttribute("listByAll", pageBean);
		return "itemsByClassSuccess";
	}
	public String viewItemsByAll(){
		String hql="from items";
		PageBean pageBean =imsSpringDo.getPageBean(hql, 5, page);
		HttpServletRequest request =ServletActionContext.getRequest();
		request.setAttribute("listByAll", pageBean);
		return "itemsClassByAllSuccess";
	}
	public items getModel() {
		return ims;
	}

}
