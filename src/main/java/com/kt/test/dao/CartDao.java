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
	
	public Object getObject(String sqlMapId, Object dataMap) {
		return sqlSession.selectOne(sqlMapId, dataMap);
	}
	
	public Object insertObject(String sqlMapId, Object dataMap) {
		return sqlSession.insert(sqlMapId, dataMap);
	}
	
	public Object deleteObject(String sqlMapId, Object dataMap) {
		return sqlSession.delete(sqlMapId, dataMap);
	}
	
	public Object updateObject(String sqlMapId, Object dataMap) {
		//장바구니 목록 하나하나를 받아서 update 시켜준다(ck_buy=0)
		return sqlSession.update(sqlMapId, dataMap);
	}
	
	public Object buyObject(String sqlMapId, Object dataMap) {
		//구매 목록 하나하나를 받아서 구매 테이블에 삽입해준다.
		
		return sqlSession.insert(sqlMapId, dataMap);
	}
	
	public Object selectBuyList(String sqlMapId, Object dataMap) {
		//구매 테이블에서 buy_num에 해당하는 구매 내용을 가져온다.
		//PROD_NUM, BUY_NUM, PAY_NUM, BUY_DATE, PRICE
		
		return sqlSession.selectList(sqlMapId, dataMap);
	}
	
	

}
