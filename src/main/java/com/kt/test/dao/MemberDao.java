package com.kt.test.dao;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository
public class MemberDao {
	@Autowired
	private SqlSessionTemplate sqlSession;
	
	public Object getObject(String sqlMapId, Object dataMap) {
		return sqlSession.selectOne(sqlMapId, dataMap);
	}
	
	public Object getList(String sqlMapId, Object dataMap) {
		return sqlSession.selectList(sqlMapId, dataMap);
	}
	
	public Object updateObject(String sqlMapId, Object dataMap) {
		return sqlSession.update(sqlMapId, dataMap);
	}
}
