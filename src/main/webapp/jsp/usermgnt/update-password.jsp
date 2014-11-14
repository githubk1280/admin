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

<title>生物信息管理系统-修改密码</title>
<%@ include file="../comm-fragement/main-css"%>
</head>

<body>

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
										<strong>修改密码</strong>
									</h3>
								</div>
								<div id="collapseOne">
									<div class="panel-body">
										<form:form action="update" method="post" commandName="modifyUser">
											<div class="row row-margin">
												<div class="col-md-4 col-sm-12 col-xs-12"></div>
												<div class="col-md-4 col-sm-12 col-xs-12">
													<div>
														<label>输入新密码</label>
													</div>
													<div>
														<form:input path="password" class="form-control" type="password" />
													</div>
												</div>
												<div class="col-md-4  col-sm-12 col-xs-12"></div>
											</div>
											<div class="row row-margin">
												<div class="col-md-4  col-sm-12 col-xs-12"></div>
												<div class="col-md-4 col-sm-12 col-xs-12">
													<div>
														<label>再次输入新密码</label>
													</div>
													<div>
														<input class="form-control" type="password" />
													</div>
												</div>
												<div class="col-md-4  col-sm-12 col-xs-12"></div>
											</div>
											<div class="row" style="margin-top: 30px">
												<div class="col-md-4  col-sm-12 col-xs-12"></div>
												<div class="col-md-4 col-sm-12 col-xs-12">
													<input type="submit" class="btn btn-default btn-primary" value="提交" />
													<input id="resetBtn" type="reset"
														class="btn btn-default btn-primary" value="取消">
												</div>
												<div class="col-md-4  col-sm-12 col-xs-12"></div>
											</div>
										</form:form>
									</div>
								</div>
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