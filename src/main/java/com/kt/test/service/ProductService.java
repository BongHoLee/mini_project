package com.kt.test.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.kt.test.dao.ProductDao;

@Service
public class ProductService {
	
	@Autowired
	private ProductDao dao;
	public Object getList(String sqlMapId, Object dataMap) {
		return dao.getList(sqlMapId, dataMap);
	}
}
