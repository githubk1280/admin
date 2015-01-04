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
				<form action="<%=request.getContextPath()%>/customer/search" method="post">
					<div class="col-lg-12">
						<h2 class="page-header form-group input-group">
							<strong>外包基本信息</strong> 
							<button class="btn btn-default btn-primary" id="createOutsource"
								style="margin-left: 10px;" type="button" data-toggle="modal"
											data-target="#modalSelectOSType"
											class="btn btn-default btn-primary pull-left"
											style="margin-left: 10px; margin-top: 20px; margin-bottom: 20px">创建新的外包</button> 
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
								<th>外包编号</th>
								<th>外包类型</th>
								<th>外包状态</th>
								<th>送样数量</th>
								<th>送样日期</th>
								<th></th>
							</tr>
						</thead>
						<tbody>
							<c:forEach items="${outsources}" var="outsource"
								varStatus="status">
								<tr>
									<td>${outsource.projectId}</td>
									<td><a href="<%=request.getContextPath()%>/project/${outsource.projectId}" target="_blank"
										class="project_link">${outsource.projectName}</a></td>
									<td><a href="<%=request.getContextPath()%>/outsource/${outsource.outSourceId}" target="_blank"
										class="project_link">${outsource.outSourceId}</a></td>
									<td>${outsource.outSourceType}</td>
									<td>${outsource.outSourceStatus}</td>
									<td>${outsource.sendSampleCount}</td>
									<td><fmt:formatDate value="${outsource.sendSampleDate}"
											pattern="yyyy-MM-dd" /></td>
									<td><a href="<%=request.getContextPath()%>/outsource/${outsource.outSourceId}" target="_blank"
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
	<div class="modal fade modal-box" id="modalSelectOSType" tabindex="0"
		role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
		<div class="modal-dialog" style="margin: 300px auto">
			<div class="modal-content" style="top:-100px">
				<div class="modal-body" align="center">
					<h3>请选择外包类型</h3>
					<button class="btn btn-default btn-primary" id="dataAnOs">数据分析外包</button>
					<button class="btn btn-default btn-primary" id="expriOs">实验外包</button>
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
		$(document).ready(function() {
			$("#dataAnOs").click(function() {
				window.location.replace("http://"+window.location.host+"/admin/outsource/addData-redirect");
				return false;
			});
			$("#expriOs").click(function() {
				window.location.replace("http://"+window.location.host+"/admin/outsource/addExp-redirect");
				return false;
			});
		});
	</script>


</body>

</html>