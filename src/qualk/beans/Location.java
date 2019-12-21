package qualk.beans;

public class Location {
	private String iD;
	private String name;
	private String provinceID;
	public Location() {
	}
	public Location(String iD, String name, String provinceID) {
		this.iD = iD;
		this.name = name;
		this.provinceID = provinceID;
	}
	public String getiD() {
		return iD;
	}
	public void setiD(String iD) {
		this.iD = iD;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getProvinceID() {
		return provinceID;
	}
	public void setProvinceID(String provinceID) {
		this.provinceID = provinceID;
	}
	
}
