package com.neusoft.dao;

import java.util.ArrayList;

import com.neusoft.pojo.User;

public interface UserMapper {
	
	//�����û�
	public void addUser(User user);
	
	//ɾ���û�
	public void deleteUser(String login_id);
	
	//�����û�
	public void updateUser(User user);
	
	//�����û�id��ѯ�û�
	public User queryUserById(String login_id);
	
	//��ѯ�����û�
	public ArrayList<User> queryUsers(User user);

	//���ǳƲ�ѯ�û�
	public User queryUserByRename(String rename);

}
