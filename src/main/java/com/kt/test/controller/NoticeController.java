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


@Controller
@RequestMapping(value="/noticeView")
public class NoticeController {
	//@Autowired
	//private NoticeService service;
	@RequestMapping(value = "/{action}", method = {RequestMethod.GET, RequestMethod.POST})
	public ModelAndView actionMethod(@RequestParam Map<String, Object> paramMap, @PathVariable String action, ModelAndView mv) {
		String viewName = "/noticeView/";
		Map<String, Object> resultMap = new HashMap<String, Object>();
		List<Object> resultList = new ArrayList<Object>();
		if("noticelist".equalsIgnoreCase(action)) {
			viewName = viewName + action;
			//resultList = (List<Object>)service.getList(paramMap);
			mv.addObject("resultList", resultList);
			
		}else if("insert".equalsIgnoreCase(action)) {
			viewName = viewName + "noticelist";
			//resultList = (List<Object>)service.insertNotice(paramMap);
			mv.addObject("resultList", resultList);
			
		}else if("noticeinsert".equalsIgnoreCase(action)) {
			viewName = viewName + action;
		}
		mv.setViewName(viewName);
		return mv;
	}
	

}
