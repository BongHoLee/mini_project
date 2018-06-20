package com.kt.test.controller;

import java.util.HashMap;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.kt.test.service.SignupService;

@Controller
@RequestMapping(value = "/signup")
public class SignupController {

	@Autowired
	private SignupService signupservice;

	@RequestMapping(value = "/{action}", method = { RequestMethod.GET, RequestMethod.POST })
	public ModelAndView actionMethod(@RequestParam Map<String, Object> paramMap, @PathVariable String action,
			ModelAndView modelandView) {
		String viewName = "/signup/";
		Map<String, Object> resultMap = new HashMap<String, Object>();
		// List<Object> resultList = new ArrayList<Object>();

	
		if ("read".equalsIgnoreCase(action)) {
			viewName = viewName + action;
			resultMap = (Map<String, Object>) signupservice.getObject(paramMap);
		}

		modelandView.setViewName(viewName);

		modelandView.addObject("resultMap", resultMap);
		// modelandView.addObject("resultList", resultList);
		//
		return modelandView;

	}

}
