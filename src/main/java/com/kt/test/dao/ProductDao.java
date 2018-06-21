package com.kt.test.dao;

import java.util.Map;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.kt.test.util.CommonUtil;

@Repository
public class ProductDao {
	@Autowired
	private SqlSessionTemplate sqlSession;

	public Object getList(String sqlMapId, Object dataMap) {
		return sqlSession.selectList(sqlMapId, dataMap);
		
	}
	
	public Object insertObject(String sqlMapId, Object dataMap) {
		return sqlSession.insert(sqlMapId, dataMap);
	}
	
	public Object getObject(String sqlMapId, Object dataMap) {
		return sqlSession.selectOne(sqlMapId, dataMap);
	}
}
