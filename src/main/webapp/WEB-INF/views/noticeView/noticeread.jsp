<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
    <%@ taglib uri="http://tiles.apache.org/tags-tiles" prefix="tiles"%>

<br>
<table class="table table-bordered" >
    <thead> 
        <caption> 공지사항 </caption>
   </thead>
    <tbody>
        <form action=" <c:url value='/noticeView/noticeread'/>" method="post" encType="multiplart/form-data">
         
          <c:forEach items="${resultList}" var="resultData" varStatus="loop">
            <tr>
                <th>제목: </th>
                <td>${resultData.TITLE}</td>
<!--                 <td><input type="text" placeholder="제목을 입력하세요. " name="TITLE" class="form-control" disabled/></td> -->
            </tr>
            <tr>
                <th>내용: </th>
                <td><textarea cols="10" placeholder="${resultData.CONTENT}" name="CONTENTS" class="form-control" style="height:300px;" disabled></textarea></td>
            </tr>
            <tr>
                <th>첨부파일: </th>
                <td><input type="text" placeholder="파일을 선택하세요. " name="FILENAME" class="form-control" disabled/></td>
            </tr>
            <tr>
                <th>작성자 </th>
                			<td>${resultData.ID}</td>
<!--                 <td><input type="text" placeholder="작성자 명을 입력하세요" name="AUTHOR" class="form-control" disabled/></td> -->
            </tr>
            <tr>
                <td colspan="2">
                    <input type="submit" value="등록"  class="btn btn-default pull-right"/>
                    <input type="button" value="수정" class="btn btn-default pull-left"/>
                    <a class="btn btn-default pull-right" href="<c:url value='/noticeView/noticelist'/> ">글 목록</a>
                </td>
            </tr>
      </c:forEach>
    </form>    
    </tbody>
    
</table>
</div>



