package com.neusoft.service;

import java.util.ArrayList;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.neusoft.dao.ReviewMapper;
import com.neusoft.pojo.Review;

@Service
public class ReviewService {

	@Autowired
	private ReviewMapper reviewMapper;
	
	public ArrayList<Review> queryReviews(String gid){
		
		return reviewMapper.queryReviews(gid);
	}

	public void addReviews(Review review) {
		
		reviewMapper.addReviews(review);
		
	}
}
