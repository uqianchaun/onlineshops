package com.neusoft.controller;


import java.util.ArrayList;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;

import com.neusoft.pojo.Goods;
import com.neusoft.pojo.Picture;
import com.neusoft.service.GoodsService;
import com.neusoft.service.PictureService;
import com.neusoft.util.Common;
import com.neusoft.util.FileUpLoad;

@Controller
@RequestMapping("/picture")
public class PictureController {

	@Autowired
	private PictureService pictureService;
	
	@Autowired
	private GoodsService goodsService;
	
	@RequestMapping("/insertPicture")
	
	public ModelAndView insertPicture(Picture picture,MultipartFile image){
		
		ModelAndView mv = new ModelAndView();
		
		String filename = FileUpLoad.fileUpLoad(image);
		
		if(filename != null){
			
			picture.setPpicture(filename);
			
			System.out.println(picture + "............");
			
			pictureService.insertPicture(picture);
			
			ArrayList<Goods> list = new ArrayList<Goods>();
			
			Goods goods = goodsService.queryGoodsById(picture.getGid());
			
			goods = Common.setGoodsImage(goods);
			
			list.add(goods);
			
			mv.addObject("goods", list);
			
			mv.setViewName("admin_goodsList");
			
		}else{
			
			mv.setViewName("admin_error");
		}
		
		return mv;
		
	}
	
	
	
}
