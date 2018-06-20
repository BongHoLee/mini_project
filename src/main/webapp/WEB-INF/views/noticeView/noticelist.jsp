<%@ taglib uri="http://tiles.apache.org/tags-tiles" prefix="tiles"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>


<!--게시판 목록 -->


<br>
<div class="text-center" style="height:100%;">
    <table class="table table-hover" style="width : 100%; height:100%;">
      <thead>
        <tr>
          <th>번호</th>
          <th>작성자</th>
          <th>제목</th>
          <th>날짜</th>
          <th>조회수</th>
        </tr>
      </thead>

      <tbody>
       <c:forEach items="${resultList}" var="resultData" varStatus="loop">
	        <tr class="${(loop.index+1)%2 == 2 ? 'odd gradeX' : 'even gradeC'}">
				<td>${resultData.NO}dsf</td>
				<td>${resultData.TITLE}sdf</td>
				<td>${resultData.AUTHOR}sdf</td>
				<td>${resultData.DATE}sdf</td>
				<td>${resultData.HIT}sdf</td>
	       </tr>
      </c:forEach>
      	        <tr class="${(loop.index+1)%2 == 2 ? 'odd gradeX' : 'even gradeC'}">
				<td>${resultData.NO}dsf</td>
				<td>${resultData.TITLE}sdf</td>
				<td>${resultData.AUTHOR}sdf</td>
				<td>${resultData.DATE}sdf</td>
				<td>${resultData.HIT}sdf</td>
	       </tr>
      </tbody>

    </table>
    
          <!--글쓰기 및 페이지 이동-->
    <a class="btn btn-default" href="<c:url value='/noticeView/noticeinsert' /> ">글쓰기</a>
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