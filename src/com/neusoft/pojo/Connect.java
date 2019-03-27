package com.neusoft.pojo;

public class Connect {
	
	private Integer run_number;
	private Integer gid;
	private Integer dd_id;
	private Integer count;
	private String gname;
	private String gpicture;
	public Connect(Integer run_number, Integer gid, Integer dd_id, Integer count, String gname, String gpicture) {
		super();
		this.run_number = run_number;
		this.gid = gid;
		this.dd_id = dd_id;
		this.count = count;
		this.gname = gname;
		this.gpicture = gpicture;
	}
	public Connect() {
		super();
		// TODO Auto-generated constructor stub
	}
	public Integer getRun_number() {
		return run_number;
	}
	public void setRun_number(Integer run_number) {
		this.run_number = run_number;
	}
	public Integer getGid() {
		return gid;
	}
	public void setGid(Integer gid) {
		this.gid = gid;
	}
	public Integer getDd_id() {
		return dd_id;
	}
	public void setDd_id(Integer dd_id) {
		this.dd_id = dd_id;
	}
	public Integer getCount() {
		return count;
	}
	public void setCount(Integer count) {
		this.count = count;
	}
	public String getGname() {
		return gname;
	}
	public void setGname(String gname) {
		this.gname = gname;
	}
	public String getGpicture() {
		return gpicture;
	}
	public void setGpicture(String gpicture) {
		this.gpicture = gpicture;
	}
	@Override
	public String toString() {
		return "Connect [run_number=" + run_number + ", gid=" + gid + ", dd_id=" + dd_id + ", count=" + count
				+ ", gname=" + gname + ", gpicture=" + gpicture + "]";
	}
	
	
}
