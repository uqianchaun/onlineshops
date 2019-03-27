package com.neusoft.service;

import java.util.ArrayList;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.neusoft.dao.PictureMapper;
import com.neusoft.pojo.Picture;

@Service
public class PictureService {

	@Autowired
	private PictureMapper pictureMapper;
	
	public ArrayList<Picture> queryPictures(Integer gid){
		
		return pictureMapper.queryPicture(gid);
	}

	public void insertPicture(Picture picture) {
		
		pictureMapper.insertPicture(picture);
		
	}

	public void deletePicture(Integer gid) {
		
		pictureMapper.deletePicture(gid);
		
	}
}
