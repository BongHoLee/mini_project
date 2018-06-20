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
		<div class="container-fluid">
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
					<li><a href="<c:url value = "/login" ></c:url>" ><span
							class="glyphicon glyphicon-user"></span> Login</a></li>
					<li><a href="<c:url value = "/signup" ></c:url>"><span
							class="glyphicon glyphicon-user"></span> Join</a></li>
					<li><a href="<c:url value = "/noticeView/noticelist" ></c:url>"><span
							class="glyphicon glyphicon-shopping-cart"></span> Notice</a></li>
				</ul>
			</div>
		</div>
	</nav>

	<div class="container-fluid">
<!--   <div class="row content"> -->