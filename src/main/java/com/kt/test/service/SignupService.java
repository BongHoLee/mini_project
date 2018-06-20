package com.kt.test.service;

import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.kt.test.dao.SignupDao;

@Service
public class SignupService {

	@Autowired
	private SignupDao signupdao;
	public Object getObject(String sqlMapId, Object dataMap) {
		
		//SELECT를 통해서 ID 중복여부 확인
		Object result;
		Map<String, Object> selectObject = (Map)signupdao.getObject("member.check",dataMap);
		if(selectObject == null) {
			//아이디 중복이 아닐시
			//삽입
			result = signupdao.insertObject("member.insert", dataMap);
		}else {
			//아이디 중복일시
			
			result = 0;
		}
		
		//아이디 중복일시 result는 0
		//아이디 정상 삽입일시 result는 1
			return result;
	}
	

}
