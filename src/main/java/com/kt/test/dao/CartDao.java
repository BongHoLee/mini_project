package com.kt.test.dao;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository
public class CartDao {
	@Autowired
	private SqlSessionTemplate sqlSession;
	
	//
	public Object getList(String sqlMapId, Object dataMap) {
		//Select 후 list에 담아서 return
		
		return sqlSession.selectList(sqlMapId, dataMap);
	}
	
	public Object insertObject(String sqlMapId, Object dataMap) {
		return sqlSession.insert(sqlMapId, dataMap);
	}
	
	public Object deleteObject(String sqlMapId, Object dataMap) {
		return sqlSession.delete(sqlMapId, dataMap);
	}

}
