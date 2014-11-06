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

<title>生物信息管理系统</title>

<link href="<spring:url value="/resources/css/bootstrap.min.css"/>"
	rel="stylesheet">

<!-- MetisMenu CSS -->
<link
	href="<spring:url value="/resources/css/plugins/metisMenu/metisMenu.min.css"/>"
	rel="stylesheet">

<!-- Timeline CSS -->
<link href="<spring:url value="/resources/css/plugins/timeline.css"/>"
	rel="stylesheet">

<!-- Custom CSS -->
<link href="<spring:url value="/resources/css/sb-admin-2.css"/>"
	rel="stylesheet">
<!-- Custom Fonts -->
<link
	href="<spring:url value="/resources/css/font-awesome-4.1.0/css/font-awesome.min.css"/>"
	rel="stylesheet" type="text/css">
<link href="<spring:url value="/resources/css/exam.css"/>"
	rel="stylesheet">
<!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
<!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
<!--[if lt IE 9]>
        <script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
        <script src="https://oss.maxcdn.com/libs/respond.js/1.4.2/respond.min.js"></script>
    <![endif]-->
</head>

<body>

	<div id="wrapper">
		<!-- Navigation -->
		<nav
			class="navbar navbar-default navbar-static-top  navbar-default-color"
			role="navigation" style="margin-bottom: 0">
		<div class="navbar-header">
			<a class="navbar-brand"><strong class="navbrand-font">生物信息管理系统</strong></a>
		</div>
		<ul class="nav navbar-top-links  navbar-right">
			<li><a href="#"> <i class="fa fa-envelope fa-fw"></i><span
					id="messageBadge" class="badge message-badge-margin">999+</span>
			</a></li>
			<!-- /.dropdown 
			                <li class="">
			                    <a href="#">
			                        <i class="fa fa-bell fa-fw fa-bell-color"></i>
			                    </a>
			                </li>-->
			<!-- /.dropdown -->
			<li class="dropdown"><a class="dropdown-toggle"
				data-toggle="dropdown" href="#"> <i class="fa fa-user fa-fw"></i>
					<i class="fa fa-caret-down"></i>
			</a>
				<ul class="dropdown-menu dropdown-user">
					<li><a href="#"><i class="fa fa-user fa-fw"></i> 用户信息</a></li>
					<li><a href="#"><i class="fa fa-gear fa-fw"></i> 设置</a></li>
					<li class="divider"></li>
					<li><a href="" data-toggle="modal" data-target="#logoutModal"><i
							class="fa fa-sign-out fa-fw"></i> 退出</a></li>
				</ul> <!-- /.dropdown-user --></li>
		</ul>
		<!-- navbar tabs -->
		<ul
			class="nav navbar-nav navbar-default nav-pills navbar-nav-left navbar-default-color">
			<li id="tab1" class="active"><a href="#"><i
					class="fa fa-tasks fa-fw "></i><strong>项目管理</strong></a></li>
			<li id="tab2"><a href="#"><i class="fa fa-tasks fa-fw"></i><strong>文档管理</strong></a></li>
			<li id="tab3"><a href="#"><i class="fa fa-tasks fa-fw"></i><strong>财务管理</strong></a></li>
			<li id="tab4"><a href="#"><i class="fa fa-tasks fa-fw"></i><strong>样品管理</strong></a></li>
			<li id="tab5"><a href="#"><i class="fa fa-tasks fa-fw"></i><strong>文献管理</strong></a></li>
		</ul>



		<!-- navbar tabs -->

		<div class="navbar-default sidebar navbar-default-color "
			role="navigation">

			<div class="sidebar-nav ">
				<ul class="nav" id="side-menu">
					<li class="active"><a id="link_pro" href="#"><i
							class="fa fa-bar-chart-o fa-fw"></i> <strong>项目基本信息</strong></a></li>
					<li><a id="link_customer" href="#"><i
							class="fa fa-bar-chart-o fa-fw"></i> <strong>客户基本信息</strong></a></li>
					<li><a id="link_outsource" href="#"><i
							class="fa fa-bar-chart-o fa-fw"></i> <strong>外包信息</strong></a></li>
					<li><a id="link_proStatus" href="#"><i
							class="fa fa-bar-chart-o fa-fw"></i> <strong>项目进度</strong><span
							id="projectStatusBadge" class="badge sidebar-badge-margin">1</span></a>
					</li>
					<li><a id="link_customCalling" href="#"><i
							class="fa fa-bar-chart-o fa-fw"></i> <strong>客户联系记录</strong></a></li>
				</ul>
			</div>
			<!-- /.sidebar-collapse -->
		</div>
		<!-- /.navbar-static-side --> </nav>

		<div id="page-wrapper">
			<div class="row">
				<form role="form">
					<div class="col-lg-12">
						<h2 class="page-header form-group input-group">
							<strong>项目基本信息</strong> <input type="text" class="form-control"
								placeholder="请输入项目编号"> <span class="input-group-btn">
								<button class="btn btn-default btn-primary" type="button">
									<i class="fa fa-search"></i>
								</button>
							</span>
						</h2>
					</div>
				</form>
				<!-- /.col-lg-12 -->
			</div>
			<div class="row">
				<div class="table-responsive">
					<table class="table table-hover">
						<thead>
							<tr>
								<th>项目编号</th>
								<th>项目名称</th>
								<th>项目时间</th>
								<th>项目进度</th>
								<th>优先级</th>
								<th></th>
							</tr>
						</thead>
						<tbody>
							<c:forEach items="${projects}" var="project" varStatus="status">
								<tr>
									<td>${project.projectId}</td>
									<td>${project.projectName}</td>
									<td><fmt:formatDate value="${project.startDate}"
											pattern="yyyy-MM-dd" />- <fmt:formatDate
											value="${project.endDate}" pattern="yyyy-MM-dd" /></td>
									<td>
										<div class="progress">
											<div
												class="progress-bar 
											<c:if test="${(status.index+1)*20<=30}">progress-bar-warning</c:if>
											<c:if test="${(status.index+1)*20>60}">progress-bar-danger</c:if>"
												role="progressbar" aria-valuenow="60" aria-valuemin="0"
												aria-valuemax="100" style="width: ${(status.index+1)*20}%;">
												<span class="sr-only">${(status.index+1)*20}%
													Complete</span>${(status.index+1)*20}%
											</div>
										</div>
									</td>
									<td><span class="glyphicon glyphicon-ok"
										style="color: rgb(0, 211, 0);"></span> ${project.priority}</td>
									<td><a href="../page/projectDetailData.html"
										target="_blank"><i class="fa fa-bar-chart-o fa-fw"
											style="color: rgb(0, 0, 0);"></i></a></td>
								</tr>
							</c:forEach>
						</tbody>
					</table>
					<div class="pull-right">
						<ul class="pagination">
							<li><a href="#"><strong>上一页</strong></a></li>
							<li class="active"><a href="#">1</a></li>
							<li><a href="#">2</a></li>
							<li><a href="#">3</a></li>
							<li><a href="#">4</a></li>
							<li><a href="#">5</a></li>
							<li><a href="#"><strong>下一页</strong></a></li>
						</ul>
					</div>
				</div>
			</div>
			<!-- /#page-wrapper -->
		</div>
	</div>
	<!-- /#wrapper -->
	<!-- modal box -->
	<div class="modal fade modal-box" id="logoutModal" tabindex="0"
		role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
		<div class="modal-dialog">
			<div class="modal-content">
				<div class="modal-body" align="center">
					<h4>
						<strong class="red-color">您真的要退出吗？</strong>
					</h4>
				</div>
				<div class="modal-footer">
					<button type="button" class="btn btn-primary" data-dismiss="modal">关闭</button>
					<a href="../formal.html"><button type="button"
							class="btn btn-primary">确认</button></a>
				</div>
			</div>
		</div>
	</div>
	<!-- modal box -->

	<!-- jQuery Version 1.11.0 -->
	<script src="<spring:url value="/resources/js/jquery-1.11.0.js"/>"></script>

	<!-- Bootstrap Core JavaScript -->
	<script src="<spring:url value="/resources/js/bootstrap.min.js"/>"></script>

	<!-- Metis Menu Plugin JavaScript -->
	<script
		src="<spring:url value="/resources/js/plugins/metisMenu/metisMenu.min.js"/>"></script>

	<!-- Custom Theme JavaScript -->
	<script src="<spring:url value="/resources/js/sb-admin-2.js"/>"></script>
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
			})

		});
	</script>


</body>

</html>