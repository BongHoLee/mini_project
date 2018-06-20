<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<br>
<div class="container">
<table class="table table-bordered">
    <thead> 
        <caption> 글쓰기 </caption>
   </thead>
    <tbody>
        <form action=" <c:url value='/noticeView/insert'/>" method="post" encType="multiplart/form-data">
            <tr>
                <th>제목: </th>
                <td><input type="text" placeholder="제목을 입력하세요. " name="TITLE" class="form-control"/></td>
            </tr>
            <tr>
                <th>내용: </th>
                <td><textarea cols="10" placeholder="내용을 입력하세요. " name="CONTENTS" class="form-control" style="height:300px;"></textarea></td>
            </tr>
            <tr>
                <th>첨부파일: </th>
                <td><input type="text" placeholder="파일을 선택하세요. " name="FILENAME" class="form-control"/></td>
            </tr>
            <tr>
                <th>작성자 </th>
                <td><input type="text" placeholder="작성자 명을 입력하세요" name="AUTHOR" class="form-control"/></td>
            </tr>
            <tr>
                <td colspan="2">
                    <input type="submit" value="등록"  class="btn btn-default pull-right"/>
                    <input type="button" value="reset" class="btn btn-default pull-left"/>
                    <a class="btn btn-default pull-right" href="<c:url value='/noticeView/noticelist'/> ">글 목록</a>
                </td>
            </tr>
    </form>    
    </tbody>
    
</table>
</div>



