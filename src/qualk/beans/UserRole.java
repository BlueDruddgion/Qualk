package qualk.beans;

public class UserRole {
	private String iD;
	private String userID;
	private String roleID;
	public UserRole() {
	}
	public UserRole(String iD, String userID, String roleID) {
		this.iD = iD;
		this.userID = userID;
		this.roleID = roleID;
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
	public String getRoleID() {
		return roleID;
	}
	public void setRoleID(String roleID) {
		this.roleID = roleID;
	}
	
}
