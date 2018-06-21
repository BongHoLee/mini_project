package com.kt.test.service;

import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.kt.test.dao.ProductDao;
import com.kt.test.util.CommonUtil;

@Service
public class ProductService {
	
	@Autowired
	private ProductDao dao;
	
	@Autowired
	private CommonUtil util;
	
	
	public Object getList(String sqlMapId, Object dataMap) {
		return dao.getList(sqlMapId, dataMap);
	}
	
	public Object insertObject(String sqlMapId, Object dataMap) {
		Object result = null;
		((Map)dataMap).put("PROD_NUM", util.getUniqueSequence());
		int insertResult = (Integer)dao.insertObject("product.insert", dataMap);
		if(insertResult != 0) {
			//제대로 삽입이 완료 되었을시
			result = dao.getObject("product.read", dataMap);
			
		}
		//데이터 삽입이 제대로 이루어지지 않았을시 null을 반환함.
		return result;
	}
	
	public Object getObject(String sqlMapId, Object dataMap) {
		return dao.getObject(sqlMapId, dataMap);
	}
}
