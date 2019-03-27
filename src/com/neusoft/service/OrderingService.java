package com.neusoft.service;

import java.util.ArrayList;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.neusoft.dao.OrderingMapper;
import com.neusoft.pojo.Ordering;

@Service
public class OrderingService {

	@Autowired
	private OrderingMapper orderingMapper;
	
	public ArrayList<Ordering> queryOrdering(Ordering ordering){
		
		return orderingMapper.queryOrdering(ordering);
	}
	
	public void addOrdering(Ordering ordering){
		
		orderingMapper.addOrdering(ordering);
	}

	public Ordering queryOrderingByDate(String date) {
		
		Ordering ordering = orderingMapper.queryOrderingByDate(date);
		
		return ordering;
	}
}
