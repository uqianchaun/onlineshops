package com.neusoft.dao;

import java.util.ArrayList;

import com.neusoft.pojo.Ordering;

public interface OrderingMapper {

	public ArrayList<Ordering> queryOrdering(Ordering ordering);

	public void addOrdering(Ordering ordering);

	public Ordering queryOrderingByDate(String date);
}
