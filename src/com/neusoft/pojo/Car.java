package com.neusoft.pojo;

public class Car {
	
	private Integer float_number;
	private Integer gid;
	private String login_id;
	private Integer g_number;
	private Goods goods;
	public Car(Integer float_number, Integer gid, String login_id, Integer g_number, Goods goods) {
		super();
		this.float_number = float_number;
		this.gid = gid;
		this.login_id = login_id;
		this.g_number = g_number;
		this.goods = goods;
	}
	public Car() {
		super();
		// TODO Auto-generated constructor stub
	}
	public Integer getFloat_number() {
		return float_number;
	}
	public void setFloat_number(Integer float_number) {
		this.float_number = float_number;
	}
	public Integer getGid() {
		return gid;
	}
	public void setGid(Integer gid) {
		this.gid = gid;
	}
	public String getLogin_id() {
		return login_id;
	}
	public void setLogin_id(String login_id) {
		this.login_id = login_id;
	}
	public Integer getG_number() {
		return g_number;
	}
	public void setG_number(Integer g_number) {
		this.g_number = g_number;
	}
	public Goods getGoods() {
		return goods;
	}
	public void setGoods(Goods goods) {
		this.goods = goods;
	}
	@Override
	public String toString() {
		return "Car [float_number=" + float_number + ", gid=" + gid + ", login_id=" + login_id + ", g_number="
				+ g_number + ", goods=" + goods + "]";
	}
	
	
	

}
