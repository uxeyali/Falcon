package dB;

public class ClientList {
	//****************************CODE FOR DATABASE****************************
	String SourceID;
	String ClientID;
	String CustomerName;
	String ConsortiumNumber;
	String ConsortiumName;
	String GroupNumberSix;
	String GroupNumber;
	String GroupType;
	String ClientCategory;
	String ClientSubCategory;
	String Comments;
	String BillingType;
	String ClientEffectiveDate;
	String ClientTerminateDate;
	
	
	//getters and setters
	public String getSourceID() {
		return SourceID;
	}
	public void setSourceID(String sourceID) {
		SourceID = sourceID;
	}
	public String getClientID() {
		return ClientID;
	}
	public void setClientID(String clientID) {
		ClientID = clientID;
	}
	public String getCustomerName() {
		return CustomerName;
	}
	public void setCustomerName(String CustomerName) {
		this.CustomerName = CustomerName;
	}
	public String getConsortiumNumber() {
		return ConsortiumNumber;
	}
	public void setConsortiumNumber(String ConsortiumNumber) {
		this.ConsortiumNumber = ConsortiumNumber;
	}
	public String getConsortiumName() {
		return ConsortiumName;
	}
	public void setConsortiumName(String ConsortiumName) {
		this.ConsortiumName = ConsortiumName;
	}
	public String getGroupNumberSix() {
		return GroupNumberSix;
	}
	public void setGroupNumberSix(String groupNumberSix) {
		this.GroupNumberSix = groupNumberSix;
	}
	public String getGroupNumber() {
		return GroupNumber;
	}
	public void setGroupNumber(String groupNumber) {
		GroupNumber = groupNumber;
	}
	public String getGroupType() {
		return GroupType;
	}
	public void setGroupType(String groupType) {
		this.GroupType= groupType;
	}
	public String getClientCategory() {
		return ClientCategory;
	}
	public void setClientCategory(String ClientCategory) {
		this.ClientCategory = ClientCategory;
	}
	public String getClientSubCategory() {
		return ClientSubCategory;
	}
	public void setClientSubCategory(String ClientSubCategory) {
		this.ClientSubCategory = ClientSubCategory;
	}
	public String getComments() {
		return Comments;
	}
	public void setComments(String Comments) {
		this.Comments = Comments;
	}
	public String getClientEffectiveDate() {
		return ClientEffectiveDate;
	}
	public void setClientEffectiveDate(String effectiveDate) {
		ClientEffectiveDate = effectiveDate;
	}
	public String getBillingType() {
		return BillingType;
	}
	public void setBillingType(String billingType) {
		BillingType = billingType;
	}
	public String getClientTerminateDate() {
		return ClientTerminateDate;
	}
	public void setProdTerminateDate(String productTermDate) {
		this.ClientTerminateDate= productTermDate;
	}
}
