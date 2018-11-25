package dB;
import java.util.Arrays;
import java.util.Iterator;
import java.util.List;

import org.hibernate.*;
import org.hibernate.cfg.Configuration;
public class DatabaseWork {
SessionFactory SF = new Configuration().configure().buildSessionFactory();
Session sess = SF.getCurrentSession();

///* Displays only one Group */
//select * from clientproduct where concat(SourceID, ClientID, GroupNumber) like '%10191290%' group by GroupNumber;
///* Displays all group products*/
//select * from clientproduct where concat(SourceID, ClientID, GroupNumber) like '%10191290%';

	//this search will let users Search by SourceID, ClientID, or GroupNumber
	public void search(String searchString) {
		Transaction tx = null;
		try {
			tx = sess.beginTransaction();
			@SuppressWarnings("unchecked")
			List<clientproduct> clientpr = sess.createQuery("select SourceID, ClientID, GroupNumber, "
					+ "ClientEffectiveDate, ProductType, BillingType, Percent, ProdEffectiveDate, "
					+ " ProdTerminateDate "
					+ "FROM clientproduct WHERE SourceID LIKE '%"+ searchString +"%' OR ClientID LIKE '%"+ searchString
					+"%' OR GroupNumber LIKE '%"+ searchString + "%' group by GroupNumber").list();

			for(Iterator it = clientpr.iterator(); it.hasNext();) {
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
			tx.commit();
		} catch (Exception e) {
			e.printStackTrace();
			e.getMessage();
		} finally {
			sess.close();
		}
	}
	public void grabClient(String groupNumber) {
		Transaction tx = null;

		try {
			tx = sess.beginTransaction();
			 List clients = sess.createQuery("FROM ClientList").list();
	         for (Iterator iterator = clients.iterator(); iterator.hasNext();){
	            ClientList client = (ClientList) iterator.next();
	            System.out.print(client.getBillingType());
	            System.out.print(client.getClientCategory());
	            System.out.print( client.getEffectiveDate());
	            System.out.print(client.getClientID());
	            System.out.print(client.getClientSubCategory());
	            System.out.print(client.getTerminationDate());
	            System.out.print(client.getComments());
	            System.out.print(client.getConsortiumName());
	            System.out.print(client.getConsortiumNumber());
	            System.out.print(client.getCustomerName());
	            System.out.println(client.getGroupNumber());

	         }
	         tx.commit();
		} catch (Exception e) {
			e.printStackTrace();
			e.getMessage();
		}
	}

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
			tx.commit();
		} catch (Exception e) {
			e.printStackTrace();
			e.getMessage();
		} finally {
			sess.close();
		}
		return groupNumber;
	}

	public void grabClient(String groupNumber) {
		Transaction tx = null;
		try {
			tx = sess.beginTransaction();
			@SuppressWarnings("unchecked")
			List<clientproduct> clientpr = sess.createQuery("select SourceID, ClientID, CustomerName, "
					+ "ConsortiumNumber, ConsortiumName, GroupNumberSix, GroupNumber, GroupType, "
					+ " ClientCategory, ClientSubCategory,  Comments, BillingType, EffectiveDate, TerminationDate"
					+ "FROM client where GroupNumber = " + groupNumber).list();

			for(Iterator it = clientpr.iterator(); it.hasNext();) {
				//clientproduct cp = (clientproduct) it.next();
				clientproduct cp = new clientproduct();
				Object[] obj = (Object[]) it.next();
				cp.setSourceID(obj[0].toString());

				try {
					cp.setProdTerminateDate(obj[8].toString());
				} catch(NullPointerException e) {
					cp.setProdTerminateDate(null);
				}

				System.out.println(cp.SourceID + " " + cp.ClientID + " " + cp.GroupNumber + " "
						+ cp.ClientEffectiveDate + " " + cp.ProductType + " " + cp.BillingType + " "
						+ cp.Percent + " " + cp.ProdEffectiveDate + " " + cp.ProdTerminateDate);

			}
			tx.commit();
		} catch (Exception e) {
			e.printStackTrace();
			e.getMessage();
		} finally {
			sess.close();
		}
	}

	public void changeBilling (String groupnumber, String productType) {
		Transaction tx = null;
		try {
			tx = sess.beginTransaction();
			sess.createQuery("update clientproduct  set BillingType = 0 where groupnumber = '"+groupnumber+"' "
					+ "& productType = '"+productType+"'");

		} catch (Exception e) {
			e.printStackTrace();
			e.getMessage();
		}
	}

	public static void main(String[] args) {
		DatabaseWork Wk = new DatabaseWork();

	}
}
