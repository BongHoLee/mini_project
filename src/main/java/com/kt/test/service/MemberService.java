package com.kt.test.service;

import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.kt.test.dao.MemberDao;

@Service
public class MemberService {
	@Autowired
	private MemberDao dao;
	
	public Object getObject(String sqlMapId, Object dataMap) {
		return dao.getObject(sqlMapId, dataMap);
	}
	
	public Object getList(String sqlMapId, Object dataMap) {
		return dao.getList(sqlMapId, dataMap);
	}
	
	public Object updateObject(String sqlMapId, Object dataMap) {
		//매니저 위임일경우(유저->매니저)
		//매니저 해임일경우 (매니저 -> 유저)
		Object result = null;
		if((((Map)dataMap).get("act")).equals("USER")) {
			//매니저 위임
			System.out.println("유저 아이디 : " + ((Map)dataMap).get("ID"));
			result =  dao.updateObject("member.updateUser", dataMap);
			
		}else if((((Map)dataMap).get("act")).equals("MANAGER")) {
			//매니저 해임
			System.out.println("유저 아이디 : " + ((Map)dataMap).get("ID"));
			result = dao.updateObject("member.updateManager", dataMap);
			
		}
		
		return result;
	}
}
