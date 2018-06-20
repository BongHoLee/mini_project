<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@ taglib uri="http://tiles.apache.org/tags-tiles" prefix="tiles"%>

<!--     <div id="wrapper"> -->

<div id="page-wrapper">
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
						<div class="col-sm-6">
							<form role="form" method="POST"
								action="<c:url value='/member/edit' />">
								<div class="form-group">
									<label>ID</label>
									<%-- 											<p class="form-control-static">${resultMap.ID}</p> --%>
									<p class="form-control-static">아이디다</p>
								</div>
								<!-- 	                                    <div class="form-group"> -->
								<!-- 											<label>PASSWORD</label> -->
								<%-- 											<p class="form-control-static">${resultMap.PASSWORD}</p> --%>
								<!-- 	                                    </div> -->
								<div class="form-group">
									<label>NAME</label>
									<%-- 											<p class="form-control-static">${resultMap.NAME}</p> --%>
									<p class="form-control-static">이름이다</p>
								</div>
								<div class="form-group">
									<label>EMAIL</label>
									<p class="form-control-static">${resultMap.EMAIL}</p>
								</div>
								<div class="form-group">
									<label>CELLPHONE</label>
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
									<tr
										class="${(loop.index+1)%2 == 2 ? 'odd gradeX' : 'even gradeC'}">
										<td><label>${(loop.index+1)}</label></td>
										<td><input type="checkbox" name="check_${(loop.index)}" /></td>
										<td><label>${resultData.product_name}</label></td>
										<td><label>${resultData.product_price}</label></td>
										<td>1</td>
										<td>삭제</td>
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