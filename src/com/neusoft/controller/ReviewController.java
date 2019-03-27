package com.neusoft.controller;

import java.util.ArrayList;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.neusoft.pojo.Goods;
import com.neusoft.pojo.Picture;
import com.neusoft.pojo.Review;
import com.neusoft.pojo.User;
import com.neusoft.service.GoodsService;
import com.neusoft.service.PictureService;
import com.neusoft.service.ReviewService;
import com.neusoft.service.UserService;
import com.neusoft.util.Common;

@Controller
@RequestMapping("/review")
public class ReviewController {

	@Autowired
	private ReviewService reviewService;
	
	@Autowired
	private UserService userService;
	
	@Autowired
	private GoodsService goodsService;
	
	@Autowired
	private PictureService pictureService;
	
	@RequestMapping("/addReviews")
	public ModelAndView addReviews(HttpSession session,Review review){
		
		ModelAndView mv = new ModelAndView();
		
		String login_id = (String) session.getAttribute("account");
		
		User user = userService.queryUserById(login_id);
		
		review.setLogin_id(login_id);
		
		review.setClient_rename(user.getClient_rename());
		
		System.out.println(review + "...........................");
		
		reviewService.addReviews(review);
		
		Integer gid = Integer.parseInt(review.getGid());
		
		Goods goods = goodsService.queryGoodsById(gid);
		
		ArrayList<Picture> list = pictureService.queryPictures(gid);
		
		String gidd = "" + gid;
		
		ArrayList<Review> relist = reviewService.queryReviews(gidd);
		
		mv.addObject("reviews", relist);
		
		mv.addObject("pictures", Common.setListPictures(list));
		
		mv.addObject("goods", Common.setGoodsImage(goods));
		
		mv.setViewName("single");
		
		return mv;
	}
}
