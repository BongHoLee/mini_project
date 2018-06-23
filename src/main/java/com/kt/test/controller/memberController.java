package com.kt.test.controller;


import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.kt.test.service.MemberService;
import com.kt.test.service.SignupService;
import com.kt.test.util.CommonUtil;

@Controller
@RequestMapping(value = "/memberView")
public class memberController {

	@Autowired
	private MemberService service;
	
	@Autowired
	private CommonUtil util;

	@RequestMapping(value = "/{action}", method = { RequestMethod.GET, RequestMethod.POST })
	public ModelAndView actionMethod(@RequestParam Map<String, Object> paramMap, @PathVariable String action,
			ModelAndView modelandView) {
		String viewName = "/memberView/";
		Map<String, Object> resultMap = new HashMap<String, Object>();
		//사용자의 권한을 확인함
		List<Object> resultList = new ArrayList<>();
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
		modelandView.addObject("authMap", authMap);
		
		//유저의 정보를 가져오기 위함(Bean에서 사용자 정보를 얻음)
		Object principal = SecurityContextHolder.getContext().getAuthentication().getPrincipal();
		UserDetails userDetails = (UserDetails)principal;
		String userName = userDetails.getUsername();
	
		if ("memberInfo".equalsIgnoreCase(action)) {
			
			//검색하려는 ID를 넣어준다.
			paramMap.put("ID", userName);
			resultMap = (Map)service.getObject("member.read", paramMap);
			viewName = viewName + action;
		}else if ("memberList".equalsIgnoreCase(action)) {
			resultList = (List)service.getList("member.list", paramMap);
			viewName = viewName + action;
		}else if("update".equalsIgnoreCase(action)) {
			int resultNum = (Integer)service.updateObject("sqlMapId", paramMap);
			if(resultNum == 1) {
				resultList = (List)service.getList("member.list", paramMap);
				viewName = viewName + "memberList";
			}
			
		}

		modelandView.setViewName(viewName);
		modelandView.addObject("resultList", resultList);
		modelandView.addObject("resultMap", resultMap);
		
		return modelandView;

	}

}
