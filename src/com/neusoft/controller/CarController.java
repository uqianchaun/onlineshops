package com.neusoft.controller;

import java.util.ArrayList;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.neusoft.pojo.Car;
import com.neusoft.service.CarService;
import com.neusoft.util.Common;


@Controller
@RequestMapping("/car")
public class CarController {

	@Autowired
	private CarService carService;
	
	
	@RequestMapping("/queryCar")
	//查看购物车
	public ModelAndView queryCar(HttpSession session){
		
		ModelAndView mv = new ModelAndView();
		
		String login_id = (String) session.getAttribute("account");
		
		ArrayList<Car> list = carService.queryCar(login_id);
		
		for (Car car : list) {
			
			Common.setGoodsImage(car.getGoods());
			
		}
		
		if(list.size() == 0){
			
			mv.addObject("open", "购物车空空如也,快去选购吧!");
		}
			
		mv.addObject("cars", list);
		
		mv.setViewName("checkout");
		
		return mv;
				
	}
	
	@RequestMapping("/addCar")
	//加入商品到购物车中
	public ModelAndView addCar(HttpSession session,Car car){
		
		car.setLogin_id((String) session.getAttribute("account"));
			
		carService.addCar(car);
		
		ModelAndView mv = new ModelAndView();
		
		mv = queryCar(session);
		
		return mv;
	}
	
	@RequestMapping("/deleteCar")
	//删除购物车中的某件物品
	public ModelAndView deleteCar(HttpSession session,Integer float_number){
		
		ModelAndView mv = new ModelAndView();
		
		carService.deleteCar(float_number);
		
		mv = queryCar(session);
		
		return mv;
	}
	
	
}
