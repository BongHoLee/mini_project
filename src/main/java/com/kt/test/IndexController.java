package com.kt.test;

import java.text.DateFormat;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Locale;
import java.util.Map;

import org.aspectj.internal.lang.annotation.ajcDeclareAnnotation;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.GrantedAuthority;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.security.web.header.writers.HstsHeaderWriter;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.kt.test.service.ProductService;
import com.kt.test.util.CommonUtil;



@Controller
public class IndexController {

private static final Logger logger = LoggerFactory.getLogger(IndexController.class);

@Autowired
private ProductService proService;

@Autowired
private CommonUtil util;

	@RequestMapping(value = "/", method = {RequestMethod.GET, RequestMethod.POST})
	public ModelAndView index(@RequestParam Map<String, Object> paramMap, ModelAndView mv) {
	String viewName = "index";
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
	
	Map<String, Object> resultMap = new HashMap<String, Object>();
	List<Object> resultList = new ArrayList<Object>();
	resultList = (List)proService.getList("product.list", paramMap);
	
	System.out.println("결과 리스트 : " + resultList.toString());
	mv.addObject("resultList", resultList);
	
	mv.setViewName(viewName);
	return mv;
}


	
	@RequestMapping(value = "/login", method = {RequestMethod.GET, RequestMethod.POST}) 
	public ModelAndView login(@RequestParam Map<String, Object> paramMap, ModelAndView mv) {
		String viewName = "login";
		mv.setViewName(viewName);
			return mv;
			}
/*	@RequestMapping(value = "/notice", method = {RequestMethod.GET,RequestMethod.POST}) 
	public String notice() {
			return "notice";
			}*/
	 

	
//	@RequestMapping(value = "/*") 
//	public void byPass() {
//			
//			}
//	
//	@RequestMapping(value = "/*/*") 
//	public void byPass1() {
//			
//			}
//	
	
	
}
