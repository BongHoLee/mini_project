package com.kt.test.dao;

import java.util.Map;

import javax.servlet.http.HttpSession;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.kt.test.util.CommonUtil;

@Repository
public class NoticeDao {

	@Autowired
	private SqlSessionTemplate sqlSession;
	
	@Autowired
	private CommonUtil utilDao;
	
	
	public Object getObject(String sqlMapId, Object dataMap) {
		Object result = sqlSession.selectOne(sqlMapId, dataMap);
		return result;
	}
	
	public Object getList(String sqlMapId, Object dataMap) {
		Object result = sqlSession.selectList(sqlMapId, dataMap);
		
		return result;
	}
	
	public Object insertObject(String sqlMapId, Object dataMap) {
		
		((Map)dataMap).put("NOTICE_NUM", utilDao.getUniqueSequence());
		Object result = sqlSession.insert(sqlMapId, dataMap);
		return result;
	}
	
	public Object deleteObject(String sqlMapId, Object dataMap) {
		Object result = sqlSession.delete(sqlMapId, dataMap);
		return result;
	}
	
	public Object modifyObject(String sqlMapId, Object dataMap) {
		Object result = sqlSession.update(sqlMapId, dataMap);
		return result;
	}
	
	

}
