package com.neusoft.dao;

import java.util.ArrayList;

import com.neusoft.pojo.Car;

public interface CarMapper {

	
	public ArrayList<Car> queryCar(String login_id);

	public void addCar(Car car);

	public void deleteCar(Integer float_number);

	public void deleteAllCar(String login_id);
	
	
}
