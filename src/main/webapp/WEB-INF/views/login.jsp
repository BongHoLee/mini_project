<%@ taglib uri="http://tiles.apache.org/tags-tiles" prefix="tiles"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<head>
<link rel="stylesheet" href = "<c:url value ='/resources/CSS/bootstrap.login.css'/>">
</head>

	<div class="login-page">
		<div class="form"   style= "margin-top: 50px;">
			<form class="register-form">
				<input type="text" placeholder="name" /> <input type="password"
					placeholder="password" /> <input type="text"
					placeholder="email address" />
				<button>create</button>
				<p class="message">
					Already registered? <a href="#">Sign In</a>
				</p>
			</form>
			<form class="login-form">
				<input type="text" placeholder="아이디를 입력하세요" /> <input type="password"
					placeholder="비밀번호를 입력하세요" />
				<button>로그인</button>
				<p class="message">
					회원이 아니세요? <a href="/signup/">회원가입하기</a>
				</p>
			</form>
		</div>
	</div>
