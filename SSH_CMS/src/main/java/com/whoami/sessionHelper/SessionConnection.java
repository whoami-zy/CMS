package com.whoami.sessionHelper;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.cfg.Configuration;
import org.hibernate.service.ServiceRegistry;
import org.hibernate.service.ServiceRegistryBuilder;

public class SessionConnection {
	 Session session;
	public Session getSession(){
		Configuration config=new Configuration().configure();
		//�������ö���
//		@SuppressWarnings("deprecation")
//		SessionFactory sf=config.buildSessionFactory();
		//ע��������
		ServiceRegistry serviceRegistry=new ServiceRegistryBuilder().applySettings(config.getProperties()).buildServiceRegistry();
		SessionFactory sf=config.buildSessionFactory(serviceRegistry);
		session=sf.openSession();//�򿪻Ự
		return session;	
	}
}
