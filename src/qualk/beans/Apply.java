package qualk.beans;

import java.util.Date;

public class Apply {
	private String id;
	private String teacherID;
	private String centerID;
	private Date dateTime;
	private String status;
	public String getId() {
		return id;
	}
	public void setId(String id) {
		this.id = id;
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
	public Apply(String id, String teacherID, String centerID, Date dateTime, String status) {
		super();
		this.id = id;
		this.teacherID = teacherID;
		this.centerID = centerID;
		this.dateTime = dateTime;
		this.status = status;
	}
}
