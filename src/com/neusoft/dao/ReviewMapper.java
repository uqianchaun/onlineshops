package com.neusoft.dao;

import java.util.ArrayList;

import com.neusoft.pojo.Review;

public interface ReviewMapper {
	
	public ArrayList<Review> queryReviews(String gid);
	
	public void deleteReview(Integer gid);

	public void addReviews(Review review);

}
