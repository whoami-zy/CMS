package com.whoami.daodo;

import java.util.List;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.Transaction;

import com.whoami.po.items;
import com.whoami.sessionHelper.SessionConnection;
import com.whomai.dao.itemsDao;

public class itemsDaoDo implements itemsDao {

	public boolean addItems(items items) {
		Session session =new SessionConnection().getSession();
		try {
			Transaction tx =session.beginTransaction();
			session.save(items);
			tx.commit();
			session.close();
			return true;
		} catch (Exception e) {
			session.close();
			return false;
		}
		
	}

	public boolean deleteItems(int id) {
		Session session=new SessionConnection().getSession();
		Transaction tx = session.beginTransaction();
		String hql = "delete items ims where ims.itemsID=?";
		Query query =session.createQuery(hql);
		query.setInteger(0, id);
		int i = query.executeUpdate();
		tx.commit();
		if (i > 0) {
			return true;
		} else {
			return false;
		}
	}

	public boolean updateItems(items items) {
		Session session =new SessionConnection().getSession();
		try {
			Transaction tx=session.beginTransaction();
			session.saveOrUpdate(items);
			tx.commit();
			session.close();
			return true;
		} catch (Exception e) {
			return false;
		}
		
		
	}

	public List<items> viewItemsByNameOrTime(String hql, int offset, int pageSize) {
		Session session = new SessionConnection().getSession();
        Transaction tx = null;
        try
        {
            tx = session.beginTransaction();
            Query query = session.createQuery(hql).setFirstResult(offset).setMaxResults(pageSize);
           tx.commit(); 
            @SuppressWarnings("unchecked")
			List<items> list = query.list();
			session.close();
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

	public int itemsAllCount(String hql) {
		Session session =new SessionConnection().getSession();
		Query query =session.createQuery(hql);
		@SuppressWarnings("unchecked")
		List<items> list =query.list();
		return list.size();
	}
 
}
