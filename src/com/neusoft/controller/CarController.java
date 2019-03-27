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
	//�鿴���ﳵ
	public ModelAndView queryCar(HttpSession session){
		
		ModelAndView mv = new ModelAndView();
		
		String login_id = (String) session.getAttribute("account");
		
		ArrayList<Car> list = carService.queryCar(login_id);
		
		for (Car car : list) {
			
			Common.setGoodsImage(car.getGoods());
			
		}
		
		if(list.size() == 0){
			
			mv.addObject("open", "���ﳵ�տ���Ҳ,��ȥѡ����!");
		}
			
		mv.addObject("cars", list);
		
		mv.setViewName("checkout");
		
		return mv;
				
	}
	
	@RequestMapping("/addCar")
	//������Ʒ�����ﳵ��
	public ModelAndView addCar(HttpSession session,Car car){
		
		car.setLogin_id((String) session.getAttribute("account"));
			
		carService.addCar(car);
		
		ModelAndView mv = new ModelAndView();
		
		mv = queryCar(session);
		
		return mv;
	}
	
	@RequestMapping("/deleteCar")
	//ɾ�����ﳵ�е�ĳ����Ʒ
	public ModelAndView deleteCar(HttpSession session,Integer float_number){
		
		ModelAndView mv = new ModelAndView();
		
		carService.deleteCar(float_number);
		
		mv = queryCar(session);
		
		return mv;
	}
	
	
}
