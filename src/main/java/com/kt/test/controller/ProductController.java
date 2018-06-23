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
import com.kt.test.util.CommonUtil;

@Controller
@RequestMapping(value="/proView")
public class ProductController {
	@Autowired
	private ProductService proService;
	
	@Autowired
	private CommonUtil util;
	
	@RequestMapping(value = "/{action}", method = {RequestMethod.GET, RequestMethod.POST})
	public ModelAndView actionMethod(@RequestParam Map<String, Object> paramMap, @PathVariable String action, ModelAndView mv) {
		String viewName = "/proView/";
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
			
		}else if("productView".equalsIgnoreCase(action)) {
			viewName = viewName + action;
			System.out.println("파라미터 : " + paramMap.toString());
			System.out.println("page : " + paramMap.get("page"));
			if(paramMap.get("page").equals("category")) {
				System.out.println("들어옴");
				resultList = (List)proService.getList("product.selectCate", paramMap);
				resultMap.put("page", "category");
			}else if(paramMap.get("page").equals("brand")) {
				resultList = (List)proService.getList("product.selectBrand", paramMap);
				resultMap.put("page", "brand");
			}
				mv.addObject("resultMap", resultMap);
				mv.addObject("resultList",resultList);
		}
		mv.setViewName(viewName);
		return mv;
	}
}
