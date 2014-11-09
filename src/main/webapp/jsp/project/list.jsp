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
<%@ include file="../comm-fragement/main-css"%>
</head>

<body>

	<div id="wrapper">
		<%@ include file="../common/nav.jsp"%>
		<div id="page-wrapper">
			<div class="row">
				<form role="form">
					<div class="col-lg-12">
						<h2 class="page-header form-group input-group">
							<strong>项目基本信息</strong>
							<button class="btn btn-default btn-primary" id="create"
								style="margin-left: 10px;">创建新的项目</button>
							<input type="text" class="form-control" placeholder="请输入项目编号">
							<span class="input-group-btn">
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
								<th>项目类型</th>
								<th>研究方向</th>
								<th>开始日期</th>
								<th>结束日期</th>
								<th>项目进度</th>
								<th>优先级</th>
								<th></th>
							</tr>
						</thead>
						<tbody>
							<c:forEach items="${projects}" var="project" varStatus="status">
								<tr>
									<td>${project.projectId}</td>
									<td><a href="${project.projectId}" target="_blank" class="project_link">${project.projectName}</a></td>
									<td>${project.projectType}</td>
									<td>${project.researchDirection}</td>
									<td><fmt:formatDate value="${project.startDate}"
											pattern="yyyy-MM-dd" /></td>
									<td><fmt:formatDate value="${project.endDate}"
											pattern="yyyy-MM-dd" /></td>
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
					<c:if test="${projects.size()>10}">
						<%@ include file="../common/pagnation.jsp"%>
					</c:if>
				</div>
			</div>
			<!-- /#page-wrapper -->
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
			
			$("#create").click(function() {
				window.location.replace("http://"+window.location.host+"/admin/project/add-redirect");
				return false;
			});

		});
	</script>


</body>

</html>