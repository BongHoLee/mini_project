package com.kt.test;

import java.text.DateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Locale;
import java.util.Map;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.kt.test.service.ProductService;



@Controller
public class IndexController {

private static final Logger logger = LoggerFactory.getLogger(IndexController.class);

@Autowired
private ProductService proService;

	@RequestMapping(value = "/", method = {RequestMethod.GET, RequestMethod.POST})
	public ModelAndView index(@RequestParam Map<String, Object> paramMap, ModelAndView mv) {
	String viewName = "index";
	
	Map<String, Object> resultMap = new HashMap<String, Object>();
	List<Object> resultList = new ArrayList<Object>();
	resultList = (List)proService.getList("product.list", paramMap);
	
	System.out.println("결과 리스트 : " + resultList.toString());
	mv.addObject("resultList", resultList);
	mv.setViewName(viewName);
	return mv;
}

	
	@RequestMapping(value = "/login", method = {RequestMethod.GET,RequestMethod.POST}) 
	public String login() {
			return "login";
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
