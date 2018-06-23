package com.kt.test.service;

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
}
