package qualk.beans;

public class CenterForm {
	private String iD;
	private String centerID;
	private String formID;
	public CenterForm() {
	}
	public CenterForm(String iD, String centerID, String formID) {
		this.iD = iD;
		this.centerID = centerID;
		this.formID = formID;
	}
	public String getiD() {
		return iD;
	}
	public void setiD(String iD) {
		this.iD = iD;
	}
	public String getCenterID() {
		return centerID;
	}
	public void setCenterID(String centerID) {
		this.centerID = centerID;
	}
	public String getFormID() {
		return formID;
	}
	public void setFormID(String formID) {
		this.formID = formID;
	}
	
}
