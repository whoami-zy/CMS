package com.whoami.daodo;

import java.util.List;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.Transaction;

import com.whoami.po.leavelanguage;
import com.whoami.sessionHelper.SessionConnection;
import com.whomai.dao.leaveLanguageDao;

/**
 * 留言需要的具体实现方法
 * 
 * @author ZYong
 *
 */
public class LeaveLanguageDaoDo implements leaveLanguageDao {
	/**
	 * @author ZYong 添加留言
	 */
	public boolean addLeaveLanguage(leavelanguage lLanguage) {
		Session session = new SessionConnection().getSession();
		try {
			Transaction tx = session.beginTransaction();
			session.save(lLanguage);
			tx.commit();
			session.close();
			return true;
		} catch (Exception e) {
			System.out.println("事务提交错误");
			session.close();
			return false;
		}
	}

	/**
	 * 查找留言
	 */
	public List<leavelanguage> viewByLanguage(String hql, int offset, int pageSize) {
		Session session = new SessionConnection().getSession();
		Transaction tx = null;
		try {
			tx = session.beginTransaction();
			Query query = session.createQuery(hql).setFirstResult(offset).setMaxResults(pageSize);
			tx.commit();
			@SuppressWarnings("unchecked")
			List<leavelanguage> list = query.list();
			session.close();
			return list;
		} catch (Exception e) {
			if (tx != null) {
				tx.rollback();
			}
			return null;
		}
	}

	/**
	 * 返回查询条数
	 */
	public int leaveAllCoubt(String hql) {
		Session session =new SessionConnection().getSession();
		Query query = session.createQuery(hql);
		@SuppressWarnings("unchecked")
		List<leavelanguage> list = query.list();
		return list.size();
	}

	/**
	 * 删除留言
	 */
	public boolean deleteLanguage(int id) {
		Session session = new SessionConnection().getSession();
		Transaction tx = null;
		try {
			tx  =session.beginTransaction();
			String hql = "delete leavelanguage lge where lge.leaveLanguageID=? ";
			Query query = session.createQuery(hql);
			query.setInteger(0, id);
			
			int i = query.executeUpdate();
			tx.commit();
			if(i>0){
				return true;
			}else{
				return false;
			}
		} catch (Exception e) {
			System.out.println("事务创建连接失败");
			return false;
		}
		
	}

}
