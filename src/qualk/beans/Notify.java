package qualk.beans;

import java.sql.Date;

public class Notify {
	private String iD;
	private Date dateTime;
	private String title;
	private String text;
	public Notify() {
	}
	public Notify(String iD, Date dateTime, String title, String text) {
		this.iD = iD;
		this.dateTime = dateTime;
		this.title = title;
		this.text = text;
	}
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
	public String getText() {
		return text;
	}
	public void setText(String text) {
		this.text = text;
	}
	
}
