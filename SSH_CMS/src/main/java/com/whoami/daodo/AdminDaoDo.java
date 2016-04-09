package com.whoami.daodo;

import java.util.Iterator;
import java.util.List;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.Transaction;

import com.whoami.po.admin;
import com.whoami.sessionHelper.SessionConnection;
import com.whomai.dao.AdminDao;

public class AdminDaoDo implements AdminDao {

	public boolean adminLogin(String name, String passwd) {
		admin admin=null;
		Session session = new SessionConnection().getSession();
		String hql = "from admin admin where admin.adminName=? and admin.adminPassword=?";
		Query query = session.createQuery(hql);
		query.setString(0, name);
		query.setString(1, passwd);
		@SuppressWarnings("unchecked")
		List<admin> list = (List<admin>) query.list();
		Iterator<admin> it = list.iterator();
		if (it.hasNext())
			admin = it.next();
		if (admin != null) {
			return true;
		} else {
			return false;
		}
	}

	public boolean adminAdd(admin admin) {
		Session session = new SessionConnection().getSession();
		try{
			Transaction tx = session.beginTransaction();
			session.save(admin);
			tx.commit();
			session.close();
			return true;
		}catch(Exception e){
			session.close();
			return false;
		}
		
		
	}

	public List<admin> viewAdminByID(int id) {
		Session session = new SessionConnection().getSession();
		String hql = "from admin admin where admin.adminID = ?";
		Query query = session.createQuery(hql);
		query.setInteger(0, id);
		@SuppressWarnings("unchecked")
		List<admin> list = query.list();
		return list;
	}

	public List<admin> viewAllAdmin(int page) {
		Session session = new SessionConnection().getSession();
		// NextAndUp page =new NextAndUp();
		String hql = "from admin";
		Query query = (Query) session.createQuery(hql);
		query.setFirstResult((page - 1) * 5);
		query.setMaxResults(5);
		@SuppressWarnings("unchecked")
		List<admin> list = (List<admin>) query.list();
		return list;

	}

	public int getMaxAdminCount() {
		Session session = new SessionConnection().getSession();
		String hql = "from admin";
		Query query = (Query) session.createQuery(hql);
		@SuppressWarnings("unchecked")
		List<admin> list = (List<admin>) query.list();
		return list.size();
	}

	public boolean delectAdmin(int id) {
		Session session = new SessionConnection().getSession();
		Transaction tx = session.beginTransaction();
		String hql = "delete admin admin where admin.adminID=?";
		Query query = session.createQuery(hql);
		query.setInteger(0, id);
		int i = query.executeUpdate();
		tx.commit();
		if (i > 0) {
			return true;
		} else {
			return false;
		}
	}

	public boolean updateAdmin(admin admin) {
		Session session = new SessionConnection().getSession();
		Transaction tx = session.beginTransaction();
		session.saveOrUpdate(admin);
		tx.commit();
		if (admin != null) {
			return true;
		} else {
			return false;
		}
	}

	public List<admin> queryByPage(int offset, int pageSize) {
		Session session = new SessionConnection().getSession();
        Transaction tx = null;
        String hql = "from admin";
        try
        {
            tx = session.beginTransaction();
            
            Query query = session.createQuery(hql).setFirstResult(offset).setMaxResults(pageSize);
            @SuppressWarnings("unchecked")
			List<admin> list = (List<admin>) query.list();
			 return list;
            
        }
        catch (Exception e)
        {
            if(tx != null)
            {
                tx.rollback();
            }
            e.printStackTrace();
            return null;
        }
	}	

}
