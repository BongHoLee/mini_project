<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@ taglib uri="http://tiles.apache.org/tags-tiles" prefix="tiles"%>


<!--게시판 목록 -->


<br>
<div class="text-center" style="height:100%;">
    <table class="table table-hover" id="dataTables-example" style="width : 100%; height:100%;">
      <thead>
        <tr>
          <th>번호</th>
          <th>작성자</th>
          <th>제목</th>
          <th>날짜</th>
          <th>조회수</th>
        </tr>
      </thead>

      <tbody class="noticeClass">
       <c:forEach items="${resultList}" var="resultData" varStatus="loop">
	   
	   
	        <tr class="${(loop.index+1)%2 == 2 ? 'odd gradeX' : 'even gradeC'}">
				<td>
				<a href="<c:url value="/noticeView/noticeread?NOTICE_NUM=${resultData.NOTICE_NUM}" />">${loop.index+1}</a>
				</td>
				<td>${resultData.ID}</td>
				<td>${resultData.TITLE}</td>
				<td>${resultData.REG_DATE}</td> 
 				<td>${loop.index+1}</td>
	       </tr>
	       </a>
      </c:forEach>
      	
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