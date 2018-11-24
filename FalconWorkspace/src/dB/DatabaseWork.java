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
		List<clientproduct> clientpr = sess.createQuery("select SourceID, ClientID, GroupNumber, "
				+ "ClientEffectiveDate, ProductType, BillingType, Percent, ProdEffectiveDate, "
				+ " ProdTerminateDate "
				+ "FROM clientproduct where GroupNumber = " + groupNumber).list(); 
//		for(clientproduct elm: clientpr) {
//			System.out.println(elm.ProductType);
//		}
		
		for(Iterator it = clientpr.iterator(); it.hasNext();) {
			//clientproduct cp = (clientproduct) it.next();
			clientproduct cp = new clientproduct();
			Object[] obj = (Object[]) it.next();
			cp.setSourceID(obj[0].toString());
			cp.setClientID(obj[1].toString());
			cp.setGroupNumber(obj[2].toString());
			cp.setClientEffectiveDate(obj[3].toString());
			cp.setProductType(obj[4].toString());
			cp.setBillingType(obj[5].toString());
			cp.setPercent(obj[6].toString());
			cp.setProdEffectiveDate(obj[7].toString());
			try {
				cp.setProdTerminateDate(obj[8].toString());
			} catch(NullPointerException e) {
				cp.setProdTerminateDate(null);
			}
			
			System.out.println(cp.SourceID + " " + cp.ClientID + " " + cp.GroupNumber + " "
					+ cp.ClientEffectiveDate + " " + cp.ProductType + " " + cp.BillingType + " "
					+ cp.Percent + " " + cp.ProdEffectiveDate + " " + cp.ProdTerminateDate);
			
		}
//		System.out.println(clientpr);
//		System.out.println(clientpr.get(6));
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

