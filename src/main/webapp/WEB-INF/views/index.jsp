<%@ taglib uri="http://tiles.apache.org/tags-tiles" prefix="tiles"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

 
	 <div class="jumbotron"
		style="background-color: white; padding-top: 0; padding-bottom: 24px;">
		<p
			style="margin: 15px; font-weight: bold; border-bottom: 1px solid darkgray">추천
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
	<p
		style="font-size: 21px; font-weight: bold; margin: 15px; border-bottom: 1px solid darkgray;">인기
		상품</p>
	<div class="container" >
		<div class="row">
	<div class="col-md-3 col-sm-4 col-xs-6">
				<div class="panel panel-primary">
					<div class="panel-heading">NIKE</div>
					<div class="panel-body">
						<a href="#"><img src="<c:url value = "/resources/images/nike1.jpg" ></c:url>" class="img-responsive"
							style="width: 100%" alt="Image"></a>
					</div>
					<div class="panel-footer">
						나이키 에어포스1 07 화이트<br>84,800원
					</div>
				</div>
			</div>
<div class="col-md-3 col-sm-4 col-xs-6">
				<div class="panel panel-danger">
					<div class="panel-heading">NIKE</div>
					<div class="panel-body">
						<a href="#"><img src="<c:url value = "/resources/images/nike2.jpg" ></c:url>" class="img-responsive"
							style="width: 100%" alt="Image"></a>
					</div>
					<div class="panel-footer">
						나이키 에어맥스 97 로즈핑크<br>209,000원
					</div>
				</div>
			</div>
<div class="col-md-3 col-sm-4 col-xs-6">
				<div class="panel panel-success">
					<div class="panel-heading">NIKE</div>
					<div class="panel-body">
						<a href="#"><img src="<c:url value = "/resources/images/nike3.jpg" ></c:url>" 
						class="img-responsive" style="width: 100%" alt="Image"></a>
					</div>
					<div class="panel-footer">
						나이키 FC 스우시 플래그 화이트<br>37,000원
					</div>
				</div>
			</div>
	<div class="col-md-3 col-sm-4 col-xs-6">
				<div class="panel panel-yellow">
					<div class="panel-heading">POLORALPHLAUREN</div>
					<div class="panel-body">
						<a href="#"><img src="<c:url value = "/resources/images/polo1.jpg" ></c:url>" 
							class="img-responsive" style="width: 100%" alt="Image"></a>
					</div>
					<div class="panel-footer">
						폴로 크루넥 포켓 반팔티<br>39,000원
					</div>
				</div>
			</div>
		</div>
	</div>
	<br>
	
	
	<div class="container">
		<div class="row">
<div class="col-md-3 col-sm-4 col-xs-6">
				<div class="panel panel-primary">
					<div class="panel-heading">NIKE</div>
					<div class="panel-body">
						<a href="#"><img src="<c:url value = "/resources/images/nike4.jpg" ></c:url>" class="img-responsive"
							style="width: 100%" alt="Image"></a>
					</div>
					<div class="panel-footer">
						나이키 조던 23/7 점프맨<br>29,900원
					</div>
				</div>
			</div>
<div class="col-md-3 col-sm-4 col-xs-6">
				<div class="panel panel-danger">
					<div class="panel-heading">ADIDAS</div>
					<div class="panel-body">
						<a href="#"><img src="<c:url value = "/resources/images/adidas1.jpg" ></c:url>" 
							class="img-responsive" style="width: 100%" alt="Image"></a>
					</div>
					<div class="panel-footer">
						아디다스 오리지널 트레포일<br>32,000원
					</div>
				</div>
			</div>
<div class="col-md-3 col-sm-4 col-xs-6">
				<div class="panel panel-success">
					<div class="panel-heading">CHAMPION</div>
					<div class="panel-body">
						<a href="#"><img src="<c:url value = "/resources/images/champion1.jpg" ></c:url>" 
							class="img-responsive" style="width: 100%" alt="Image"></a>
					</div>
					<div class="panel-footer">
						챔피온 베이버 코튼<br>18,000원
					</div>
				</div>
			</div>
<div class="col-md-3 col-sm-4 col-xs-6">
				<div class="panel panel-yellow">
					<div class="panel-heading">CARHARTT</div>
					<div class="panel-body">
						<a href="#"><img src="<c:url value = "/resources/images/carhartt1.jpg" ></c:url>" 
							class="img-responsive" style="width: 100%" alt="Image"></a>
					</div>
					<div class="panel-footer">
						칼하트 레거시 스탠다드<br>68,900원
					</div>
				</div>
			</div>
			</div>
			
		</div>
	</div>
	<br>
	<br>
	<div class="text-center">
		<ul class="pagination" style="margin: 0px;">
			<li><a href="#">1</a></li>
			<li><a href="#">2</a></li>
			<li><a href="#">3</a></li>
			<li><a href="#">4</a></li>
			<li><a href="#">5</a></li>
		</ul>
	</div>
	<br>
	

