package dB;
import java.util.ArrayList;
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
/*
 * This selects by one group
 *
	select clientproduct.SourceID, clientproduct.ClientID, client.CustomerName, clientproduct.GroupNumber,
	clientproduct.ProductType, clientproduct.BillingType, clientproduct.Percent, clientproduct.ProdEffectiveDate, clientproduct.ProdTerminateDate
	from clientproduct join client on clientproduct.GroupNumber = client.GroupNumber
	where clientproduct.GroupNumber like '%Spar%' OR clientproduct.ClientID like '%Spar%'
	OR clientproduct.sourceID like '%Spar%' OR client.CustomerName LIKE '%Spar%'
	group by clientproduct.GroupNumber;
 */

	//this search will let users Search by SourceID, ClientID, or GroupNumber
	public List<ClientList> search(String searchString) {
		Transaction tx = null;
		List<ClientList> result = new ArrayList<ClientList>();
		try {
			tx = sess.beginTransaction();
			@SuppressWarnings("unchecked")
			List clientpr;
			if(searchString.matches(".*\\w.*")) // check for anything that is not white space
			{
				clientpr = sess.createQuery("select SourceID, ClientID, CustomerName, ConsortiumNumber, ConsortiumName, GroupNumberSix, GroupNumber, " +
						"GroupType, ClientCategory, ClientSubCategory, Comments, BillingType, EffectiveDate, TerminationDate " +
						"from ClientList where GroupNumber like '%"+ searchString +"%' OR ClientID like '%"+ searchString +"%' OR sourceID like '%"+ searchString +"%' " +
						"OR CustomerName LIKE '%"+ searchString +"%' OR GroupNumberSix like '%" + searchString + "%'").list();
			}
			else
			{
				clientpr = sess.createQuery("select SourceID, ClientID, CustomerName, ConsortiumNumber, ConsortiumName, GroupNumberSix, GroupNumber, " +
						"GroupType, ClientCategory, ClientSubCategory, Comments, BillingType, EffectiveDate, TerminationDate " +
						"from ClientList").list();
			}

			for(Iterator it = clientpr.iterator(); it.hasNext();) {
				ClientList c = new ClientList();

				Object[] obj = (Object[]) it.next();

				//ideally these all should be in a try/catch
				c.setSourceID(obj[0].toString());
				c.setClientID(obj[1].toString());
				try {
					c.setCustomerName(obj[2].toString());
				}
				catch(NullPointerException e) {
					c.setCustomerName(null);
				}
				try {
					c.setConsortiumNumber(obj[3].toString());
				} catch(NullPointerException e) {
					c.setConsortiumNumber(null);
				}
				try {
					c.setConsortiumName(obj[4].toString());
				} catch(NullPointerException e) {
					c.setConsortiumName(null);
				}
				c.setGroupNumberSix(obj[5].toString());
				c.setGroupNumber(obj[6].toString());
				c.setGroupType(obj[7].toString());
				c.setClientCategory(obj[8].toString());
				c.setClientSubCategory(obj[9].toString());
				try {
					c.setComments(obj[10].toString());
				} catch(NullPointerException e) {
					c.setComments(null);
				}
				c.setBillingType(obj[11].toString());
				c.setEffectiveDate(obj[12].toString());
				try {
					c.setTerminationDate(obj[13].toString());
				} catch(NullPointerException e) {
					c.setTerminationDate(null);
				}
				result.add(c);
			}
			tx.commit();
			return result;
		} catch (Exception e) {
			e.printStackTrace();
			e.getMessage();
		} finally {
			sess.close();
		}
		return result;
	}

	//this grabs all of a group's products
	public List<clientproduct> grabRecord(String groupNumber) {
		Transaction tx = null;
		List<clientproduct> result = new ArrayList<clientproduct>();
		try {
			tx = sess.beginTransaction();
			System.out.println("select SourceID, ClientID, GroupNumber, "
					+ "ClientEffectiveDate, ProductType, BillingType, Percent, ProdEffectiveDate, "
					+ " ProdTerminateDate "
					+ "FROM clientproduct where GroupNumber = " + groupNumber);
			@SuppressWarnings("unchecked")
			List<clientproduct> clientpr = sess.createQuery("select SourceID, ClientID, GroupNumber, "
					+ "ClientEffectiveDate, ProductType, BillingType, Percent, ProdEffectiveDate, "
					+ " ProdTerminateDate "
					+ "FROM clientproduct where GroupNumber = '" + groupNumber + "'").list();

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

				//adds clientproduct to the return list
				result.add(cp);
			}
			tx.commit();
			return result;
		} catch (Exception e) {
			e.printStackTrace();
			e.getMessage();
		}
		finally
		{
			sess.close();
			
		}
		return result;
	}

	//this grabs all info on the Group from the Client table
	public ClientList grabClient(String groupNumber) {
		Transaction tx = null;
		ClientList c = null;
		try {
			tx = sess.beginTransaction();
			List client2 = sess.createQuery("select SourceID, ClientID, CustomerName, "
					+ "ConsortiumNumber, ConsortiumName, GroupNumberSix, GroupNumber, GroupType, "
					+ "ClientCategory, ClientSubCategory, Comments, BillingType, EffectiveDate, TerminationDate "
					+ "FROM ClientList WHERE GroupNumber = '" + groupNumber + "'").list();
			Iterator it = client2.iterator();

			c = new ClientList();
			Object[] obj = (Object[]) it.next();

			//ideally these all should be in a try/catch
			c.setSourceID(obj[0].toString());
			c.setClientID(obj[1].toString());
			try {
				c.setCustomerName(obj[2].toString());
			}
			catch(NullPointerException e) {
				c.setCustomerName(null);
			}
			try {
				c.setConsortiumNumber(obj[3].toString());
			} catch(NullPointerException e) {
				c.setConsortiumNumber(null);
			}
			try {
				c.setConsortiumName(obj[4].toString());
			} catch(NullPointerException e) {
				c.setConsortiumName(null);
			}
			c.setGroupNumberSix(obj[5].toString());
			c.setGroupNumber(obj[6].toString());
			c.setGroupType(obj[7].toString());
			c.setClientCategory(obj[8].toString());
			c.setClientSubCategory(obj[9].toString());
			try {
				c.setComments(obj[10].toString());
			} catch(NullPointerException e) {
				c.setComments(null);
			}
			c.setBillingType(obj[11].toString());
			c.setEffectiveDate(obj[12].toString());
			try {
				c.setTerminationDate(obj[13].toString());
			} catch(NullPointerException e) {
				c.setTerminationDate(null);
			}

			System.out.println(c.getSourceID() +" "+ c.getClientID() +" "+ c.getCustomerName()
					+" "+ c.getConsortiumNumber() +" "+ c.getConsortiumName() + " "
					+ c.getGroupNumberSix() +" "+ c.getGroupNumber() + " "
					+ c.getGroupType() +" "+ c.getClientCategory() +" "
					+ c.getClientSubCategory() +" "+ c.getComments() +" "
					+ c.getBillingType() +" "+ c.getEffectiveDate() +" "
					+ c.getTerminationDate());


			tx.commit();
			return c;
		} catch (Exception e) {
			e.printStackTrace();
			e.getMessage();
		} finally {
			sess.close();
		}
		return c;
	}


	@SuppressWarnings("deprecation")
	public void changeBillingto (String amount, String groupnumber, String productType) {
		String sql = "update clientproduct  set BillingType ='"+amount+"'" +
				" where groupnumber = '"+groupnumber+"' AND productType = '"+productType+"'";
			Transaction tx = null;
			if (!sess.isOpen()) {
				sess = SF.getCurrentSession();
				tx = sess.beginTransaction();
			}
		try {
			System.out.println("In try");
			//tx = sess.beginTransaction();
			Query q = sess.createQuery(sql);
			int result = q.executeUpdate();
			
			tx.commit();
			System.out.println("changed: " + result);
		}catch(Exception e) {
			e.getMessage();
		}finally {
			sess.close();
		}
	}


	//this method is unused
	public void grabClientTest(String groupNumber) {
		Transaction tx = null;
		try {
			tx = sess.beginTransaction();
			 List clients = sess.createQuery("select GroupNumber FROM ClientList WHERE GroupNumber = " + groupNumber).list();
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
		finally {
			sess.close();
		}
	}
	
	public void updateClientProduct(String groupNumber, List<String> listOfProductsThatAreOn, List<clientproduct> allProductsInGroup)
	{
		
		//https://www.concretepage.com/hibernate/hibernate-session-save-update-and-saveorupdate-example
		Transaction tx = null;
		ClientList c = null;
		//List<clientproduct> allProductsInGroup = new DatabaseWork().grabRecord(groupNumber);
		try {
			tx = sess.beginTransaction();
			
			for(int k = 0; k < allProductsInGroup.size(); k++)
			{
				
				//sess.clear();
				boolean isOn = false;
				for(int i = 0; i < listOfProductsThatAreOn.size(); i++)
				{
					if(allProductsInGroup.get(k).getProductType().equals(listOfProductsThatAreOn.get(i)))
					{
						isOn = true;
					}
				}
				
			changeBillingto(isOn?"1":"0", groupNumber, allProductsInGroup.get(k).getProductType());
			}

			sess.close();
		} catch (Exception e) {
			e.printStackTrace();
			e.getMessage();
		} finally {
			sess.close();
		}
	}

	public static void main(String[] args) {
		DatabaseWork Wk = new DatabaseWork();
		//List<ClientList> test = Wk.search("sp");
		//ClientList test = Wk.grabClient("0PE0030ZA");
		//Wk.closeSession();
		//Wk.changeBillingto("0","10279770", "PREPAYCOT");
//		for(ClientList c: test) {
//			System.out.println(c.getSourceID() +" "+ c.getClientID() +" "+ c.getCustomerName()
//			+" "+ c.getConsortiumNumber() +" "+ c.getConsortiumName() + " "
//			+ c.getGroupNumberSix() +" "+ c.getGroupNumber() + " "
//			+ c.getGroupType() +" "+ c.getClientCategory() +" "
//			+ c.getClientSubCategory() +" "+ c.getComments() +" "
//			+ c.getBillingType() +" "+ c.getEffectiveDate() +" "
//			+ c.getTerminationDate());
//		}
	}
}
