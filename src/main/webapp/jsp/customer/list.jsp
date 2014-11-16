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
				<form role="form">
					<div class="col-lg-12">
						<h2 class="page-header form-group input-group">
							<strong>客户基本信息</strong> <input type="text" class="form-control"
								placeholder="请输入编号"> <span class="input-group-btn">
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
								<th>负责人</th>
								<th>单位</th>
								<th>部门</th>
								<th>职位</th>
								<th>所属项目编号</th>
								<th>研究方向 </th>
								<th>负责内容</th>
								<th></th>
							</tr>
						</thead>
						<tbody>
							<c:forEach items="${customers}" var="customer"
								varStatus="status">
								<tr>
									<td><a href="${customer.customerId}" target="_blank"
										class="project_link">${customer.customerName}</a></td>
									<td>${customer.workUnit}</td>
									<td>${customer.department}</td>
									<td>${customer.position}</td>
									<td><a href="<%=request.getContextPath()%>/project/${customer.projectId}" target="_blank"
										class="project_link">${customer.projectId}</a></td>
									<td>${customer.resarchDirection}</td>
									<td>${customer.responsibleArea}</td>
									<td><a href="${customer.customerId}" target="_blank"
										class="project_link">进入详情页</a></td>
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

		});
	</script>


</body>

</html>