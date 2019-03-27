package com.neusoft.controller;

import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.neusoft.pojo.Car;
import com.neusoft.pojo.Connect;
import com.neusoft.pojo.Goods;
import com.neusoft.pojo.Ordering;
import com.neusoft.pojo.User;
import com.neusoft.service.CarService;
import com.neusoft.service.ConnectService;
import com.neusoft.service.GoodsService;
import com.neusoft.service.OrderingService;
import com.neusoft.service.UserService;
import com.neusoft.util.Common;

@Controller
@RequestMapping("/order")
public class OrderingController {

	@Autowired
	private OrderingService orderingService;
	
	@Autowired
	private CarService carService;
	
	@Autowired
	private UserService userService;
	
	@Autowired
	private ConnectService connectService;
	
	@Autowired
	private GoodsService goodsService;
	
	@RequestMapping("/queryOrdering")
	//��ѯ�����û�����
	public ModelAndView queryOrdering(HttpSession session,Ordering ordering){
		
		ModelAndView mv = new ModelAndView();
		
		String login_id = (String) session.getAttribute("account");
		
		ordering.setLogin_id(login_id);
		
		ArrayList<Ordering> list = orderingService.queryOrdering(ordering);
		
		for (Ordering orderings : list) {
			
			orderings.setConnects(Common.setListConPicture(orderings.getConnects()));
		}
		
		mv.addObject("orders", list);
		
		mv.setViewName("personCenter6");
		
		return mv;
	}
	
	@RequestMapping("/queryOrderingByAdmin")
	//����Ա��ѯ����
	public ModelAndView queryOrderingByAdmin(Ordering ordering){
		
		ModelAndView mv = new ModelAndView();
		
		ArrayList<Ordering> list = new ArrayList<Ordering>();
		
		list = orderingService.queryOrdering(ordering);
		
		for (Ordering orderings : list) {
			
			orderings.setConnects(Common.setListConPicture(orderings.getConnects()));
			
		}
		
		mv.addObject("orders", list);
		
		mv.setViewName("admin_orderingList");
		
		return mv;
	}
	
	@RequestMapping("/queryOrderingByDate")
	//�������ڲ�ѯ����
	public Ordering queryOrderingByDate(String date){
		
		Ordering ordering = orderingService.queryOrderingByDate(date);
		
		return ordering;
	}
	
	@RequestMapping("/insertOrdering")
	//���붩������������������
	public ModelAndView insertOrdering(HttpSession session){
		
		ModelAndView mv = new ModelAndView();
		
		String login_id = (String) session.getAttribute("account");
		
		ArrayList<Car> cars = carService.queryCar(login_id);
		
		User user = userService.queryUserById(login_id);
		
		Double needMoney = 0.0;
		
		for (Car car : cars) {
			
			needMoney += car.getG_number() * car.getGoods().getGmoney();
		}
		
		if(cars.size() == 0){
			
			mv.addObject("numbererror", "���ﳵΪ�գ���ȥѡ���������������ɣ�");
			
			mv.setViewName("checkout");
			
		}else if(user.getClient_tel() == null || user.getClient_address() == null){
			
			mv.addObject("locationerror", "����������ϵ��ʽ���ջ���ַ");
			
			mv.setViewName("checkout");
			
		}else if(needMoney > user.getClient_money()){
			
			mv.setViewName("failures");
			
		}else {
			
			SimpleDateFormat df = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
			
			String date = df.format(new Date());
			
			Ordering ordering = new Ordering();
			
			ordering.setLogin_id(login_id);
			
			ordering.setDd_money(needMoney);
			
			ordering.setDd_date(date);
			
			//�򶩵����в��붩�������ɶ���
			
			orderingService.addOrdering(ordering);
			
			Ordering orderings = queryOrderingByDate(date);
			
			//�򶩵�����Ʒ��ϵ�ı��в�����ϵ
			for (Car car : cars) {
				
				Connect connect = new Connect();
				
				connect.setCount(car.getG_number());
				
				connect.setDd_id(orderings.getDd_id());
				
				connect.setGid(car.getGid());
				
				connect.setGname(car.getGoods().getGname());
				
				connect.setGpicture(car.getGoods().getGpicture());
				
				connectService.addConnect(connect);
				
				//�޸���Ʒʣ������
				
				Goods goodss = goodsService.queryGoodsById(car.getGid());
				
				goodss.setGnumber(goodss.getGnumber() - car.getG_number());
				
				goodsService.updateGoods(goodss);
				
			}
			
			//ɾ�����ﳵ���е���Ʒ
			
			carService.deleteAllCar(login_id);
			
			//�޸Ĺ˿ͽ��
			
			Double remoney = user.getClient_money() - needMoney;
			
			user.setClient_money(remoney);
			
			userService.updateUser(user);
			
			
			mv.setViewName("successfully");
		}
		
		
		return mv;
	}
	
	
}
