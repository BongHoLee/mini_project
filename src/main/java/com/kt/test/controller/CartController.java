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

import com.kt.test.service.CartService;
import com.kt.test.util.CommonUtil;

@Controller
@RequestMapping(value="/cartView")
public class CartController {
	@Autowired
	private CartService service;
	
	@Autowired
	private CommonUtil util;
	
	@RequestMapping(value = "/{action}", method = {RequestMethod.GET, RequestMethod.POST})
	public ModelAndView actionMethod(@RequestParam Map<String, Object> paramMap, @PathVariable String action, ModelAndView mv) {
		String viewName = "/cartView/";
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
		
		//지금 이게 문제임. 얘를 따로 빼면 될거같기도 함
		paramMap.put("ID", util.getName());
		if("cartlist".equalsIgnoreCase(action)) {
			//cartlist : DB에 접속해서 장바구니 목록을 가져온다. SELECT ALL
			viewName = viewName + action;
			resultList = (List<Object>)service.getList("cart.list",paramMap);
			mv.addObject("resultList", resultList);
			
		}else if("cartinsert".equalsIgnoreCase(action)) {
			//장바구니에 추가하기 위해 username이 필요
			//insert후 장바구니 목록을 보여준다.
			viewName = viewName + "cartlist";
			
			int resultNum = (Integer)service.insertObject("cart.insert", paramMap);
			
			if(resultNum == 1) {
				//삽입 성공시 장바구니 목록을 불러와서 뿌려준다.
				resultList = (List<Object>)service.getList("cart.list",paramMap);
				mv.addObject("resultList", resultList);
				
			}

			
		}else if("cartDelete".equalsIgnoreCase(action)) {
			viewName = viewName + "cartlist";
			int resultNum = (Integer)service.deleteObject("cart.delete", paramMap);
			if(resultNum == 1) {
				//삭제 성공시 장바구니 목록을 불러와서 뿌려준다.
				resultList = (List<Object>)service.getList("cart.list",paramMap);
				mv.addObject("resultList", resultList);
			}
		}else if("buy".equalsIgnoreCase(action)) {
			viewName = viewName + "cartlist";
			
			System.out.println("맵 크기 : " + paramMap.size() + "맵 내용 : " + paramMap.toString());
			//구매 목록을 담을 List
			List<Object> buyList = new ArrayList<>();
			for(String key : paramMap.keySet()) {
				String buynum = (String)paramMap.get(key);
				Map<String, Object> map = new HashMap<>();
				map.put("BUY_NUM", buynum);
				buyList.add(map);
			}
			System.out.println("리스트 크기 : " + buyList.size());
			
		}
		
		mv.setViewName(viewName);
		return mv;
	}
}


