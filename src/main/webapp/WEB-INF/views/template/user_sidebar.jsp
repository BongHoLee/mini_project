<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
    <%@ taglib uri="http://tiles.apache.org/tags-tiles" prefix="tiles"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
    
    
    
    <div class="col-sm-2 sidenav">


	<div class="tab" style = "padding-bottom : 0px;">
		<button class="tablinks" onclick="openCity(event, 'category')">품목</button>
		<button class="tablinks" onclick="openCity(event, 'brand')">브랜드</button>
	</div>

<!-- 	<div id="category" class="tabcontent"> -->
<!-- 	</div> -->

	<div id="brand" class="tabcontent">
	<form>
		<label>브랜드명 검색</label>
		<input type = "text" size="18"
				placeholder="search brand"> </input>
	</form>
	</div>

	


	<ul class="nav nav-pills nav-stacked">
<!--         <li class="active"><a href="#section1">Home</a></li> -->
        <li><a href="#section2"><strong>BEST &nbsp;&nbsp;</strong><h7>인기</h7></a></li>
        <li><a href="#section3"><strong>TOP &nbsp;&nbsp;</strong><h7>상의</h7></a></li>
        <li><a href="#section3"><strong>BOTTOM &nbsp;&nbsp;</strong><h7>하의</h7></a></li>
        <li><a href="#section3"><strong>OUTER &nbsp;&nbsp;</strong><h7>아우터</h7></a></li>
        <li><a href="#section3"><strong>ACCESSORY &nbsp;&nbsp;</strong><h7>장신구</h7></a></li>
        <li><a href="#section3"><strong>SHOES &nbsp;&nbsp;</strong><h7>신발</h7></a></li>
        <li><a href="#section3"><strong>BAG &nbsp;&nbsp;</strong><h7>가방</h7></a></li>
      </ul><br>
    </div>
    
    <div class="col-sm-10">