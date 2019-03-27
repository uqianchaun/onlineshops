package com.neusoft.util;

import java.io.File;
import java.io.IOException;

import org.springframework.web.multipart.MultipartFile;



public class FileUpLoad {

	//商品图片上传至服务器以及图片路径写入数据库中
	public static String fileUpLoad(MultipartFile image){
		
		if(image != null){
			
			//获得图片原本名字
			String filename = image.getOriginalFilename();
			
			//判断传上来的是否是图片
			
			if(filename != null && filename.length() != 0){
				
				//获得图片名字的长度
				
				int index = filename.indexOf(".");
				
				//将当前时间的毫秒数插入到名字中，防止重复
				
				String refilename = filename.substring(0, index) + System.currentTimeMillis() + filename.substring(index);
				
				//设置图片路径
				
				String path = "D:\\Users\\zxkj\\Pictures\\shoppingimges\\";
						
				//上传图片		
				
				 File file = new File(path,refilename);
				 
				 try {
					 
					 //上传图片到指定位置
					image.transferTo(file);
					
					return path + refilename;
					
				} catch (IllegalStateException e) {
					
					// TODO Auto-generated catch block
					e.printStackTrace();
					
				} catch (IOException e) {
					
					// TODO Auto-generated catch block
					e.printStackTrace();
					
				}
				
			}
			
		}
		
		
		return null;
	}
}
