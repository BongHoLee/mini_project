package com.kt.test.dao;
import java.util.HashMap;
import java.util.Map;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository
public class SignupDao {
	
	@Autowired
	private SqlSessionTemplate sqlSession;
	public Object getObject(String sqlMapId, Object dataMap) {
		Object result = sqlSession.selectOne(sqlMapId, dataMap);
		
		return result;
	}
	
	public Object insertObject(String sqlMapId, Object dataMap) {
		Object result = sqlSession.insert(sqlMapId, dataMap);
		return result;
	}

}
