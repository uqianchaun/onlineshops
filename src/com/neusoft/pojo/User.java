package com.neusoft.pojo;

public class User {

	private String login_id;
	private String login_password;
	private String client_name;
	private String client_rename;
	private String client_age;
	private String client_sex;
	private Double client_money;
	private String client_tel;
	private String client_address;
	private Integer rights;
	public User(String login_id, String login_password, String client_name, String client_rename, String client_age,
			String client_sex, Double client_money, String client_tel, String client_address, Integer rights) {
		super();
		this.login_id = login_id;
		this.login_password = login_password;
		this.client_name = client_name;
		this.client_rename = client_rename;
		this.client_age = client_age;
		this.client_sex = client_sex;
		this.client_money = client_money;
		this.client_tel = client_tel;
		this.client_address = client_address;
		this.rights = rights;
	}
	public User() {
		super();
		// TODO Auto-generated constructor stub
	}
	public String getLogin_id() {
		return login_id;
	}
	public void setLogin_id(String login_id) {
		this.login_id = login_id;
	}
	public String getLogin_password() {
		return login_password;
	}
	public void setLogin_password(String login_password) {
		this.login_password = login_password;
	}
	public String getClient_name() {
		return client_name;
	}
	public void setClient_name(String client_name) {
		this.client_name = client_name;
	}
	public String getClient_rename() {
		return client_rename;
	}
	public void setClient_rename(String client_rename) {
		this.client_rename = client_rename;
	}
	public String getClient_age() {
		return client_age;
	}
	public void setClient_age(String client_age) {
		this.client_age = client_age;
	}
	public String getClient_sex() {
		return client_sex;
	}
	public void setClient_sex(String client_sex) {
		this.client_sex = client_sex;
	}
	public Double getClient_money() {
		return client_money;
	}
	public void setClient_money(Double client_money) {
		this.client_money = client_money;
	}
	public String getClient_tel() {
		return client_tel;
	}
	public void setClient_tel(String client_tel) {
		this.client_tel = client_tel;
	}
	public String getClient_address() {
		return client_address;
	}
	public void setClient_address(String client_address) {
		this.client_address = client_address;
	}
	public Integer getRights() {
		return rights;
	}
	public void setRights(Integer rights) {
		this.rights = rights;
	}
	@Override
	public String toString() {
		return "User [login_id=" + login_id + ", login_password=" + login_password + ", client_name=" + client_name
				+ ", client_rename=" + client_rename + ", client_age=" + client_age + ", client_sex=" + client_sex
				+ ", client_money=" + client_money + ", client_tel=" + client_tel + ", client_address=" + client_address
				+ ", rights=" + rights + "]";
	}
	
	
	
	
}
