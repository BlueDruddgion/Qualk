package qualk.beans;

import java.sql.Date;

public class TeacherCV {
	private String iD;
	private String locationID;
	private String name;
	private Date birthDate;
	private String address;
	private String degree;
	private String experiences;
	private String contact;
	private String skill;
	private Boolean available;
	private int salaryWant;
	
	public TeacherCV() {
		
	}
	

	public TeacherCV(String iD, String locationID, String name, Date birthDate, String address, String degree,
			String experiences, String contact, String skill, Boolean available, int salaryWant) {
		this.iD = iD;
		this.locationID = locationID;
		this.name = name;
		this.birthDate = birthDate;
		this.address = address;
		this.degree = degree;
		this.experiences = experiences;
		this.contact = contact;
		this.skill = skill;
		this.available = available;
		this.salaryWant = salaryWant;
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

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public Date getBirthDate() {
		return birthDate;
	}

	public void setBirthDate(Date birthDate) {
		this.birthDate = birthDate;
	}

	public String getAddress() {
		return address;
	}

	public void setAddress(String address) {
		this.address = address;
	}

	public String getDegree() {
		return degree;
	}

	public void setDegree(String degree) {
		this.degree = degree;
	}

	public String getExperiences() {
		return experiences;
	}

	public void setExperiences(String experiences) {
		this.experiences = experiences;
	}

	public String getContact() {
		return contact;
	}

	public void setContact(String contact) {
		this.contact = contact;
	}

	public String getSkill() {
		return skill;
	}

	public void setSkill(String skill) {
		this.skill = skill;
	}

	public Boolean getAvailable() {
		return available;
	}

	public void setAvailable(Boolean available) {
		this.available = available;
	}

	public int getSalaryWant() {
		return salaryWant;
	}

	public void setSalaryWant(int salaryWant) {
		this.salaryWant = salaryWant;
	}
	
	

}
