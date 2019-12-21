package qualk.beans;

public class RoleFunction {
	private String iD;
	private String roleID;
	private String functionID;
	private Boolean view;
	private Boolean insert;
	private Boolean modify;
	private Boolean delete;
	private Boolean search;
	public Boolean getView() {
		return view;
	}
	public void setView(Boolean view) {
		this.view = view;
	}
	public Boolean getInsert() {
		return insert;
	}
	public void setInsert(Boolean insert) {
		this.insert = insert;
	}
	public Boolean getModify() {
		return modify;
	}
	public void setModify(Boolean modify) {
		this.modify = modify;
	}
	public Boolean getDelete() {
		return delete;
	}
	public void setDelete(Boolean delete) {
		this.delete = delete;
	}
	public Boolean getSearch() {
		return search;
	}
	public void setSearch(Boolean search) {
		this.search = search;
	}
	public RoleFunction() {
	}
	public RoleFunction(String iD, String roleID, String functionID) {
		this.iD = iD;
		this.roleID = roleID;
		this.functionID = functionID;
	}
	public String getiD() {
		return iD;
	}
	public void setiD(String iD) {
		this.iD = iD;
	}
	public String getRoleID() {
		return roleID;
	}
	public void setRoleID(String roleID) {
		this.roleID = roleID;
	}
	public String getFunctionID() {
		return functionID;
	}
	public void setFunctionID(String functionID) {
		this.functionID = functionID;
	}
	
}
