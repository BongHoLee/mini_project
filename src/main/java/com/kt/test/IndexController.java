package com.kt.test;

import java.text.DateFormat;
import java.util.Date;
import java.util.HashMap;
import java.util.Locale;
import java.util.Map;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;



@Controller
public class IndexController {

private static final Logger logger = LoggerFactory.getLogger(IndexController.class);
	
	@RequestMapping(value = "/", method = {RequestMethod.GET,RequestMethod.POST}) 
	public String index() {
			return "index";
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
