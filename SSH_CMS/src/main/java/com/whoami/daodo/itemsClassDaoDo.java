package com.whoami.daodo;

import java.util.List;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.Transaction;

import com.whoami.po.itemsclass;
import com.whoami.sessionHelper.SessionConnection;
import com.whomai.dao.itemsClassDao;

public class itemsClassDaoDo implements itemsClassDao {

	public boolean addItemsClass(itemsclass itemsType) {
		Session session =new SessionConnection().getSession();
		try {
			Transaction tx=session.beginTransaction();
			session.save(itemsType);
			tx.commit();
			session.close();
			return true;
		} catch (Exception e) {
			session.close();
			return false;
			}
		
	}

	public List<itemsclass> viewAllClass() {
		Session session =new SessionConnection().getSession();
		String hql="from itemsclass";
		Query query=session.createQuery(hql);
		@SuppressWarnings("unchecked")
		List<itemsclass> list	=	query.list();
		return list;
	}

	public int itemsAllCount() {
		Session session =new SessionConnection().getSession();
		String hql="from itemsclass";
		Query query=session.createQuery(hql);
		@SuppressWarnings("unchecked")
		List<itemsclass> list	=	query.list();
		return list.size();
	}

	public List<itemsclass> queryByPage(int offset, int pageSize) {
		Session session = new SessionConnection().getSession();
        Transaction tx = null;
        String hql = "from itemsclass";
        try
        {
            tx = session.beginTransaction();
            
            Query query = session.createQuery(hql).setFirstResult(offset).setMaxResults(pageSize);
            @SuppressWarnings("unchecked")
			List<itemsclass> list = query.list();
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

	public List<itemsclass> viewByName(String name) {
		Session session =new SessionConnection().getSession();
		String hql="from itemsclass itemstype where itemstype.itemsClassName like ?";
		Query query=session.createQuery(hql);
		query.setString(0, "%"+name+"%");
		@SuppressWarnings("unchecked")
		List<itemsclass> list =query.list();
		
		return list;
	}

	public boolean deleteItemsClass(int id) {
		Session session =new SessionConnection().getSession();
		Transaction tx = session.beginTransaction();
		String hql = "delete itemsclass itemstype where itemstype.itemsClassID=?";
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

}
