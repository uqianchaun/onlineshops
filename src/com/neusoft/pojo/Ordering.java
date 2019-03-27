package com.neusoft.pojo;

import java.util.ArrayList;

public class Ordering {
	
	private Integer dd_id;
	private String dd_date;
	private Double dd_money;
	private String login_id;
	private User user;
	private ArrayList<Connect> connects;
	public Ordering() {
		super();
		// TODO Auto-generated constructor stub
	}
	public Ordering(Integer dd_id, String dd_date, Double dd_money, String login_id, User user,
			ArrayList<Connect> connects) {
		super();
		this.dd_id = dd_id;
		this.dd_date = dd_date;
		this.dd_money = dd_money;
		this.login_id = login_id;
		this.user = user;
		this.connects = connects;
	}
	public Integer getDd_id() {
		return dd_id;
	}
	public void setDd_id(Integer dd_id) {
		this.dd_id = dd_id;
	}
	public String getDd_date() {
		return dd_date;
	}
	public void setDd_date(String dd_date) {
		this.dd_date = dd_date;
	}
	public Double getDd_money() {
		return dd_money;
	}
	public void setDd_money(Double dd_money) {
		this.dd_money = dd_money;
	}
	public String getLogin_id() {
		return login_id;
	}
	public void setLogin_id(String login_id) {
		this.login_id = login_id;
	}
	public User getUser() {
		return user;
	}
	public void setUser(User user) {
		this.user = user;
	}
	public ArrayList<Connect> getConnects() {
		return connects;
	}
	public void setConnects(ArrayList<Connect> connects) {
		this.connects = connects;
	}
	@Override
	public String toString() {
		return "Ordering [dd_id=" + dd_id + ", dd_date=" + dd_date + ", dd_money=" + dd_money + ", login_id=" + login_id
				+ ", user=" + user + ", connects=" + connects + "]";
	}
	
	

}
