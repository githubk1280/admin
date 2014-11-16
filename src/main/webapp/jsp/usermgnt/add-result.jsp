<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html lang="en">
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta name="description" content="">
<meta name="author" content="">

<title>生物信息管理系统-创建用户</title>
<%@ include file="../comm-fragement/main-css"%>
</head>
<body ng-app="">

	<div id="wrapper">
		<%@ include file="../common/nav.jsp"%>
		<div id="page-wrapper" class="detailPage">
			<div class="row">
				<div class="col-lg-12">
					<!-- .panel-heading -->
					<div class="panel-body">
						<div class="panel-group" id="accordion">
							<div class="panel panel-default">
								<div class="panel-heading ">
									<h3 class="panel-title">
										<strong>创建用户</strong>
									</h3>
								</div>
								<c:if test="${newuser!=null}">
									<div id="collapseOne">
										<div class="panel-body">
											<div class="row row-margin" style="align: center">
												<div class="col-md-4  col-sm-12 col-xs-12"></div>
												<div class="col-md-4  col-sm-12 col-xs-12">
													<div>
														<label>用户<i>${newuser.name }</i></label>
													</div>
													<div>
														<label>密码<i>${newuser.password }</i></label>
													</div>
												</div>
												<div class="col-md-4  col-sm-12 col-xs-12"></div>
											</div>
										</div>
									</div>
								</c:if>
								<c:if test="${newuser==null}">
									<div id="collapseOne">
										<div class="panel-body">
											<div class="row row-margin" style="align: center">
												<div class="col-md-4  col-sm-12 col-xs-12"></div>
												<div class="col-md-4  col-sm-12 col-xs-12">
													<div>
														<label>用户名已经存在，请重试!</label>
													</div>
													<div>
														<a href="<%=request.getContextPath()%>/user/add-redirect" style="color:black">返回</a>
													</div>
												</div>
												<div class="col-md-4  col-sm-12 col-xs-12"></div>
											</div>
										</div>
									</div>
								</c:if>
							</div>
						</div>
					</div>
					<!-- .panel-body -->
				</div>
				<!-- /.panel -->
			</div>
		</div>
	</div>
	<!-- /#wrapper -->
	<%@ include file="../common/modal.jsp"%>

	<%@ include file="../comm-fragement/main-js"%>
	<script type="text/javascript">
		$(document).ready(function() {

			$("nav li").click(function() {
				$(this).addClass('active').siblings().removeClass('active');
			});

			$("#link_pro").click(function() {
				$("#mainframe").attr("src", "../page/projectBasicData.html");
			});

			$("#link_customer").click(function() {
				$("#mainframe").attr("src", "../page/customInfo.html");
			});

			$("#link_outsource").click(function() {
				$("#mainframe").attr("src", "../page/outsource.html");
			});

			$("#link_proStatus").click(function() {
				$("#mainframe").attr("src", "../page/proStatus.html");
			});

			$("#link_customCalling").click(function() {
				$("#mainframe").attr("src", "../page/customCalling.html");
			});

			$(".pagination li ").click(function() {
				$(this).addClass('active').siblings().removeClass('active');
			});

			$("#projectStatusBadge").click(function() {
				alert($("#projectStatusBadge").text());
				$("#projectStatusBadge").text("");
			});

		});
	</script>


</body>

</html>