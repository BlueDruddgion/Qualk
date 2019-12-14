package qualk.beans;

public class UserNotify {
	private String iD;
	private String userReceiveID;
	private String userSendID;
	public UserNotify() {
	}
	public UserNotify(String iD, String userReceiveID, String userSendID) {
		this.iD = iD;
		this.userReceiveID = userReceiveID;
		this.userSendID = userSendID;
	}
	public String getiD() {
		return iD;
	}
	public void setiD(String iD) {
		this.iD = iD;
	}
	public String getUserReceiveID() {
		return userReceiveID;
	}
	public void setUserReceiveID(String userReceiveID) {
		this.userReceiveID = userReceiveID;
	}
	public String getUserSendID() {
		return userSendID;
	}
	public void setUserSendID(String userSendID) {
		this.userSendID = userSendID;
	}
	
}
