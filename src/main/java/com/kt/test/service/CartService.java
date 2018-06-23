package com.kt.test.service;

import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.kt.test.dao.CartDao;
import com.kt.test.util.CommonUtil;

@Service
public class CartService {
	
	@Autowired
	private CartDao dao;
	
	@Autowired
	private CommonUtil util;
	
	public Object getList(String sqlMapId, Object dataMap) {
		return dao.getList(sqlMapId, dataMap);
	}
	
	public Object insertObject(String sqlMapId, Object dataMap) {
		//장바구니 추가시 '구매번호' 부분을 삽입
		((Map)dataMap).put("BUY_NUM", util.getUniqueSequence());
		return dao.insertObject(sqlMapId, dataMap);
	}
	
	public Object deleteObject(String sqlMapId, Object dataMap) {
		return dao.deleteObject(sqlMapId, dataMap);
	}

}
