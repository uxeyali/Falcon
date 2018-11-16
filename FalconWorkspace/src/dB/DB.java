package dB;


import org.hibernate.*;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.hibernate.cfg.Configuration;

import java.util.Iterator;
import java.util.List;

public class DB {

	static SessionFactory sessionFactory = new Configuration().configure().buildSessionFactory();
	Session session = sessionFactory.getCurrentSession();

	
	
	
}
