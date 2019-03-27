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

		// 获取正确验证码

		String trueCaptcha = (String) session.getAttribute(Constants.KAPTCHA_SESSION_KEY);

		// 获取输入的验证码

		String inputCaptcha = captcha;

		// 判断验证码是否正确，忽略大小写

		if (trueCaptcha.toLowerCase().equals(inputCaptcha.toLowerCase())) {

			String login_id = user.getLogin_id();

			String password = user.getLogin_password();

			User u = userService.queryUserById(login_id);

			// 验证账号是否存在

			if (u == null) {

				mv.addObject("error10", "账号不存在");

				mv.setViewName("login");

				return mv;

				// 验证密码是否正确

			} else {
				
				String passwords = u.getLogin_password();
				
				if (!(password.equals(passwords))) {

				mv.addObject("error2", "密码错误");

				mv.setViewName("login");

				return mv;
			} else {

				// 登陆成功，记录用户信息

				session.setAttribute("account", u.getLogin_id());

				session.setAttribute("password", u.getLogin_password());

				session.setAttribute("rename", u.getClient_rename());

				// 判断用户权限，是否进入管理员系统入口还是用户浏览入口

				if (u.getRights() != 0) {

					mv.setViewName("index");

				} else {

					mv.setViewName("admin_index");
				}

				return mv;
			}
			}

		} else {

			mv.addObject("judgeerror", "验证码输入错误");

			mv.setViewName("login");

			return mv;
		}
	}
	
	//注销
	@RequestMapping("/cancel")
	
	public String cancel(HttpSession session){
		
		//情况session中的信息
		
		session.invalidate();
		
		return "login";
		
	}
	
	//注册账户
	@RequestMapping("/registered")
	
	public ModelAndView registered(User user){
		
		String login_id = user.getLogin_id();
		
		ModelAndView mv = new ModelAndView();
		
		User u = userService.queryUserById(login_id);
		
		if(u == null){
			
			user.setRights(1);
			
			user.setClient_money(0.0);
			
			userService.addUser(user);
			
			mv.addObject("success", "注册成功，快来登陆吧！");
			
			mv.setViewName("login");
			
			return mv;
			
		}else{
			
			mv.addObject("error", "此账号已存在");
			
			mv.setViewName("registered");
			
			return mv;
		}
		
		
	}

}
