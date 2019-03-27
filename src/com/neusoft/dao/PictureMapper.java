package com.neusoft.dao;

import java.util.ArrayList;

import com.neusoft.pojo.Picture;

public interface PictureMapper {
	
	public ArrayList<Picture> queryPicture(Integer gid);
	
	public void addPicture(Picture p);
	
	public void deletePicture(Picture p);

	public void insertPicture(Picture picture);

	public void deletePicture(Integer gid);

}
