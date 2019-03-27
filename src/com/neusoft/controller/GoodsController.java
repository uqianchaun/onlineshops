package com.neusoft.controller;

import java.util.ArrayList;
import java.util.Collections;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;

import com.neusoft.pojo.Goods;
import com.neusoft.pojo.Page;
import com.neusoft.pojo.Picture;
import com.neusoft.pojo.Review;
import com.neusoft.service.GoodsService;
import com.neusoft.service.PictureService;
import com.neusoft.service.ReviewService;
import com.neusoft.util.Common;
import com.neusoft.util.FileUpLoad;
import com.neusoft.util.SortPriceByAsc;
import com.neusoft.util.SortPriceByDes;

@Controller
@RequestMapping("/goods")
public class GoodsController {

	//注入商品信息查询服务
	@Autowired
	private GoodsService goodsService;
	
	//注入商品描述图片查询服务
	@Autowired
	private PictureService pictureService;
	
	//注入商品评论查询服务
	@Autowired
	private ReviewService reviewService;
	
	@RequestMapping("/queryGoods")
	//查询所有商品
	public ModelAndView queryGoods(Goods g,Integer page){
		
		ModelAndView mv = new ModelAndView();
		
		//初始化页数
		Integer pagenow = 1;
		
		//获得当前页数
		if(page == null || page == 0){
			
			pagenow = 1;
			
		}else{
			
			pagenow = page;
		}
		
		Page p = new Page();
		
		//设置每一页多少个商品
		p.setPageCount(10);
		
		//设置需要从什么地方开始查询商品
		p.setStartIndex((pagenow - 1) * 10);
		
		ArrayList<Goods> list = goodsService.queryGoods(g,p);
		
		Integer number = list.size();
		
		//分别设置第一页和最后一页如何操作
		if(number == 0){
			
			pagenow = pagenow - 1;
			
			if(pagenow == 0){
				
				pagenow = 1;
			}
			
			p.setStartIndex((pagenow - 1 ) * 10);
			
			ArrayList<Goods> list1 = goodsService.queryGoods(g,p);
			
			mv.addObject("goods", Common.setListImage(list1));
			
		}else{
			
			mv.addObject("goods", Common.setListImage(list));
		}
		
		mv.addObject("pagenow", pagenow);
		
		mv.addObject("gs", g);
		
		mv.setViewName("admin_goodsList");
		
		return mv;
	}
	
	@RequestMapping("/queryGoodsByIds")
	//根据id查询商品信息
	public ModelAndView queryGoodsByIds(Integer gid){
		
		ModelAndView mv = new ModelAndView();
		
		Goods goods = goodsService.queryGoodsById(gid);
		
		
		mv.addObject("goods", goods);
		
		mv.setViewName("admin_goodsUpdate");
		
		return mv;
	}
	
	@RequestMapping("/queryGoodsById")
	//根据id查询商品信息
	public ModelAndView queryGoodsById(Integer gid){
		
		ModelAndView mv = new ModelAndView();
		
		Goods goods = goodsService.queryGoodsById(gid);
		
		if(goods == null){
			
			mv.addObject("errorId", "该商品已下架，快来看看别的吧");
			
			mv = queryKindsGoods("上衣");
			
		}else{
		
		ArrayList<Picture> list = pictureService.queryPictures(gid);
		
		String gidd = "" + gid;
		
		ArrayList<Review> relist = reviewService.queryReviews(gidd);
		
		mv.addObject("reviews", relist);
		
		mv.addObject("pictures", Common.setListPictures(list));
		
		mv.addObject("goods", Common.setGoodsImage(goods));
		
		
		
			mv.setViewName("single");
			
		}
		
		return mv;
	}
	
	@RequestMapping("/reviewGoods")
	//评论商品
	public ModelAndView reviewGoods(Integer gid){
		
		ModelAndView mv = new ModelAndView();
		
		Goods goods = goodsService.queryGoodsById(gid);
		
		if(goods == null){
			
			mv.addObject("errorId", "该商品已下架，快来看看别的吧");
			
			mv = queryKindsGoods("上衣");
			
		}else{
	
		mv.addObject("goods", Common.setGoodsImage(goods));
		
		mv.setViewName("review");
			
		}
		
		return mv;
	}
	
	@RequestMapping("/queryLikesGoods")
	//模糊查询商品
	public ModelAndView queryLikesGoods(String dec){
		
		ModelAndView mv = new ModelAndView();
		
		System.out.println(dec + ".................");
		
		ArrayList<Goods> list = goodsService.queryLikesGoods(dec);
		
		if(list.size() == 0){
			
			list = goodsService.queryKindsGoods("上衣");
		}
		
		String gk = list.get(0).getGkinds();
		
		mv.addObject("goods", Common.setListImage(list));
		
		mv.addObject("gk", gk);
		
		mv.setViewName("products");
		
		return mv;
	}
	
	@RequestMapping("/queryKindsGoods")
	//根据种类查询商品
	public ModelAndView queryKindsGoods(String gkinds){
		
		ModelAndView mv = new ModelAndView();
		
		ArrayList<Goods> list = goodsService.queryKindsGoods(gkinds);
		
		mv.addObject("goods", Common.setListImage(list));
		
		mv.addObject("gk", gkinds);
		
		mv.setViewName("products");
		
		return mv;
	}
	
	@RequestMapping("/queryGoodsByPrice")
	//按价格升序降序来查询商品
	public ModelAndView queryGoodsByPrice(String gkinds,Integer flag){
		
		ModelAndView mv = new ModelAndView();
		
		ArrayList<Goods> list = goodsService.queryKindsGoods(gkinds);
		
		if(flag == 1){
			
			Collections.sort(list, new SortPriceByAsc());
			
			
		}else if(flag == 2){
			
			Collections.sort(list, new SortPriceByDes());
			
			
		}
		
		mv.addObject("goods", Common.setListImage(list));
		
		mv.addObject("gk", gkinds);
		
		mv.setViewName("products");
		
		return mv;
	}
	
	@RequestMapping("/addGoods")
	//管理员增加商品
	public ModelAndView addGoods(Goods goods,MultipartFile image){
		
		ModelAndView mv = new ModelAndView();
		
		//上传图片，获得图片路径名
		
		String filename = FileUpLoad.fileUpLoad(image);
		
		System.out.println(filename + "..................");
		
		if(filename != null){
			
			goods.setGpicture(filename);
			
			goodsService.addGoods(goods);
			
			mv = queryGoods(goods,0);
			
		}else{
			
			mv.setViewName("admin_error");
			
		}
		
		return mv;
	}
	
	@RequestMapping("/deleteGoods")
	//删除商品
	public ModelAndView deleteGoods(Integer gid,Goods goods){
		
		ModelAndView mv = new ModelAndView();
		
		goodsService.deleteGoods(gid);
		
		pictureService.deletePicture(gid);
		
		goods.setGid(null);
		
		mv = queryGoods(goods,0);
		
		return mv;
	}
	
	@RequestMapping("/updateGoodsById")
	//管理员通过商品id进入更新页面
	public ModelAndView updateGoodsById(Integer gid){
		
		ModelAndView mv = new ModelAndView();
		
		Goods goods = goodsService.queryGoodsById(gid);
		
		mv.addObject("goods", Common.setGoodsImage(goods));
		
		mv.setViewName("admin_goodsUpdate");
		
		return mv;
	}
	
	@RequestMapping("/updateGoods")
	//更新商品信息
	public ModelAndView updateGoods(Goods goods){
		
		goodsService.updateGoods(goods);
		
		ModelAndView mv = new ModelAndView();
		
		mv = queryGoods(goods,0);
		
		return mv;
	}
	
}
