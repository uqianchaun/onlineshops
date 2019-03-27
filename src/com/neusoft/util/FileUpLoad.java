package com.neusoft.util;

import java.io.File;
import java.io.IOException;

import org.springframework.web.multipart.MultipartFile;



public class FileUpLoad {

	//��ƷͼƬ�ϴ����������Լ�ͼƬ·��д�����ݿ���
	public static String fileUpLoad(MultipartFile image){
		
		if(image != null){
			
			//���ͼƬԭ������
			String filename = image.getOriginalFilename();
			
			//�жϴ��������Ƿ���ͼƬ
			
			if(filename != null && filename.length() != 0){
				
				//���ͼƬ���ֵĳ���
				
				int index = filename.indexOf(".");
				
				//����ǰʱ��ĺ��������뵽�����У���ֹ�ظ�
				
				String refilename = filename.substring(0, index) + System.currentTimeMillis() + filename.substring(index);
				
				//����ͼƬ·��
				
				String path = "D:\\Users\\zxkj\\Pictures\\shoppingimges\\";
						
				//�ϴ�ͼƬ		
				
				 File file = new File(path,refilename);
				 
				 try {
					 
					 //�ϴ�ͼƬ��ָ��λ��
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
