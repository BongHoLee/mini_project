package com.kt.test.dao;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository
public class ProductDao {
	@Autowired
	private SqlSessionTemplate sqlSession;
	public Object getList(String sqlMapId, Object dataMap) {
		return sqlSession.selectList(sqlMapId, dataMap);
		
	}
}
