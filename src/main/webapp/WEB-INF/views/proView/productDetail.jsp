<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
    <%@ taglib uri="http://tiles.apache.org/tags-tiles" prefix="tiles"%>

<div>
<div class="row">
  <div class="col-sm-8">
    <div id="myCarousel" class="carousel slide" data-ride="carousel">
      <!-- Indicators -->
      <ol class="carousel-indicators">
        <li data-target="#myCarousel" data-slide-to="0" class="active"></li>
        <li data-target="#myCarousel" data-slide-to="1"></li>
      </ol>
	  <c:if test="${resultMap.resultPage == 'read'}">
	  <h2>상품 추가가 완료되었습니다!</h2>
	  </c:if>
      <!-- 상품 이미지 넣을곳 -->
      <div class="carousel-inner" role="listbox">
        <div class="item active">
          <img src="<c:url value='/resources/images/${resultMap.PROD_IMG}'/> " alt="Image"   style="width:800px; height:400px;">
          <div class="carousel-caption">
            <h3>Sell $</h3>
            <p>Money Money.</p>
          </div>      
        </div>

        <div class="item">
          <img src="<c:url value='/resources/images/${resultMap.PROD_IMG}'/> " alt="Image" style="width:800px; height:400px;">
          <div class="carousel-caption">
            <h3>More Sell $</h3>
            <p>Lorem ipsum...</p>
          </div>      
        </div>
      </div>

      <!-- 상품 이미지 왼/오른 선택 -->
      <a class="left carousel-control" href="#myCarousel" role="button" data-slide="prev">
        <span class="glyphicon glyphicon-chevron-left" aria-hidden="true"></span>
        <span class="sr-only">Previous</span>
      </a>
      
      <a class="right carousel-control" href="#myCarousel" role="button" data-slide="next">
        <span class="glyphicon glyphicon-chevron-right" aria-hidden="true"></span>
        <span class="sr-only">Next</span>
      </a>
    </div>
  </div>
  
  <form action="#">
  <div class="col-sm-4">
  <label style="color:red;">브랜드</label>
    <div class="well">
	<label>${resultMap.BRAND_NAME}</label>
    </div>
    
    <label style="color:red;">상품명</label>
    <div class="well">
    <label>${resultMap.PROD_NAME}</label>   
    </div>
    
    <label style="color:red;">가격</label>
    <div class="well">
       <label>${resultMap.PRICE}</label>
    </div>
    
    <label style="color:red;">사이즈</label>
    <div class="well">
       <label>${resultMap.PSIZE}</label>
    </div>
  </div>
  
</div>
<hr>
<br>
</div>
    <div class="text-center">
    <input class="btn btn-default" type="submit" value="장바구니 담기">
    </div>
  </form>