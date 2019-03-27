package com.neusoft.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.neusoft.dao.ConnectMapper;
import com.neusoft.pojo.Connect;

@Service
public class ConnectService {
	
	@Autowired
	private ConnectMapper connectMapper;
	
	public void addConnect(Connect connect){
		
		connectMapper.addConnect(connect);
	}
}
