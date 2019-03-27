package com.neusoft.dao;

import java.util.ArrayList;
import java.util.HashMap;

import com.neusoft.pojo.Goods;

public interface GoodsMapper {
	
	//根据商品id查询单种商品
	
	public Goods queryGoodsById(Integer gid);
	
	//查询所有商品
	
	public ArrayList<Goods> queryGoods(Goods g);
	
	//分页查询商品
	public ArrayList<Goods> queryGoodsPagination(HashMap<String, Object> maps);
	
	//增加商品
	
	public void addGoods(Goods g);
	
	//修改商品
	
	public void updateGoods(Goods g);
	
	//删除商品
	
	public void deleteGoods(Integer gid);
	
	//模糊查询商品
	
	public ArrayList<Goods> queryLikesGoods(String dec);
	
	//根据种类查询商品
	
	public ArrayList<Goods> queryKindsGoods(String gkinds);

}
