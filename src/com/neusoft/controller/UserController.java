package com.neusoft.controller;

import java.util.ArrayList;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.neusoft.pojo.User;
import com.neusoft.service.UserService;

//�������Ʋ�
@Controller
@RequestMapping("/user")
public class UserController {
	
	//ע������
	@Autowired
	private UserService userService;
	
	@RequestMapping("/queryUserById")
	//��id��Ѱ�����û�
	public ModelAndView queryUserById(String login_id){
		
		System.out.println("���Ʋ�.........");
		
		User user = userService.queryUserById(login_id);
		
		ModelAndView mv = new ModelAndView();
		
		mv.addObject("user", user);
		
		mv.setViewName("show");
		
		return mv;
	}
	
	
	//ɾ���û�
	@RequestMapping("/deleteUser")
	
	public String deleteUser(String login_id){
		
		userService.deleteUser(login_id);
		
		return "success";
	}
	
	//�����û�
	@RequestMapping("/updateUser")
	
	public ModelAndView updateUser(HttpSession session,User user,Integer sign,String login_password2){
		
		String login_id = (String) session.getAttribute("account");
		
		ModelAndView mv = new ModelAndView();
		
		user.setLogin_id(login_id);
		
		if(sign == 1 || sign ==0){
			
			String password = (String) session.getAttribute("password");
			
			if(password.equals(login_password2)){
				
				userService.updateUser(user);
				
				session.invalidate();
				
				mv.setViewName("login");
				
				return mv;
				
			}else if(sign == 1){
				
				userService.queryUserById(login_id);
				
				mv.addObject("error1", "�������");
				
				mv.setViewName("personCenter5");
				
				return mv;
				
			}else{
				
				mv.addObject("error1", "�������");
				
				mv.setViewName("admin_password");
				
				return mv;
				
			}
			
		}else if(sign == 2 || sign == 4){
			
			userService.updateUser(user);
			
			user = userService.queryUserById(login_id);
			
			mv.addObject("user", user);
			
			mv.setViewName("personCenter2");
			
			return mv;
			
		}else if(sign == 3){
			
			Double money = user.getClient_money();
			
			if(money < 0){
				
				mv.addObject("failure", "���ֵ��ȷ���");
				
				user = userService.queryUserById(login_id);
				
				mv.addObject("user", user);
				
				mv.setViewName("personCenter3");
				
				return mv;
				
			}else{
				
				Double bemoney = userService.queryUserById(login_id).getClient_money();
				
				Double afmoney = bemoney + money;
				
				user.setClient_money(afmoney);
				
				userService.updateUser(user);
				
				user = userService.queryUserById(login_id);
				
				mv.addObject("user", user);
				
				mv.addObject("success", "��ֵ�ɹ���");
				
				mv.setViewName("personCenter3");
				
				return mv;
			}
			
		}else{
			
			session.invalidate();
			
			mv.setViewName("login");
			
			return mv;
		}
		
	}
	
	//����Ա��ѯ�û�
	@RequestMapping("queryUserByAdmin")
	public ModelAndView queryUserByAdmin(User user){
		
		ModelAndView mv = new ModelAndView();
		
		ArrayList<User> list = new ArrayList<User>();
		
		if(user.getLogin_id() != null && user.getLogin_id() != ""){
			
			User users = userService.queryUserById(user.getLogin_id());
			
			list.add(users);
			
		}else if(user.getClient_rename() != null && user.getClient_rename() != ""){
			
			User users = userService.queryUserByRename(user.getClient_rename());
			
			list.add(users);
			
		}else{
			
			list = userService.queryUsers(user);
			
		}
		
		mv.addObject("users", list);
		
		mv.setViewName("admin_userList");
		
		return mv;
		
	}
	
	//���ǳƲ�ѯ�û�
	@RequestMapping("/queryUserByRename")
	
	public User queryUserByRename(String rename){
		
		return userService.queryUserByRename(rename);
	}
	
	
	//��ѯ�����û�
	@RequestMapping("/queryUsers")
	
	public ModelAndView queryUser(User user){
		
		
		ArrayList<User> list = userService.queryUsers(user);
		
		ModelAndView mv = new ModelAndView();
		
		mv.addObject("users", list);
		
		mv.setViewName("admin_userList");
		
		return mv;
		
	}
	
	//�����������
	@RequestMapping("/personCenter")
	
	public ModelAndView personCenter(HttpSession session,Integer flag){
		
		String login_id = (String) session.getAttribute("account");
		
		User user = userService.queryUserById(login_id);
		
		ModelAndView mv = new ModelAndView();
		
		mv.addObject("user", user);
		
		switch (flag) {
		case 1:
			
			mv.setViewName("personCenter");
			
			break;
			
		case 2:
			
			mv.setViewName("personCenter2");
			
			break;
		case 3:
			
			mv.setViewName("personCenter3");
			
			break;
		case 4:
			
			mv.setViewName("personCenter4");
			
			break;
		case 5:
			
			mv.setViewName("personCenter5");
			
			break;
			
		default:
			
			mv.setViewName("login");
			
			break;
		}
		
		return mv;
	}
	
}
