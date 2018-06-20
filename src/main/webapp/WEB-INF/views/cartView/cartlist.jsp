<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>



<br>
<div class="container text-center" style="height:100%;">
  <div class="row" style="height : 100%;">
  
  <!-- 장바구니 구매 form -->
  <form action="#">
    <table class="table table-hover" style="width:100%; height:100%;">
      <thead>
        <tr>
          <th>번호</th>
          <th>상품 선택</th> 
          <th>상품명</th>
          <th>판매가</th>
          <th>수량</th>
          <th>주문관리</th>
        </tr>
      </thead>

      
      
      <tbody>
       <c:forEach items="${resultList}" var="resultData" varStatus="loop">
	        <tr class="${(loop.index+1)%2 == 2 ? 'odd gradeX' : 'even gradeC'}">
				<td><label>${(loop.index+1)}</label></td>
				<td><input type="checkbox" name="check_${(loop.index)}"/></td>
				<td><label>${resultData.product_name}</label></td>
				<td><label>${resultData.product_price}</label></td>
				<td>1</td>
				<td>삭제</td>
	       </tr>
      </c:forEach>
        
      </tbody>
      
     
    </table>
    <div class="container text-center">
    <a class="btn btn-default" href="<c:url value='/noticeView/noticeinsert' /> ">구매</a>
    </div>
    </form>	<!-- 장바구니 form end -->
    

    
    
    <div class="text-center">
      <ul class="pagination">
        <li><a href="#">1</a></li>
        <li><a href="#">2</a></li>
        <li><a href="#">3</a></li>
        <li><a href="#">4</a></li>
        <li><a href="#">5</a></li>
      </ul>
    </div>
    </div>
  </div>