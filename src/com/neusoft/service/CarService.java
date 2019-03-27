package com.neusoft.service;

import java.util.ArrayList;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.neusoft.dao.CarMapper;
import com.neusoft.pojo.Car;

@Service
public class CarService {

	@Autowired
	private CarMapper carMapper;
	
	public ArrayList<Car> queryCar(String login_id){
		
		return carMapper.queryCar(login_id);
	}

	public void addCar(Car car) {
		
		carMapper.addCar(car);
	}

	public void deleteCar(Integer float_number) {
		
		carMapper.deleteCar(float_number);
		
	}
	
	public void deleteAllCar(String login_id){
		
		carMapper.deleteAllCar(login_id);
	}
}
