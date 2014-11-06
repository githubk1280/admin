<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<link href="../../resources/css/bootstrap.min.css" rel="stylesheet">

<!-- MetisMenu CSS -->
<link href="../../resources/css/plugins/metisMenu/metisMenu.min.css"
	rel="stylesheet">

<!-- Timeline CSS -->
<link href="../../resources/css/plugins/timeline.css" rel="stylesheet">

<!-- Custom CSS -->
<link href="../../resources/css/sb-admin-2.css" rel="stylesheet">

<!-- Custom Fonts -->
<link
	href="../../resources/css/font-awesome-4.1.0/css/font-awesome.min.css"
	rel="stylesheet" type="text/css">
<link href="../../resources/css/exam.css" rel="stylesheet">
<link href="../../resources/css/theme.css" rel="stylesheet">
<!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
<!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
<!--[if lt IE 9]>
        <script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
        <script src="https://oss.maxcdn.com/libs/respond.js/1.4.2/respond.min.js"></script>
    <![endif]-->
<meta charset="UTF-8">
<title>customInfo</title>
</head>
<body>
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
							<th>客户基本信息</th>
							<th>项目信息</th>
							<th>外包信息</th>
							<th>项目进度</th>
							<th>客户联系记录</th>
							<th></th>
						</tr>
					</thead>
					<tbody>
						<c:forEach items="${projects}" var="project">
							<tr>
							<td>${project.projectId}</td>
							<td>Ivan</td>
							<td>医疗类</td>
							<td>甲公司</td>
							<td>
								<div class="progress">
									<div class="progress-bar progress-bar-warning"
										role="progressbar" aria-valuenow="60" aria-valuemin="0"
										aria-valuemax="100" style="width: 30%;">
										<span class="sr-only">30% Complete</span>30%
									</div>
								</div>
							</td>
							<td><span class="glyphicon glyphicon-ok"
								style="color: rgb(0, 211, 0);"></span> 有</td>
							<td><a href="../page/projectDetailData.html" target="_blank"><i
									class="fa fa-bar-chart-o fa-fw" style="color: rgb(0, 0, 0);"></i></a></td>
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



	<script src="../../resources/js/jquery-1.11.0.js"></script>

	<!-- Bootstrap Core JavaScript -->
	<script src="../../resources/js/bootstrap.min.js"></script>

	<!-- Metis Menu Plugin JavaScript -->
	<script src="../../resources/js/plugins/metisMenu/metisMenu.min.js"></script>

	<!-- Custom Theme JavaScript -->
	<script src="../../resources/js/sb-admin-2.js"></script>
	<script type="text/javascript">
		$(document).ready(function() {

			$(".pagination li ").click(function() {
				$(this).addClass('active').siblings().removeClass('active');
			});

		});
	</script>
</body>
</html>