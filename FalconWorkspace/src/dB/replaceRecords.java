package dB;

import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.hibernate.cfg.Configuration;

public class replaceRecords {
	
//	public void updateClientProduct(String groupNumber, ArrayList<String> onValues)
//	{
//		//https://www.concretepage.com/hibernate/hibernate-session-save-update-and-saveorupdate-example
//		
//		//List<clientproduct> products = new DatabaseWork().grabRecord(groupNumber);
//		System.out.println(onValues.toString());
//		SessionFactory SF = new Configuration().configure().buildSessionFactory();
//		Session sess = SF.getCurrentSession();
//		System.out.println("session begin");
//		Transaction tx = null;
//		ClientList c = null;
//		//if (sess.isOpen()) sess.close();
//		try {
//			tx = sess.beginTransaction();
//			System.out.println("Transaction");
//			sess.flush();
//			sess.clear();
//			for(clientproduct p : products)
//			{
//				boolean isOn = false;
//				for(String onProduct : onValues) if (onProduct.equals(p.ProductType)) isOn = true;
//				
//				sess.update(p);
//				//changeBillingto((isOn?"1":"0"), groupNumber,  p.getProductType());
//			}
//			System.out.println("Transaction end");
//			tx.commit();
//		} catch (Exception e) {
//			e.printStackTrace();
//			e.getMessage();
//		} finally {
//			System.out.println("session close");
//			sess.close();
//		}
//	}
}
