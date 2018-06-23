<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
    <%@ taglib uri="http://tiles.apache.org/tags-tiles" prefix="tiles"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<div class="jumbotron" style="background-color: white;">
		<div class="container text-center" style="background-color: white;">
			<a href="<c:url value = "/" ></c:url>" >
			<img src="<c:url value = "/resources/images/player2.jpg" ></c:url>"  style="width: 15%" alt="Image"></a>
		</div>
	</div>
	<nav class="navbar navbar-inverse">
		<div class="container-fluid" style="padding-left:0px; padding-right:0px;">
			<div class="navbar-header">
				<button type="button" class="navbar-toggle" data-toggle="collapse"
					data-target="#myNavbar">
					<span class="icon-bar"></span> <span class="icon-bar"></span> <span
						class="icon-bar"></span>
				</button>
			</div>
			<div class="collapse navbar-collapse" id="myNavbar">
				<ul class="nav navbar-nav">
					<li class="active"><a href="#">신상품</a></li>
					<li><a href="#">판매랭킹</a></li>
					<li><a href="#">브랜드</a></li>
				
				</ul>
				<ul class="nav navbar-nav navbar-right">
				<c:choose>
					<c:when test="${pageContext.request.userPrincipal.name == null}">
						<li><a href="<c:url value = "/login" ></c:url>" ><span class="glyphicon glyphicon-user"></span> Login</a></li>
						<li><a href="<c:url value = "/signupView/signup" ></c:url>"><span class="glyphicon glyphicon-log-in"></span> Join</a></li>
					</c:when>
					
					<c:otherwise>
						<c:if test="${(authMap.ROLE == 'ADMIN') || (authMap.ROLE == 'SYSTEM')}">
							<li><a href="<c:url value = "/proView/productInsert" ></c:url>"><span class="glyphicon glyphicon-shopping-cart"></span> 상품 추가</a></li>
						</c:if>				
					<li><a href="<c:url value = "/noticeView/noticelist" ></c:url>"><span class="glyphicon glyphicon-shopping-cart"></span> 게시판</a></li>
					<c:set var='principalName' value='${pageContext.request.userPrincipal.name}' />
                    <li> <c:url var='logoutUrl' value='/j_spring_security_logout'></c:url><li>
                   	<li>
						<a type="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false" href="#" >
							<span class="glyphicon glyphicon-user"></span>${principalName}
						</a>
						
						<ul class="dropdown-menu" role="menu" aria-labelledby="dLabel">
 							<li><a href="<c:url value='/memberView/memberInfo' />">내 정보</a></li>
 							<li><a href="<c:url value='/cartView/cartlist' />">장바구니</a></li>
 						</ul>
 						
 					</li>
                    <li><a href="${logoutUrl}"><i class="fa fa-sign-out fa-fw"></i> Logout</a></li>
					</c:otherwise>
				</c:choose>


				</ul>
			</div>
		</div>
	</nav>

	<div class="container-fluid">
<!--   <div class="row content"> -->