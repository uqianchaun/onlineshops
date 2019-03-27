package com.neusoft.intercepter;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.web.servlet.HandlerInterceptor;
import org.springframework.web.servlet.ModelAndView;

//拦截器定义
public class UserControllerIntercepter implements HandlerInterceptor{

	@Override
	public void afterCompletion(HttpServletRequest arg0, HttpServletResponse arg1, Object arg2, Exception arg3)
			throws Exception {
		// TODO Auto-generated method stub
		
	}

	@Override
	public void postHandle(HttpServletRequest arg0, HttpServletResponse arg1, Object arg2, ModelAndView arg3)
			throws Exception {
		// TODO Auto-generated method stub
		
	}

	//在进入之前拦截
	@Override
	public boolean preHandle(HttpServletRequest arg0, HttpServletResponse arg1, Object arg2) throws Exception {
		
		String path = arg0.getRequestURI();
		
		if(path.contains("login.action") || path.contains("registered") || path.contains("queryGoodsById.action")
				|| path.contains("queryLikesGoods.action") || path.contains("queryKindsGoods.action") || 
				path.contains("queryGoodsByPrice")){
			
			return true;
			
		}else {
			
			HttpSession session = arg0.getSession();
			
			if(session.getAttribute("account") != null){
				
				return true;
			}
			
			//用编码形式进行跳转
			
			arg0.setAttribute("error", "必须先登录");
			
			
			arg0.getRequestDispatcher("../jsp/login.jsp").forward(arg0, arg1);
			
			return false;
			
		}
		
	}

}
