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

<body ng-app="">

	<div id="wrapper">
		<%@ include file="../common/nav.jsp"%>
		<div id="page-wrapper">
			<div class="row">
				<form action="<%=request.getContextPath()%>/project/search" method="post">
					<div class="col-lg-12 col-md-12">
						<h2 class="page-header form-group input-group">
							<strong>项目基本信息</strong>
							<button class="btn btn-default btn-primary" id="create"
								style="margin-left: 10px;" type="button">创建新的项目</button> 
							<input id="searchInput" name="searchStr" class="form-control"  style="width:26%;"  placeholder="请输入项目编号"/>				
							<span class="input-group-btn">
		                        <button id="searchBtn" class="btn btn-default btn-primary" type="submit"><i class="fa fa-search" style="font-size:130%"></i></button>
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
									<td><a href="<%=request.getContextPath()%>/project/${project.projectId}" target="_blank" class="project_link">${project.projectName}</a></td>
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
											<c:if test="${project.projectStatusPercentage<=30}">progress-bar-danger</c:if>
											<c:if test="${(project.projectStatusPercentage<=60) && 
											project.projectStatusPercentage>=30}">progress-bar-warning</c:if>
											<c:if test="${project.projectStatusPercentage==100}">progress-bar-success</c:if>"
												role="progressbar" aria-valuenow="60" aria-valuemin="0"
												aria-valuemax="100" style="width: ${project.projectStatusPercentage}%;">
												<span class="sr-only">${project.projectStatusPercentage}%
													Complete</span>${project.projectStatusPercentage}%
											</div>
										</div>
									</td>
									<td><span class="glyphicon glyphicon-ok"
										style="color: rgb(0, 211, 0);"></span> ${project.priority}</td>
									<td><a href="${project.projectId}"
										target="_blank"></a></td>
								</tr>
							</c:forEach>
						</tbody>
					</table>
					<c:if test="${pages>1}">
					<div style="z-index:1; right: 1px; bottom:20px;">
						<%@ include file="../common/pagnation.jsp"%>
					</div>
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
	/*
	function projectController($scope, $http) {
		$scope.searchBtn = function() {
			$http.get("/admin/project/search/"+$("#searchInput").val()).success(
					function(data) {
						if (data.success == true) {
							//$scope.pgos = JSON.parse(data.data);
							//$scope.pgos.experimentOS.projectId = projectId;
							//$scope.pgos.dataOS.projectId = projectId;
							//if($scope.pgos.experimentOS.sendSampleDate != null) {
							//	$scope.pgos.experimentOS.sendSampleDate = $scope
							//	.getTimeString($scope.pgos.experimentOS.sendSampleDate);
							//}
							alert("success");
						}
						
					}).error(function(err) {
					alert("获取失败，请重试!");
				});
			
		};
	};
	*/
		$(document).ready(function() {
			$("#create").click(function() {
				window.location.replace("http://"+window.location.host+"/admin/project/add-redirect");
				return false;
			});

		});
	</script>


</body>
</html>