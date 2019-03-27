package com.neusoft.util;

import java.util.Comparator;

import com.neusoft.pojo.Goods;

public class SortPriceByAsc implements Comparator<Goods>{

	@Override
	public int compare(Goods o1, Goods o2) {
		
		if(o1.getGmoney() > o2.getGmoney()){
			
			return 1;
		}else{
			
			return -1;
		}
	}

}
