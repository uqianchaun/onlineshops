package com.neusoft.dao;

import java.util.ArrayList;
import java.util.HashMap;

import com.neusoft.pojo.Goods;

public interface GoodsMapper {
	
	//������Ʒid��ѯ������Ʒ
	
	public Goods queryGoodsById(Integer gid);
	
	//��ѯ������Ʒ
	
	public ArrayList<Goods> queryGoods(Goods g);
	
	//��ҳ��ѯ��Ʒ
	public ArrayList<Goods> queryGoodsPagination(HashMap<String, Object> maps);
	
	//������Ʒ
	
	public void addGoods(Goods g);
	
	//�޸���Ʒ
	
	public void updateGoods(Goods g);
	
	//ɾ����Ʒ
	
	public void deleteGoods(Integer gid);
	
	//ģ����ѯ��Ʒ
	
	public ArrayList<Goods> queryLikesGoods(String dec);
	
	//���������ѯ��Ʒ
	
	public ArrayList<Goods> queryKindsGoods(String gkinds);

}
