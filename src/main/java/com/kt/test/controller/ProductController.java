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

import com.kt.test.service.ProductService;

@Controller
@RequestMapping(value="/proView")
public class ProductController {
	@Autowired
	private ProductService proService;
	
	@RequestMapping(value = "/{action}", method = {RequestMethod.GET, RequestMethod.POST})
	public ModelAndView actionMethod(@RequestParam Map<String, Object> paramMap, @PathVariable String action, ModelAndView mv) {
		String viewName = "/proView/";
		Map<String, Object> resultMap = new HashMap<String, Object>();
		List<Object> resultList = new ArrayList<Object>();
		if("productInfo".equalsIgnoreCase(action)) {
			//cartlist : DB에 접속해서 장바구니 목록을 가져온다. SELECT ALL
			viewName = viewName + "productDetail";
			System.out.println("결과 맵 : " + paramMap.toString());
			paramMap.put("resultPage", "info");
			mv.addObject("resultMap", paramMap);
			
		}else if("productInsert".equalsIgnoreCase(action)) {
			viewName = viewName + action;
		}else if("insertResult".equalsIgnoreCase(action)) {
			//상품 추가시 호출
			viewName = viewName + "productDetail";
			resultMap = (Map)proService.insertObject("sqlMapId", paramMap);
			resultMap.put("resultPage", "read");
			mv.addObject("resultMap", resultMap);
			
		}
		mv.setViewName(viewName);
		return mv;
	}
}
