package qualk.beans;

import java.sql.Date;

public class Form {
	private String iD;
	private String locationID;
	private String title;
	private int salary;
	private Date date;
	private String content;
	private String position;
	private String requirement;
	private String contact;
	private Date endTime;
	public Form() {
	}
	public Form(String iD, String locationID, String title, int salary, Date date, String content, String position,
			String requirement, String contact, Date endTime) {
		this.iD = iD;
		this.locationID = locationID;
		this.title = title;
		this.salary = salary;
		this.date = date;
		this.content = content;
		this.position = position;
		this.requirement = requirement;
		this.contact = contact;
		this.endTime = endTime;
	}
	public String getiD() {
		return iD;
	}
	public void setiD(String iD) {
		this.iD = iD;
	}
	public String getLocationID() {
		return locationID;
	}
	public void setLocationID(String locationID) {
		this.locationID = locationID;
	}
	public String getTitle() {
		return title;
	}
	public void setTitle(String title) {
		this.title = title;
	}
	public int getSalary() {
		return salary;
	}
	public void setSalary(int salary) {
		this.salary = salary;
	}
	public Date getDate() {
		return date;
	}
	public void setDate(Date date) {
		this.date = date;
	}
	public String getContent() {
		return content;
	}
	public void setContent(String content) {
		this.content = content;
	}
	public String getPosition() {
		return position;
	}
	public void setPosition(String position) {
		this.position = position;
	}
	public String getRequirement() {
		return requirement;
	}
	public void setRequirement(String requirement) {
		this.requirement = requirement;
	}
	public String getContact() {
		return contact;
	}
	public void setContact(String contact) {
		this.contact = contact;
	}
	public Date getEndTime() {
		return endTime;
	}
	public void setEndTime(Date endTime) {
		this.endTime = endTime;
	}
	
}
