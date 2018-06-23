<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
    <%@ taglib uri="http://tiles.apache.org/tags-tiles" prefix="tiles"%>



<br>
<div class=" text-center col-sm-10" style="height:100%;">
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
	        <tr class="${(loop.index+1)%2 == 2 ? 'odd gradeX' : 'even gradeC'}"style="vertical-align:middle;">
				<td style="vertical-align:middle;"><label>${(loop.index+1)}</label></td>
				<td style="vertical-align:middle;"><input type="checkbox" name="check_${(loop.index)}"/></td>
				<td style="vertical-align:middle;"><img src="<c:url value='/resources/images/${resultData.PROD_IMG}'/> " alt="" border=3 height=100 width=100></img><label>${resultData.PROD_NAME}</label></td>
				<td style="vertical-align:middle;"><label>${resultData.PRICE}</label></td>
				<td style="vertical-align:middle;">1</td>
				<td style="vertical-align:middle;"><a href="<c:url value='/cartView/cartDelete?BUY_NUM=${resultData.BUY_NUM}'/> "> 삭제</a></td>
	       </tr>
      </c:forEach>
        
      </tbody>
      
     
    </table>
    <div class="text-center">
    <a class="btn btn-default" href="<c:url value='/noticeView/noticeinsert' /> "> 구매</a>
    </div>
    </form>	<!-- 장바구니 form end -->
    

    
    

    </div>
  </div>