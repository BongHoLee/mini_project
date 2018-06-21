<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@ taglib uri="http://tiles.apache.org/tags-tiles" prefix="tiles"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>


 
	 <div class="jumbotron"
		style="background-color: white; padding-top: 0; padding-bottom: 24px;">
		<p style="margin: 15px; font-weight: bold; border-bottom: 1px solid darkgray">추천
			브랜드</p>
		<div class="container text-center">
			<div class="container">
				<div class="row">
					<div class="col-md-2 col-sm-4 col-xs-6">
						<a href="#"><img src= "<c:url value = "/resources/images/nike5.jpg" ></c:url>" class="img-circle"
							style="width: 100%" alt="Image"></a>
						<p style="font-size: 15px;">나이키</p>
					</div>
					<div class="col-md-2 col-sm-4 col-xs-6">
						<a href="#"><img src="<c:url value = "/resources/images/gnrwks.jpg" ></c:url>" class="img-circle"
							style="width: 100%" alt="Image"></a>
						<p style="font-size: 15px;">제너럴웍스</p>
					</div>
					<div class="col-md-2 col-sm-4 col-xs-6">
						<a href="#"><img src="<c:url value = "/resources/images/champion.jpg" ></c:url>" class="img-circle"
							style="width: 100%" alt="Image"></a>
						<p style="font-size: 15px;">챔피온</p>
					</div>
					<div class="col-md-2 col-sm-4 col-xs-6">
						<a href="#"><img src="<c:url value = "/resources/images/adidas.jpg" ></c:url>" class="img-circle"
							style="width: 100%" alt="Image"></a>
						<p style="font-size: 15px;">아디다스</p>
					</div>
					<div class="col-md-2 col-sm-4 col-xs-6">
						<a href="#"><img src="<c:url value = "/resources/images/obey.jpg" ></c:url>"  class="img-circle"
							style="width: 100%" alt="Image"></a>
						<p style="font-size: 15px;">오베이</p>
					</div>
					<div class="col-md-2 col-sm-4 col-xs-6">
						<a href="#"><img src="<c:url value = "/resources/images/nuhabit.jpg" ></c:url>" class="img-circle"
							style="width: 100%" alt="Image"></a>
						<p style="font-size: 15px;">뉴해빗</p>
					</div>
				</div>
			</div>
		</div>
	</div>
	
	 <div class="jumbotron" style="background-color: white; padding-top: 0; padding-bottom: 24px;">
	<p style="font-size: 21px; font-weight: bold; margin: 15px; border-bottom: 1px solid darkgray;">인기 상품</p>
	<!-- 상품 목록 시작 -->
	<c:forEach items="${resultList}" var="resultData" varStatus="loop">

	<c:if test="${(loop.index)%4 == 0}">
	<div class="container" >
		<div class="row">
		</c:if>
		
		<form action="<c:url value='/proView/productInfo' /> ">
		<div class="col-md-3 col-sm-4 col-xs-6">
				<div class="panel panel-primary">
					<input type="hidden" name="BRAND_NAME" value="${resultData.BRAND_NAME}"/>
					<div class="panel-heading">${resultData.BRAND_NAME}</div>
					<div class="panel-body">
					<input type="image" src="<c:url value = "/resources/images/${resultData.PROD_IMG}" ></c:url>" alt="Submit Form" style="width:100%" class="img-responsive" />
					</div>
					<div class="panel-footer">
					<input type="hidden" name="PROD_IMG" value="${resultData.PROD_IMG}" />
					<input type="hidden" name="CATE_NAME" value="${resultData.CATE_NAME}" />
					<input type="hidden" name="PROD_NAME" value="${resultData.PROD_NAME}"/>
					<input type="hidden" name="PRICE" value="${resultData.PRICE}"/>
					<input type="hidden" name="PSIZE" value="${resultData.PSIZE}"/>
						${resultData.PROD_NAME}<br>${resultData.PRICE}원
					</div>
				</div>
			</div>
		</form>
	<c:if test=" ${fn:length(resultList)==(loop.index+1)} or ${(loop.index+1)%4 == 0}">
		</div>
	</div>
	<br>
	</c:if>
	

	
	</c:forEach>
	<!-- 상품 목록 끝 그다음 시작 -->
	<br>
	<br>
	
	<br>
	

