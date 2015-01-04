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
		<div id="page-wrapper" >
			<div class="row">
				<form action="<%=request.getContextPath()%>/customer/search" method="post">
					<div class="col-lg-12">
						<h2 class="page-header form-group input-group">
							<strong>客户基本信息</strong>
							<button class="btn btn-default btn-primary" 
								style="margin-left: 10px;" type="button" data-toggle="modal" id="createNewCustomer"
											data-target="#modalSelectCustomerType"
											class="btn btn-default btn-primary pull-left"
											style="margin-left: 10px; margin-top: 20px; margin-bottom: 20px">创建新的客户</button> 
							<input id="searchInput" name="searchStr" class="form-control"  style="width:26%;"  placeholder="请输入项目名称"/>				
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
								<th>负责人</th>
								<th>负责人级别</th>
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
									<td>${customer.projectId}</td>
									<td><a href="<%=request.getContextPath()%>/project/${customer.projectId}" target="_blank"
										class="project_link">${customer.projectName}</a></td>
									<td><a href="<%=request.getContextPath()%>/customer/${customer.customerId}&${customer.principalId}" target="_blank"
										class="project_link">${customer.customerName}</a></td>
									<td>${customer.principalId}</td>
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
			<div class="modal-content" style="top:-100px"  >
				<div class="modal-body" align="center">
					<h3>请选择项目</h3>
					<select id="proId" class="form-control" ng-change="myChange()" ng-model="selected" ng-controller="customerController">
						<option value="">---请选择---</option>
						<option id="projectId" ng-repeat="item in idAndPrincipal"  
													     value="{{ item.projectId }}">{{ item.projectId }}</option>
					</select>
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
				alert(("#projectId").val());
			});
			$("#projectPrincipal").click(function() {
				var a = $("#proId").val();
				window.location.replace("http://"+window.location.host+"/admin/customer/addPrincipal-redirect/" + a);
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
		
		function customerController($scope, $http) {
			$scope.selected = '';
			
			$http.get("/admin/customer/ajax/projectIdPrincipal").success(
					function(data) {
						if (data.success == true) {
							$scope.idAndPrincipal = JSON.parse(data.data);
						}
					}).error(function(err) {
					alert("获取失败，请重试!");
					});
			/* $scope.change(function() {
				alert("dd");
			}); */
			
			$scope.myChange = function () {
				var i = 0;
				for(;i < $scope.idAndPrincipal.length;i++) {
					if($scope.idAndPrincipal[i].projectId == $scope.selected) {
						//$scope.principal = $scope.idAndPrincipal[i].principal;
						
						$scope.countProjectPrincipal = $scope.idAndPrincipal[i].countProjectPrincipal;
						$scope.countProjectFirst = $scope.idAndPrincipal[i].countProjectFirst;
						$scope.countProjectSecond = $scope.idAndPrincipal[i].countProjectSecond;
						if($scope.countProjectPrincipal==0){
							$("#projectFirstPerson").attr("disabled","true");
							$("#projectSecondPerson").attr("disabled","true");
							$("#projectPrincipal").removeAttr("disabled");
						}else{
							if($scope.countProjectFirst==0){
								$("#projectPrincipal").attr("disabled","true");
								$("#projectSecondPerson").attr("disabled","true");
								$("#projectFirstPerson").removeAttr("disabled"); 
							}else{
								if($scope.countProjectSecond==0){
									$("#projectPrincipal").attr("disabled","true");
									$("#projectFirstPerson").attr("disabled","true");
									$("#projectSecondPerson").removeAttr("disabled");
								}else{
									$("#projectPrincipal").attr("disabled","true");
									$("#projectFirstPerson").attr("disabled","true");
									$("#projectSecondPerson").attr("disabled","true");
								};
							};
						};
					};
				};
			};
				
		};
	</script>


</body>

</html>