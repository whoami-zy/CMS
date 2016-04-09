package com.whomai.dao;

import java.util.List;

import com.whoami.po.leavelanguage;

/**
 * 
 * @author ZYong
 *实现留言管理的接口
 * @see lLanguage 留言类实体
 */
public interface leaveLanguageDao {
	//添加留言
	public boolean addLeaveLanguage(leavelanguage lLanguage);
	//删除
	public boolean deleteLanguage(int id);
	//根据不同的hql语句查询，即可查询不同的数据
	public List<leavelanguage> viewByLanguage(String hql,int offset, int pageSize );
	//查询返回的数据的长度，以便于分页显示
	public int leaveAllCoubt(String hql);
}
