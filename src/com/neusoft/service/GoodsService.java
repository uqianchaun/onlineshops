package com.neusoft.service;

import java.util.ArrayList;
import java.util.HashMap;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.neusoft.dao.GoodsMapper;
import com.neusoft.pojo.Goods;
import com.neusoft.pojo.Page;

//服务层
@Service
public class GoodsService {

	//注入依赖
	@Autowired
	private GoodsMapper goodsMapper;
	
	//查询所有商品
	public ArrayList<Goods> queryGoods(Goods g, Page p){
		
		//使用map集合传递两个对象
		HashMap<String, Object> maps = new HashMap<String,Object>();
		
		maps.put("goods", g);
		
		maps.put("page", p);
		
		return goodsMapper.queryGoodsPagination(maps);
	}
	
	//根据商品id查询商品
	public Goods queryGoodsById(Integer gid) {
		
		
		return goodsMapper.queryGoodsById(gid);
	}

	//模糊查询商品
	public ArrayList<Goods> queryLikesGoods(String dec) {
		
		return goodsMapper.queryLikesGoods(dec);
	}

	//根据种类查询商品
	public ArrayList<Goods> queryKindsGoods(String gkinds) {
	
		return goodsMapper.queryKindsGoods(gkinds);
	}

	//增加商品
	public void addGoods(Goods goods) {
		
		goodsMapper.addGoods(goods);
		
	}

	//删除商品
	public void deleteGoods(Integer gid) {
		
		goodsMapper.deleteGoods(gid);
		
	}
	//更新商品信息
	public void updateGoods(Goods goods) {
	
		goodsMapper.updateGoods(goods);
		
	}
}
