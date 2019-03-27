package com.neusoft.pojo;

public class Goods {
	
	private Integer gid;
	private String gname;
	private String gpicture;
	private String gkinds;
	private Integer gnumber;
	private Double gmoney;
	private String descript;
	public Goods() {
		super();
		// TODO Auto-generated constructor stub
	}
	public Goods(Integer gid, String gname, String gpicture, String gkinds, Integer gnumber, Double gmoney,
			String descript) {
		super();
		this.gid = gid;
		this.gname = gname;
		this.gpicture = gpicture;
		this.gkinds = gkinds;
		this.gnumber = gnumber;
		this.gmoney = gmoney;
		this.descript = descript;
	}
	public Integer getGid() {
		return gid;
	}
	public void setGid(Integer gid) {
		this.gid = gid;
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
	public String getGkinds() {
		return gkinds;
	}
	public void setGkinds(String gkinds) {
		this.gkinds = gkinds;
	}
	public Integer getGnumber() {
		return gnumber;
	}
	public void setGnumber(Integer gnumber) {
		this.gnumber = gnumber;
	}
	public Double getGmoney() {
		return gmoney;
	}
	public void setGmoney(Double gmoney) {
		this.gmoney = gmoney;
	}
	public String getDescript() {
		return descript;
	}
	public void setDescript(String descript) {
		this.descript = descript;
	}
	@Override
	public String toString() {
		return "Goods [gid=" + gid + ", gname=" + gname + ", gpicture=" + gpicture + ", gkinds=" + gkinds + ", gnumber="
				+ gnumber + ", gmoney=" + gmoney + ", descript=" + descript + "]";
	}
	
	

}
