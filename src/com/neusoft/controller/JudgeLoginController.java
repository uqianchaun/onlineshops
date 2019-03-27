package com.neusoft.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.google.code.kaptcha.Constants;
import com.neusoft.pojo.User;
import com.neusoft.service.UserService;

@Controller
@RequestMapping("/judge")
public class JudgeLoginController {

	@Autowired
	UserService userService;

	@RequestMapping("/login")

	public ModelAndView login(HttpSession session, HttpServletRequest request, User user, String captcha) {

		ModelAndView mv = new ModelAndView();

		// ��ȡ��ȷ��֤��

		String trueCaptcha = (String) session.getAttribute(Constants.KAPTCHA_SESSION_KEY);

		// ��ȡ�������֤��

		String inputCaptcha = captcha;

		// �ж���֤���Ƿ���ȷ�����Դ�Сд

		if (trueCaptcha.toLowerCase().equals(inputCaptcha.toLowerCase())) {

			String login_id = user.getLogin_id();

			String password = user.getLogin_password();

			User u = userService.queryUserById(login_id);

			// ��֤�˺��Ƿ����

			if (u == null) {

				mv.addObject("error10", "�˺Ų�����");

				mv.setViewName("login");

				return mv;

				// ��֤�����Ƿ���ȷ

			} else {
				
				String passwords = u.getLogin_password();
				
				if (!(password.equals(passwords))) {

				mv.addObject("error2", "�������");

				mv.setViewName("login");

				return mv;
			} else {

				// ��½�ɹ�����¼�û���Ϣ

				session.setAttribute("account", u.getLogin_id());

				session.setAttribute("password", u.getLogin_password());

				session.setAttribute("rename", u.getClient_rename());

				// �ж��û�Ȩ�ޣ��Ƿ�������Աϵͳ��ڻ����û�������

				if (u.getRights() != 0) {

					mv.setViewName("index");

				} else {

					mv.setViewName("admin_index");
				}

				return mv;
			}
			}

		} else {

			mv.addObject("judgeerror", "��֤���������");

			mv.setViewName("login");

			return mv;
		}
	}
	
	//ע��
	@RequestMapping("/cancel")
	
	public String cancel(HttpSession session){
		
		//���session�е���Ϣ
		
		session.invalidate();
		
		return "login";
		
	}
	
	//ע���˻�
	@RequestMapping("/registered")
	
	public ModelAndView registered(User user){
		
		String login_id = user.getLogin_id();
		
		ModelAndView mv = new ModelAndView();
		
		User u = userService.queryUserById(login_id);
		
		if(u == null){
			
			user.setRights(1);
			
			user.setClient_money(0.0);
			
			userService.addUser(user);
			
			mv.addObject("success", "ע��ɹ���������½�ɣ�");
			
			mv.setViewName("login");
			
			return mv;
			
		}else{
			
			mv.addObject("error", "���˺��Ѵ���");
			
			mv.setViewName("registered");
			
			return mv;
		}
		
		
	}

}
