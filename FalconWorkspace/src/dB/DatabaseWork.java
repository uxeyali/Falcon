package dB;
import java.util.Arrays;
import java.util.Iterator;
import java.util.List;

import org.hibernate.*;
import org.hibernate.cfg.Configuration;
public class DatabaseWork {
SessionFactory SF = new Configuration().configure().buildSessionFactory();
Session sess = SF.getCurrentSession();

public Object grabRecord(String groupNumber) {
	Transaction tx = null;
	try {
		tx = sess.beginTransaction();
	//	Query q = sess.createQuery("Select SourceID from"
		//		+ " clientproduct where "
			//	+ "groupnumber = '"+groupNumber+"'");
		@SuppressWarnings("unchecked")
		 List clientpr = sess.createQuery("Select distinct SourceID FROM clientproduct").list(); 
		for (@SuppressWarnings("rawtypes")
		Iterator it = clientpr.iterator(); it.hasNext();) {
			clientproduct cp = (clientproduct) it.next();
			System.out.println(cp.SourceID);
		}
		tx.commit();
	} catch (Exception e) {
		e.printStackTrace();
		e.getMessage();
	} finally {
		sess.close();
	}
	return groupNumber;
	
}
public static void main(String[] args) {
	DatabaseWork Wk = new DatabaseWork();
	Wk.grabRecord("10191292");
}
}

