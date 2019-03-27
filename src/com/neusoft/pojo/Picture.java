package com.neusoft.pojo;

public class Picture {
	
	private Integer pid;
	private Integer gid;
	private String ppicture;
	public Picture(Integer pid, Integer gid, String ppicture) {
		super();
		this.pid = pid;
		this.gid = gid;
		this.ppicture = ppicture;
	}
	public Picture() {
		super();
		// TODO Auto-generated constructor stub
	}
	public Integer getPid() {
		return pid;
	}
	public void setPid(Integer pid) {
		this.pid = pid;
	}
	public Integer getGid() {
		return gid;
	}
	public void setGid(Integer gid) {
		this.gid = gid;
	}
	public String getPpicture() {
		return ppicture;
	}
	public void setPpicture(String ppicture) {
		this.ppicture = ppicture;
	}
	@Override
	public String toString() {
		return "Picture [pid=" + pid + ", gid=" + gid + ", ppicture=" + ppicture + "]";
	}
	
	

}
