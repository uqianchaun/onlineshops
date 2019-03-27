package com.neusoft.dao;

import java.util.ArrayList;

import com.neusoft.pojo.User;

public interface UserMapper {
	
	//增加用户
	public void addUser(User user);
	
	//删除用户
	public void deleteUser(String login_id);
	
	//更新用户
	public void updateUser(User user);
	
	//根据用户id查询用户
	public User queryUserById(String login_id);
	
	//查询所有用户
	public ArrayList<User> queryUsers(User user);

	//按昵称查询用户
	public User queryUserByRename(String rename);

}
