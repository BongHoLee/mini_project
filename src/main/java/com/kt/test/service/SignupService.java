package com.kt.test.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.kt.test.dao.SignupDao;

@Service
public class SignupService {

	@Autowired
	private SignupDao signupdao;
	public Object getObject(Object dataMap) {
	/*	Map<String, Object> resultObject = new HashMap<String, Object>();
		resultObject = (Map<String, Object>)dataMap;*/
		
		/*resultObject.put("MEMBER_ID", "1234567489");
		resultObject.put("NAME", "������");
		resultObject.put("CELLPHONE", "010-9054-1966");
		resultObject.put("EMAIL", "whiteout9966@naver.com");*/
		Object resultObject = signupdao.getObject(dataMap);
	
		return resultObject;
	}
	
	/*public Object getList(Object dataMap) {
		Object resultObject = signupdao.getList(dataMap);
		
		return resultObject;
	}*/
}
