package qualk.beans;

public class CenterInfo {
	private String iD;
	private String userID;
	private String name;
	private String specialize;
	private String address;
	private String contact;
	private Boolean available;
	private String locationID;
	
	
	public CenterInfo() {
		
	}
	
	public CenterInfo(String iD, String userID, String name, String specialize, String address, String contact,
			Boolean available, String locationID) {
		this.iD = iD;
		this.userID = userID;
		this.name = name;
		this.specialize = specialize;
		this.address = address;
		this.contact = contact;
		this.available = available;
		this.locationID = locationID;
	}

	public String getiD() {
		return iD;
	}
	public void setiD(String iD) {
		this.iD = iD;
	}
	public String getUserID() {
		return userID;
	}
	public void setUserID(String userID) {
		this.userID = userID;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getSpecialize() {
		return specialize;
	}
	public void setSpecialize(String specialize) {
		this.specialize = specialize;
	}
	public String getAddress() {
		return address;
	}
	public void setAddress(String address) {
		this.address = address;
	}
	public String getContact() {
		return contact;
	}
	public void setContact(String contact) {
		this.contact = contact;
	}
	public Boolean getAvailable() {
		return available;
	}
	public void setAvailable(Boolean available) {
		this.available = available;
	}
	public String getLocationID() {
		return locationID;
	}
	public void setLocationID(String locationID) {
		this.locationID = locationID;
	}
	

}
