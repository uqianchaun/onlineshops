package com.neusoft.util;

import java.util.ArrayList;

import com.neusoft.pojo.Connect;
import com.neusoft.pojo.Goods;
import com.neusoft.pojo.Picture;

//处理图片路径
public class Common {

	//从数据库中获得图片路径名称，切割图片路径，获取图片原名称
	public static String setImagePath(String gpicture){
		
		String[] paths = gpicture.split("\\\\");
		
		return paths[paths.length - 1];
		
	}
	
	//设置商品图片属性
	public static Goods setGoodsImage(Goods goods){
		
		goods.setGpicture(setImagePath(goods.getGpicture()));
		
		return goods;
	}
	
	//批量改变图片名称
	public static ArrayList<Goods> setListImage(ArrayList<Goods> list){
		
		for (Goods goods : list) {
			
			setGoodsImage(goods);
		}
		
		return list;
	}
	
	//每个商品的图片描述
	public static Picture setPictureImage(Picture picture){
		
		picture.setPpicture(setImagePath(picture.getPpicture()));
		
		return picture;
	}
	
	//批量设置描述图片
	public static ArrayList<Picture> setListPictures(ArrayList<Picture> list){
		
		for (Picture picture : list) {
			
			setPictureImage(picture);
		}
		
		return list;
	}
	
	//设置订单连接图片显示
	public static Connect setConPicture(Connect connect){
		
		connect.setGpicture(Common.setImagePath(connect.getGpicture()));
		
		return connect;
	}
	
	//批量设置连接图片
	
	public static ArrayList<Connect> setListConPicture(ArrayList<Connect> list){
		
		for (Connect connect : list) {
			
			connect = Common.setConPicture(connect);
		}
		
		return list;
	}
}
