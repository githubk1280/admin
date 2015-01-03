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
							<strong>客户基本信息</strong>
							<button class="btn btn-default btn-primary" 
								style="margin-left: 10px;" type="button" data-toggle="modal" id="createNewCustomer"
											data-target="#modalSelectCustomerType"
											class="btn btn-default btn-primary pull-left"
											style="margin-left: 10px; margin-top: 20px; margin-bottom: 20px">创建新的客户</button> 
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
								<th>负责人</th>
								<th>单位</th>
								<th>部门</th>
								<th>职位</th>
								<th>研究方向 </th>
								<th>负责内容</th>
								<th></th>
							</tr>
						</thead>
						<tbody>
							<c:forEach items="${customers}" var="customer"
								varStatus="status">
								<tr>
									<td><a href="<%=request.getContextPath()%>/project/${customer.projectId}" target="_blank"
										class="project_link">${customer.projectId}</a></td>
									<td><a href="<%=request.getContextPath()%>/customer/${customer.customerId}" target="_blank"
										class="project_link">${customer.customerName}</a></td>
									<td>${customer.workUnit}</td>
									<td>${customer.department}</td>
									<td>${customer.position}</td>
									<td>${customer.resarchDirection}</td>
									<td>${customer.responsibleArea}</td>
									<td><a href="<%=request.getContextPath()%>/customer/${customer.customerId}" target="_blank"
										class="project_link">进入详情页</a></td>
								</tr>
							</c:forEach>
						</tbody>
					</table>
					<c:if test="${pages>1}">
						<div style=" z-index:1; right: 1px; bottom:20px;">
							<%@ include file="pagnation.jsp"%>
						</div>
					</c:if>
				</div>
			</div>
			<!-- /#page-wrapper -->
		</div>
	</div>
	<!-- modal box -->
	<div class="modal fade modal-box" id="modalSelectCustomerType" tabindex="0"
		role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
		<div class="modal-dialog" style="margin: 300px auto">
			<div class="modal-content" style="top:-100px">
				<div class="modal-body" align="center">
					<h3>请选择负责人类型</h3>
					<button class="btn btn-default btn-primary" id="projectPrincipal">项目主要负责人</button>
					<button class="btn btn-default btn-primary" id="projectFirstPerson">项目第一联系人</button>
					<button class="btn btn-default btn-primary" id="projectSecondPerson">项目第二联系人</button>
				</div>
				<div class="modal-footer">
					<button type="button" class="btn btn-primary" data-dismiss="modal">取消</button>
				</div>
			</div>
		</div>
	</div>
	<!-- /#wrapper -->
	<%@ include file="../common/modal.jsp"%>
	<%@ include file="../comm-fragement/main-js"%>
	<script type="text/javascript">
		$(document).ready(function() {
			$("#projectStatusBadge").click(function() {
				alert($("#projectStatusBadge").text());
				$("#projectStatusBadge").text("");
			});
			$('#createNewCustomer').click(function(){
				//validate  which create user button will be displayed
			});
			$("#projectPrincipal").click(function() {
				window.location.replace("http://"+window.location.host+"/admin/customer/addPrincipal-redirect");
				return false;
			});
			$("#projectFirstPerson").click(function() {
				window.location.replace("http://"+window.location.host+"/admin/customer/addFirst-redirect");
				return false;
			});
			$("#projectSecondPerson").click(function() {
				window.location.replace("http://"+window.location.host+"/admin/customer/addSecond-redirect");
				return false;
			});

		});
	</script>


</body>

</html>