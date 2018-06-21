package com.kt.test.service;

import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.kt.test.dao.NoticeDao;

@Service
public class NoticeService {

	
	
	
	@Autowired
	private NoticeDao noticedao;
	
	
	
	public Object getObject(String sqlMapId, Object dataMap) {
		
		Object result;
		
		result = noticedao.insertObject("notice.insert", dataMap);
		
		
		return result;
	}
	public Object getList(Map<String, Object> paramMap) {
		
		Object result;
		
		result = noticedao.getList("notice.list", paramMap);
		
		return result;
	}
	
	public Object getRead(Map<String, Object> paramMap) {
		
		Object result;
		
		result = noticedao.getList("notice.read", paramMap);
		
		return result;
	}

}
