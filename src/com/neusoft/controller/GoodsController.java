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

	//ע����Ʒ��Ϣ��ѯ����
	@Autowired
	private GoodsService goodsService;
	
	//ע����Ʒ����ͼƬ��ѯ����
	@Autowired
	private PictureService pictureService;
	
	//ע����Ʒ���۲�ѯ����
	@Autowired
	private ReviewService reviewService;
	
	@RequestMapping("/queryGoods")
	//��ѯ������Ʒ
	public ModelAndView queryGoods(Goods g,Integer page){
		
		ModelAndView mv = new ModelAndView();
		
		//��ʼ��ҳ��
		Integer pagenow = 1;
		
		//��õ�ǰҳ��
		if(page == null || page == 0){
			
			pagenow = 1;
			
		}else{
			
			pagenow = page;
		}
		
		Page p = new Page();
		
		//����ÿһҳ���ٸ���Ʒ
		p.setPageCount(10);
		
		//������Ҫ��ʲô�ط���ʼ��ѯ��Ʒ
		p.setStartIndex((pagenow - 1) * 10);
		
		ArrayList<Goods> list = goodsService.queryGoods(g,p);
		
		Integer number = list.size();
		
		//�ֱ����õ�һҳ�����һҳ��β���
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
	//����id��ѯ��Ʒ��Ϣ
	public ModelAndView queryGoodsByIds(Integer gid){
		
		ModelAndView mv = new ModelAndView();
		
		Goods goods = goodsService.queryGoodsById(gid);
		
		
		mv.addObject("goods", goods);
		
		mv.setViewName("admin_goodsUpdate");
		
		return mv;
	}
	
	@RequestMapping("/queryGoodsById")
	//����id��ѯ��Ʒ��Ϣ
	public ModelAndView queryGoodsById(Integer gid){
		
		ModelAndView mv = new ModelAndView();
		
		Goods goods = goodsService.queryGoodsById(gid);
		
		if(goods == null){
			
			mv.addObject("errorId", "����Ʒ���¼ܣ�����������İ�");
			
			mv = queryKindsGoods("����");
			
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
	//������Ʒ
	public ModelAndView reviewGoods(Integer gid){
		
		ModelAndView mv = new ModelAndView();
		
		Goods goods = goodsService.queryGoodsById(gid);
		
		if(goods == null){
			
			mv.addObject("errorId", "����Ʒ���¼ܣ�����������İ�");
			
			mv = queryKindsGoods("����");
			
		}else{
	
		mv.addObject("goods", Common.setGoodsImage(goods));
		
		mv.setViewName("review");
			
		}
		
		return mv;
	}
	
	@RequestMapping("/queryLikesGoods")
	//ģ����ѯ��Ʒ
	public ModelAndView queryLikesGoods(String dec){
		
		ModelAndView mv = new ModelAndView();
		
		System.out.println(dec + ".................");
		
		ArrayList<Goods> list = goodsService.queryLikesGoods(dec);
		
		if(list.size() == 0){
			
			list = goodsService.queryKindsGoods("����");
		}
		
		String gk = list.get(0).getGkinds();
		
		mv.addObject("goods", Common.setListImage(list));
		
		mv.addObject("gk", gk);
		
		mv.setViewName("products");
		
		return mv;
	}
	
	@RequestMapping("/queryKindsGoods")
	//���������ѯ��Ʒ
	public ModelAndView queryKindsGoods(String gkinds){
		
		ModelAndView mv = new ModelAndView();
		
		ArrayList<Goods> list = goodsService.queryKindsGoods(gkinds);
		
		mv.addObject("goods", Common.setListImage(list));
		
		mv.addObject("gk", gkinds);
		
		mv.setViewName("products");
		
		return mv;
	}
	
	@RequestMapping("/queryGoodsByPrice")
	//���۸�����������ѯ��Ʒ
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
	//����Ա������Ʒ
	public ModelAndView addGoods(Goods goods,MultipartFile image){
		
		ModelAndView mv = new ModelAndView();
		
		//�ϴ�ͼƬ�����ͼƬ·����
		
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
	//ɾ����Ʒ
	public ModelAndView deleteGoods(Integer gid,Goods goods){
		
		ModelAndView mv = new ModelAndView();
		
		goodsService.deleteGoods(gid);
		
		pictureService.deletePicture(gid);
		
		goods.setGid(null);
		
		mv = queryGoods(goods,0);
		
		return mv;
	}
	
	@RequestMapping("/updateGoodsById")
	//����Աͨ����Ʒid�������ҳ��
	public ModelAndView updateGoodsById(Integer gid){
		
		ModelAndView mv = new ModelAndView();
		
		Goods goods = goodsService.queryGoodsById(gid);
		
		mv.addObject("goods", Common.setGoodsImage(goods));
		
		mv.setViewName("admin_goodsUpdate");
		
		return mv;
	}
	
	@RequestMapping("/updateGoods")
	//������Ʒ��Ϣ
	public ModelAndView updateGoods(Goods goods){
		
		goodsService.updateGoods(goods);
		
		ModelAndView mv = new ModelAndView();
		
		mv = queryGoods(goods,0);
		
		return mv;
	}
	
}
