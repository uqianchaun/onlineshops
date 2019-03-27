package com.neusoft.service;

import java.util.ArrayList;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.neusoft.dao.UserMapper;
import com.neusoft.pojo.User;

//����ע�⣬��ʶ�����
@Service
public class UserService {
	
	//ע��dao���Mapper
	@Autowired
	private UserMapper userMapper;
	
	public User queryUserById(String login_id){
		
		System.out.println("�����..........");
		
		return userMapper.queryUserById(login_id);
		
	}
	
	public void addUser(User user){
		
		userMapper.addUser(user);
		
		
	}

	public void deleteUser(String login_id) {
		
		userMapper.deleteUser(login_id);
		
	}

	public void updateUser(User user) {
		
		userMapper.updateUser(user);
		
	}

	public ArrayList<User> queryUsers(User user) {
		
		return userMapper.queryUsers(user);
	
	}

	public User queryUserByRename(String rename) {
		
		return userMapper.queryUserByRename(rename);
	}


}
