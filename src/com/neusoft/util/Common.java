package com.neusoft.util;

import java.util.ArrayList;

import com.neusoft.pojo.Connect;
import com.neusoft.pojo.Goods;
import com.neusoft.pojo.Picture;

//����ͼƬ·��
public class Common {

	//�����ݿ��л��ͼƬ·�����ƣ��и�ͼƬ·������ȡͼƬԭ����
	public static String setImagePath(String gpicture){
		
		String[] paths = gpicture.split("\\\\");
		
		return paths[paths.length - 1];
		
	}
	
	//������ƷͼƬ����
	public static Goods setGoodsImage(Goods goods){
		
		goods.setGpicture(setImagePath(goods.getGpicture()));
		
		return goods;
	}
	
	//�����ı�ͼƬ����
	public static ArrayList<Goods> setListImage(ArrayList<Goods> list){
		
		for (Goods goods : list) {
			
			setGoodsImage(goods);
		}
		
		return list;
	}
	
	//ÿ����Ʒ��ͼƬ����
	public static Picture setPictureImage(Picture picture){
		
		picture.setPpicture(setImagePath(picture.getPpicture()));
		
		return picture;
	}
	
	//������������ͼƬ
	public static ArrayList<Picture> setListPictures(ArrayList<Picture> list){
		
		for (Picture picture : list) {
			
			setPictureImage(picture);
		}
		
		return list;
	}
	
	//���ö�������ͼƬ��ʾ
	public static Connect setConPicture(Connect connect){
		
		connect.setGpicture(Common.setImagePath(connect.getGpicture()));
		
		return connect;
	}
	
	//������������ͼƬ
	
	public static ArrayList<Connect> setListConPicture(ArrayList<Connect> list){
		
		for (Connect connect : list) {
			
			connect = Common.setConPicture(connect);
		}
		
		return list;
	}
}
