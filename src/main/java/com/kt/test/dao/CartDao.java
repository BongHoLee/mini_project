package com.kt.test.dao;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.stereotype.Repository;

@Repository
public class CartDao {
	//
	public Object getList(String sqlMapId, Object dataMap) {
		//Select 후 list에 담아서 return
		List<Object> resultList = new ArrayList<>();
		Map<String, Object> resultMap1 = new HashMap<>();
		Map<String, Object> resultMap2 = new HashMap<>();
		resultMap1.put("product_name", "NIKE");
		resultMap2.put("product_name", "ADDIDAS");
		resultMap1.put("product_price", "199,000");
		resultMap2.put("product_price", "299,000");
		resultList.add(resultMap1);
		resultList.add(resultMap2);
		return resultList;
	}

}
