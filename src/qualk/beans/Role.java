package qualk.beans;

public class Role {
	private String iD;
	private String roleName;

	public Role() {
	}
	public Role(String iD, String roleName, Boolean view, Boolean modify, Boolean delete) {
		this.iD = iD;
		this.roleName = roleName;

	}
	public String getiD() {
		return iD;
	}
	public void setiD(String iD) {
		this.iD = iD;
	}
	public String getRoleName() {
		return roleName;
	}
	public void setRoleName(String roleName) {
		this.roleName = roleName;
	}

	
}
