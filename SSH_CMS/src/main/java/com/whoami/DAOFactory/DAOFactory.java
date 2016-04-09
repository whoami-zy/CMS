package com.whoami.DAOFactory;

import com.whoami.daodo.UserDaoDO;
import com.whoami.daodo.itemsClassDaoDo;
import com.whomai.dao.UserDao;
import com.whomai.dao.itemsClassDao;

public class DAOFactory {
	public static UserDao getPersonDAOInstance()
	{
		return new UserDaoDO() ;
	}
	public static itemsClassDao getItemsClassDAOInstance()
	{
		return new itemsClassDaoDo() ;
	}
}
