package qualk.beans;

import java.sql.Date;

public class Report {
	private String iD;
	private Date dateTime;
	private String title;
	private String content;
	private String centerID;
	private String teacherID;
	public String getiD() {
		return iD;
	}
	public void setiD(String iD) {
		this.iD = iD;
	}
	public Date getDateTime() {
		return dateTime;
	}
	public void setDateTime(Date dateTime) {
		this.dateTime = dateTime;
	}
	public String getTitle() {
		return title;
	}
	public void setTitle(String title) {
		this.title = title;
	}
	public String getContent() {
		return content;
	}
	public void setContent(String content) {
		this.content = content;
	}
	public String getCenterID() {
		return centerID;
	}
	public void setCenterID(String centerID) {
		this.centerID = centerID;
	}
	public String getTeacherID() {
		return teacherID;
	}
	public void setTeacherID(String teacherID) {
		this.teacherID = teacherID;
	}
	public Report(String iD, Date dateTime, String title, String content, String centerID, String teacherID) {
		super();
		this.iD = iD;
		this.dateTime = dateTime;
		this.title = title;
		this.content = content;
		this.centerID = centerID;
		this.teacherID = teacherID;
	}
}
