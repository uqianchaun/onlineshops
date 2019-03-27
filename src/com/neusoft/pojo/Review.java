package com.neusoft.pojo;

public class Review {
	
	private Integer review_id;
	private String gid;
	private String reviews;
	private String login_id;
	private String client_rename;
	public Review() {
		super();
		// TODO Auto-generated constructor stub
	}
	public Review(Integer review_id, String gid, String reviews, String login_id, String client_rename) {
		super();
		this.review_id = review_id;
		this.gid = gid;
		this.reviews = reviews;
		this.login_id = login_id;
		this.client_rename = client_rename;
	}
	public Integer getReview_id() {
		return review_id;
	}
	public void setReview_id(Integer review_id) {
		this.review_id = review_id;
	}
	public String getGid() {
		return gid;
	}
	public void setGid(String gid) {
		this.gid = gid;
	}
	public String getReviews() {
		return reviews;
	}
	public void setReviews(String reviews) {
		this.reviews = reviews;
	}
	public String getLogin_id() {
		return login_id;
	}
	public void setLogin_id(String login_id) {
		this.login_id = login_id;
	}
	public String getClient_rename() {
		return client_rename;
	}
	public void setClient_rename(String client_rename) {
		this.client_rename = client_rename;
	}
	@Override
	public String toString() {
		return "Review [review_id=" + review_id + ", gidString=" + gid + ", reviews=" + reviews + ", login_id="
				+ login_id + ", client_rename=" + client_rename + "]";
	}

}
