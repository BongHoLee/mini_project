<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@ taglib uri="http://tiles.apache.org/tags-tiles" prefix="tiles"%>

    <div id="wrapper">



        <div id="page-wrapper">
            <div class="row">
                <div class="col-lg-12">
                    <h1 class="page-header">회원 가입을 축하합니다.</h1>
                </div>
                <!-- /.col-lg-12 -->
            </div>
            <!-- /.row -->
            <div class="row">
                <div class="col-lg-12">
                    <div class="panel panel-default">
                        <div class="panel-heading">
                            	정보 확인
                        </div>
                        <div class="panel-body">
                            <div class="row">
                                <div class="col-lg-6">
                                    <form role="form" method="POST" action="<c:url value='/member/edit' />">
	                                    <div class="form-group">
											<label>ID</label>
											<p class="form-control-static">${resultMap.ID}</p>
	                                    </div>
<!-- 	                                    <div class="form-group"> -->
<!-- 											<label>PASSWORD</label> -->
<%-- 											<p class="form-control-static">${resultMap.PASSWORD}</p> --%>
<!-- 	                                    </div> -->
	                                    <div class="form-group">
											<label>NAME</label>
											<p class="form-control-static">${resultMap.NAME}</p>
	                                    </div>
	                                    <div class="form-group">
											<label>EMAIL</label>
											<p class="form-control-static">${resultMap.EMAIL}</p>
	                                    </div>
	                                    <div class="form-group">
											<label>CELLPHONE</label>
											<p class="form-control-static">${resultMap.TEL}</p>
	                                    </div>
                                        <button type="submit" class="btn btn-default">Add Button</button>
										<a href="<c:url value='/member/edit' />">Add With a Tag</a>
                                    </form>
                                </div>
                                <!-- /.col-lg-6 (nested) -->
                                <div class="col-lg-6">
                                    <div class="form-group">
										<label>MEMBER_SEQ Static Control</label>
										<p class="form-control-static">${resultMap.MEMBER_SEQ}</p>
                                    </div>
                                </div>
                                <!-- /.col-lg-6 (nested) -->
                            </div>
                            <!-- /.row (nested) -->
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

    </div>
    <!-- /#wrapper -->
