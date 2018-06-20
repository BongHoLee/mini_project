package com.kt.test.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.kt.test.dao.CartDao;

@Service
public class CartService {
	
	@Autowired
	private CartDao dao;
	public Object getList(String sqlMapId, Object dataMap) {
		return dao.getList("SQL", dataMap);
	}

}
