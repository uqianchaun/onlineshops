package com.neusoft.service;

import java.util.ArrayList;
import java.util.HashMap;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.neusoft.dao.GoodsMapper;
import com.neusoft.pojo.Goods;
import com.neusoft.pojo.Page;

//�����
@Service
public class GoodsService {

	//ע������
	@Autowired
	private GoodsMapper goodsMapper;
	
	//��ѯ������Ʒ
	public ArrayList<Goods> queryGoods(Goods g, Page p){
		
		//ʹ��map���ϴ�����������
		HashMap<String, Object> maps = new HashMap<String,Object>();
		
		maps.put("goods", g);
		
		maps.put("page", p);
		
		return goodsMapper.queryGoodsPagination(maps);
	}
	
	//������Ʒid��ѯ��Ʒ
	public Goods queryGoodsById(Integer gid) {
		
		
		return goodsMapper.queryGoodsById(gid);
	}

	//ģ����ѯ��Ʒ
	public ArrayList<Goods> queryLikesGoods(String dec) {
		
		return goodsMapper.queryLikesGoods(dec);
	}

	//���������ѯ��Ʒ
	public ArrayList<Goods> queryKindsGoods(String gkinds) {
	
		return goodsMapper.queryKindsGoods(gkinds);
	}

	//������Ʒ
	public void addGoods(Goods goods) {
		
		goodsMapper.addGoods(goods);
		
	}

	//ɾ����Ʒ
	public void deleteGoods(Integer gid) {
		
		goodsMapper.deleteGoods(gid);
		
	}
	//������Ʒ��Ϣ
	public void updateGoods(Goods goods) {
	
		goodsMapper.updateGoods(goods);
		
	}
}
