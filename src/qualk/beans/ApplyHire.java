package qualk.beans;

import java.sql.Date;

public class ApplyHire {
	private String iD;
	private String teacherID;
	private String centerID;
	private Date dateTime;
	private String status;
	public ApplyHire() {
	}
	public ApplyHire(String iD, String teacherID, String centerID, Date dateTime, String status,
			Boolean teacherOrCenter) {
		this.iD = iD;
		this.teacherID = teacherID;
		this.centerID = centerID;
		this.dateTime = dateTime;
		this.status = status;
	}
	public String getiD() {
		return iD;
	}
	public void setiD(String iD) {
		this.iD = iD;
	}
	public String getTeacherID() {
		return teacherID;
	}
	public void setTeacherID(String teacherID) {
		this.teacherID = teacherID;
	}
	public String getCenterID() {
		return centerID;
	}
	public void setCenterID(String centerID) {
		this.centerID = centerID;
	}
	public Date getDateTime() {
		return dateTime;
	}
	public void setDateTime(Date dateTime) {
		this.dateTime = dateTime;
	}
	public String getStatus() {
		return status;
	}
	public void setStatus(String status) {
		this.status = status;
	}
}

