package qualk.beans;

public class User {
	private String iD;
	private String userName;
	private String password;
	private String email;
	public User() {
	}
	public User(String iD, String userName, String password, String email) {
		this.iD = iD;
		this.userName = userName;
		this.password = password;
		this.email = email;
	}
	public String getiD() {
		return iD;
	}
	public void setiD(String iD) {
		this.iD = iD;
	}
	public String getUserName() {
		return userName;
	}
	public void setUserName(String userName) {
		this.userName = userName;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	
}
