package com.kt.test.service;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
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
	
	public Object insertList(String sqlMapId, Object dataList) {
		//장바구니 구매 리스트를 받아서 처리할 service.
		
		List<Object> result = new ArrayList<>();
		List<Object> buy_list = new ArrayList();
		Map<String, Object> insertMap = new HashMap<>();
		
		for(Map<String, Object> buy_map : (List<Map>)dataList) {
			
			System.out.println("장바구니 목록 : " + buy_map.get("BUY_NUM"));
			
			//1. ck_buy='0'으로 만들어줌
			int resultnum1 = (Integer)dao.updateObject("cart.update", buy_map);
			
			//2. ck_buy='0'으로 변경되었으니 변경된 애들을 '구매목록 테이블'로 이동
			//먼저 넣어줄 값들을 select 한다 (MAP 생성)
			
			insertMap = (Map)dao.getObject("cart.read", buy_map);
			
			
			//가져온 값들(insertMap)을 이제 실제로 insert해준다(구매 테이블에)
			insertMap.put("PAY_NUM", util.getUniqueSequence());
			int resultnum2 = (Integer)dao.buyObject("cart.buy_insert", insertMap);
			
			//구매 결과를 보여주기 위한 list에 add
			buy_list.add(insertMap);			
			

			
		}
		
		System.out.println("buy_list : " + buy_list.toString());
		


		return buy_list;

	}
	
	public Object selectBuyList(String sqlMapId, Object dataMap) {
		//모든 구매 목록을 return 받는 result
		((Map)dataMap).put("ID", util.getName());
		Object result = (List)dao.selectBuyList("cart.buy_all", dataMap);
		System.out.println("가져온 list :" + result.toString());
		return result;
	}

}
