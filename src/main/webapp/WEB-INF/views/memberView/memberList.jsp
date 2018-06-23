<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@ taglib uri="http://tiles.apache.org/tags-tiles" prefix="tiles"%>


<div id="page-wrapper" style="margin-left: 0px;">
	<div class="row">
		<div class="col-lg-12">
			<h1 class="page-header">User List</h1>
		</div>
		<!-- /.col-lg-12 -->
	</div>
	<!-- /.row -->
	<div class="row">
		<div class="col-lg-12">
			<div class="panel panel-default">
				<div class="panel-heading">Advanced Tables</div>
				<!-- /.panel-heading -->
				<div class="panel-body">
					<div class="dataTable_wrapper">
						<table class="table table-striped table-bordered table-hover"
							id="dataTables-example">
							<thead>
								<tr>
									<th>ID</th>
									<th>NAME</th>
									<th>TEL</th>
									<th>EMAIL</th>
									<th>AUTHORITY</th>
									<th>UPDATE</th>
								</tr>
							</thead>
							<tbody>
								<c:forEach items="${resultList}" var="resultData"
									varStatus="loop">
									<tr
										class="${(loop.index+1)%2 == 2 ? 'odd gradeX' : 'even gradeC'}">

										<td><strong><a
											href="<c:url value="/memberView/memberInfo?ID=${resultData.ID}" />">
												${resultData.ID}</a></strong></td>
										<td>${resultData.NAME}</td>
										<td>${resultData.TEL}</td>
										<td>${resultData.EMAIL}</td>
										<td><c:choose>
											<c:when test="${resultData.AUTH_NUM == '100' }">
												<strong>관리자</strong>
											</c:when>
											<c:when test="${resultData.AUTH_NUM == '200' }">
												매니저
											</c:when>
											<c:when test="${resultData.AUTH_NUM == '300' }">
												일반 유저
											</c:when>
											</c:choose></td>
										<td>
											<c:choose>
											<c:when test="${resultData.AUTH_NUM == '100' }">
												<p>KING</p>
											</c:when>
											<c:when test="${resultData.AUTH_NUM == '200' }">
												<a href="<c:url value="/memberView/update?ID=${resultData.ID}&act=MANAGER" />">
												해고
												</a>
											</c:when>
											<c:when test="${resultData.AUTH_NUM == '300' }">
											<a href="<c:url value="/memberView/update?ID=${resultData.ID}&act=USER" />">
												매니저 위임
												</a>
											</c:when>
											</c:choose>
										</td>
									</tr>
								</c:forEach>
							</tbody>
						</table>
					</div>
					<!-- /.table-responsive -->
				</div>
				<!-- /.panel-body -->
			</div>
			<!-- /.panel -->
		</div>
		<!-- /.col-lg-12 -->
	</div>
	<!-- /.row -->
</div>
<!-- /#page-wrapper -->
