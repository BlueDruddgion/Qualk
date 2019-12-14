package qualk.beans;

import java.util.Date;

public class InterviewInvite {
	private String id;
	private Date dateTime;
	private String title;
	private String text;
	public String getId() {
		return id;
	}
	public void setId(String id) {
		this.id = id;
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
	public InterviewInvite(String id, Date dateTime, String title, String text) {
		super();
		this.id = id;
		this.dateTime = dateTime;
		this.title = title;
		this.text = text;
	}
}
