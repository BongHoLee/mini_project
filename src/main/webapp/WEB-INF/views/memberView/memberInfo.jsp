<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@ taglib uri="http://tiles.apache.org/tags-tiles" prefix="tiles"%>

<!--     <div id="wrapper"> -->

<div id="page-wrapper" calss="col-sm-10" style="margin-left:30px;">
	<div class="row">
		<div class="col-sm-10">
			<h2 class="page-header text-center">회원정보</h2>
		</div>
		<!-- /.col-lg-12 -->
	</div>
	<!-- /.row -->
	<div class="row">
		<div class="col-sm-10">
			<div class="panel panel-default text-center">
				<div class="panel-heading">정보 확인</div>
				<div class="panel-body text-center">
					<div class="row text-center">
						<div class="col-sm-6" style="margin-left:190px;">
							<form role="form" method="POST"
								action="<c:url value='/member/edit' />">
								<div class="form-group">
									<label>ID</label>
									<input type="hidden" name="ID" value="${resultMap.ID}">
									<p class="form-control-static">${resultMap.ID}</p>
								</div>
								
								<div class="form-group">
									<label>NAME</label>
									<input type="hidden" name="NAME" value="${resultMap.NAME}">
									<p class="form-control-static">${resultMap.NAME}</p>
								</div>
								<div class="form-group">
									<label>EMAIL</label>
									<input type="hidden" name="NAME" value="${resultMap.EMAIL}">
									<p class="form-control-static">${resultMap.EMAIL}</p>
								</div>
								<div class="form-group">
									<label>CELLPHONE</label>
									<input type="hidden" name="NAME" value="${resultMap.TEL}">
									<p class="form-control-static">${resultMap.TEL}</p>
								</div>
								<button type="submit" class="btn btn-default">수정</button>
								<%-- 										<a href="<c:url value='/member/edit' />">회원 정보 수정</a> --%>
							</form>
						</div>
						<!-- /.col-lg-6 (nested) -->
						<div class="col-sm-6">
							<div class="form-group">
								<!-- 										<label>MEMBER_SEQ Static Control</label> -->
								<%-- 										<p class="form-control-static">${resultMap.MEMBER_SEQ}</p> --%>
							</div>
						</div>
						<!-- /.col-lg-6 (nested) -->
					</div>
					<!-- /.row (nested) -->
				</div>
				<!-- /.panel-body -->
			</div>
			<!-- /.panel -->
			<!--                 </div> -->
			<!-- /.col-lg-12 -->
			<!--             </div> -->
			<!-- /.row -->

			<br>
			<h2 class="text-center">구매내역</h2>
			<div class="text-center" style="height: 100%;">
				<div class="row" style="height: 100%;">

					<!-- 장바구니 구매 form -->
					<form action="#">
						<table class="table table-hover"
							style="width: 100%; height: 100%;">
							<thead>
								<tr>
									<th>번호</th>
									<th>상품정보</th>
									<th>주문일자</th>
									<th>결제금액</th>
									<th>배송정보</th>
								</tr>
							</thead>



							<tbody>
								<c:forEach items="${resultList}" var="resultData"
									varStatus="loop">
	        <tr class="${(loop.index+1)%2 == 2 ? 'odd gradeX' : 'even gradeC'}"style="vertical-align:middle;">
				<td style="vertical-align:middle;"><label>${(loop.index+1)}</label></td>
				<td style="vertical-align:middle;"><img src="<c:url value='/resources/images/${resultData.PROD_IMG}' /> " alt="" border=3 height=100 width=100></img><label>${resultData.PROD_NAME}</label></td>
				<td style="vertical-align:middle;">${resultData.BUY_DATE}</td>
				<td style="vertical-align:middle;"><label>${resultData.PRICE}</label></td>
				<td style="vertical-align:middle;">준비중</td>
				
	       </tr>
								</c:forEach>

							</tbody>


						</table>
					</form>



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
				</div>
			</div>