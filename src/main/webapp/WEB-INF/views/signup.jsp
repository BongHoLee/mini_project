<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://tiles.apache.org/tags-tiles" prefix="tiles"%>


	<div class="text-center" style="background:white;">
		<form class="form-horizontal" role="form" action = "<c:url value ='/signup/read'/>" 
			style="margin-left: 20%; padding-right: 40px; margin-bottom: 2%; margin-top: 2%;">
			<h2>
				플레이어 <span style="color: red">간편 회원가입</span>
			</h2>
			<div class="form-group">
				<label for="firstName" class="col-sm-3 control-label">이름</label>
				<div class="col-sm-9">
					<input type="text" id="firstName" name = "NAME" class="form-control">
				</div>
			</div>
			<div class="form-group">
				<label for="text" class="col-sm-3 control-label">아이디</label>
				<div class="col-sm-9">
					<input type="text" id="text" name = "ID" class="form-control" >
					<span class="help-block">아이디는 10자 이상의 영문과 숫자를 입력해 주세요.</span>
				</div>
			</div>
			<div class="form-group">
				<label for="password" class="col-sm-3 control-label">비밀번호</label>
				<div class="col-sm-9">
					<input type="password" id="password" name = "PASSWORD" class="form-control" >
					<span class="help-block"> 8~20자 이내 영문과 숫자를 입력해 주세요.</span>
				</div>
			</div>
			<div class="form-group">
				<label for="password" class="col-sm-3 control-label">비밀번호 확인</label>
				<div class="col-sm-9">
					<input type="password" id="password2" name = "PASSWORD2" class="form-control">
				</div>
			</div>
			<div class="form-group">
				<label for="tel" class="col-sm-3 control-label">휴대전화 번호</label>
				<div class="col-sm-9">
					<input type="tel" id="tel" name = "TEL" class="form-control">
				</div>
			</div>
			<div class="form-group">
				<label for="email" class="col-sm-3 control-label">이메일</label>
				<div class="col-sm-9">
					<input type="email" id="email" name = "EMAIL" class="form-control" >
					<span class="help-block">이메일은 아이디 또는 비밀번호를 찾기 위해 꼭 필요한 정보이므로
						정확하게 입력해주세요.</span>
				</div>
			</div>

			<div class="form-group">
				<div class="col-sm-9 col-sm-offset-3">
					<div class="checkbox">
						<label> <input type="checkbox">I accept <a
							href="#">terms</a>
						</label>
					</div>
				</div>
			</div>
			<!-- /.form-group -->
			<div class="form-group">
				<div class="col-sm-9 col-sm-offset-3">
					<button type="submit" class="btn btn-primary btn-block"
						style="background-color: red; font-weight: bold;">회원가입</button>
				</div>
			</div>
		</form>
		<!-- /form -->
	</div>
	<!-- ./container -->
