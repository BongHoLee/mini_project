package com.kt.test.dao;
import java.util.HashMap;
import java.util.Map;

import org.springframework.stereotype.Repository;

@Repository
public class SignupDao {
	public Object getObject(Object dataMap) {
		Map<String, Object> resultObject = new HashMap<String, Object>();
		resultObject.put("ID", "293029301202");
		resultObject.put("NAME", "name 02");
		resultObject.put("TEL", "010-9054-1966");
		resultObject.put("EMAIL", "whiteout9966@naver.com");
		return resultObject;
	}
	
//	public Object getList(Object dataMap) {
//		List<Object> resultObject = new ArrayList<Object>();
//		Map<String, Object> data01 = new HashMap<String, Object>();
//		Map<String, Object> data02 = new HashMap<String, Object>();
//		Map<String, Object> data03 = new HashMap<String, Object>();
//		
//		data01.put("MEMBER_ID", "103029301202");
//		data01.put("NAME", "name 01");
//		data01.put("CELLPHONE", "010-0000-0000");
//		data01.put("EMAIL", "email 01");
//		resultObject.add(data01);
//		
//		data02.put("MEMBER_ID", "103029301202");
//		data02.put("NAME", "name 02");
//		data02.put("CELLPHONE", "010-0000-0000");
//		data02.put("EMAIL", "email 02");
//		resultObject.add(data02);
//		
//		data03.put("MEMBER_ID", "103029301202");
//		data03.put("NAME", "name 03");
//		data03.put("CELLPHONE", "010-0000-0000");
//		data03.put("EMAIL", "email 03");
//		resultObject.add(data03);
//		
//		return resultObject;
//	}
}
