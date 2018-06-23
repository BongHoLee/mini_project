package com.kt.test.controller;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.kt.test.service.SignupService;
import com.kt.test.util.CommonUtil;

@Controller
@RequestMapping(value = "/signupView")
public class SignupController {

	@Autowired
	private SignupService signupService;

	@Autowired
	private CommonUtil util;

	@RequestMapping(value = "/{action}", method = { RequestMethod.GET, RequestMethod.POST })
	public ModelAndView actionMethod(@RequestParam Map<String, Object> paramMap, @PathVariable String action,
			ModelAndView modelandView) {
		String viewName = "/signupView/";
		Map<String, Object> resultMap = new HashMap<String, Object>();
		List<Object> resultList = new ArrayList<Object>();
		Object result = null;
		
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
		modelandView.addObject("authMap", authMap);
		
	
		if ("read".equalsIgnoreCase(action)) {
			//회원가입 form에 입력된 정보를 데이터베이스에 삽입
			//paramMap에 입력 데이터가 저장되어 날아옴
			//저장되어 날아온 데이터의 ID가 이미 존재하는지 먼저 확인(SELECT 후 null이 아닌지)
			//null이라면 없다는 의미이므로 삽입, 존재한다면 중복되므로 에러 창
			//위의 내용은 service에서 처리(비즈니스로직이므로) service에서 처리
			
			
			//정상 삽입일시(중복이 아닐시) result = 1
			//중복 ID일시 result = 0;
			result = signupService.getObject("sqlMapId", paramMap);
			if((Integer)result == 1) {
				viewName = viewName + action;
				
			}else {
				viewName = viewName + "signup";
			}
		}else if("signup".equalsIgnoreCase(action)) {

			viewName = viewName + action;
		}

		modelandView.setViewName(viewName);
		modelandView.addObject("result", result);
		modelandView.addObject("resultMap", resultMap);
		modelandView.addObject("paramMap", paramMap);
		// modelandView.addObject("resultList", resultList);
		//
		return modelandView;

	}

}
