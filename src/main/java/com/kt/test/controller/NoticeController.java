package com.kt.test.controller;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.kt.test.service.NoticeService;
import com.kt.test.util.CommonUtil;


@Controller
@RequestMapping(value="/noticeView")
public class NoticeController {
	@Autowired
	private NoticeService service;
	
	@Autowired
	private CommonUtil util;
	
	@RequestMapping(value = "/{action}", method = {RequestMethod.GET, RequestMethod.POST})
	public ModelAndView actionMethod(@RequestParam Map<String, Object> paramMap, @PathVariable String action, ModelAndView mv) {
		String viewName = "/noticeView/";
		Map<String, Object> resultMap = new HashMap<String, Object>();
		List<Object> resultList = new ArrayList<Object>();
		//사용자의 권한을 확인함
		Map<String, Object> authMap = new HashMap<>();
		String auth = "";
		if(util.hasRole("ROLE_USER")) {
			auth = "USER";
		}else if(util.hasRole("ROLE_ADMIN")) {
			auth = "ADMIN";
		}else if(util.hasRole("ROLE_SYSTEM")) {
			auth = "SYSTEM";
		}
		authMap.put("ROLE", auth);
		mv.addObject("authMap", authMap);
		Object result = null;
		
		
		
		if("noticelist".equalsIgnoreCase(action)) {
			viewName = viewName + action;
			System.out.println("로그로그로그 : " + viewName);
			
			//DB에 있는 noticetable의 모든 데이터를 불러옴. 
			resultList = (List<Object>)service.getList(paramMap);
			mv.addObject("resultList", resultList);
			
		}else if("insert".equalsIgnoreCase(action)) {
			viewName = viewName + "noticelist";
			//resultList = (List<Object>)service.insertNotice(paramMap);
		
			//공지사항을 입력하면 데이터베이스에 추가됨
			result = service.getObject("sqlMapId", paramMap);
			resultList = (List<Object>)service.getRead(paramMap);
			
			mv.addObject("resultList", resultList);
			
		}else if("noticeinsert".equalsIgnoreCase(action)) {
			
			//글쓰기 하고 들어오는 페이지 
			viewName = viewName + action;
		
		}else if("noticeread".equalsIgnoreCase(action)) {
			
			//작성한 글을 보는 페이지로 
			viewName = viewName + action;
			
			resultList = (List<Object>)service.getRead(paramMap);
			mv.addObject("resultList", resultList);
			
	}else if("noticemodify".equalsIgnoreCase(action)) {
		
		//수정하는 페이지 
		viewName = viewName + "noticelist";
		
		
		//notice_num을 가지고 select하여 resultList로 화면 출력; 
		
		
		
		result = service.modifyObject("sqlMapID", paramMap);
		resultList = (List<Object>)service.getRead(paramMap);
		
		mv.addObject("resultList", resultList);
	}
		
		mv.setViewName(viewName);
		return mv;
	}
	

}
