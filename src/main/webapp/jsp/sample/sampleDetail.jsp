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
		<!----------------------------------------project basic data start ------------------------->
		<div id="page-wrapper" class="detailPage">
			<div class="row">
				<div class="col-lg-12">
				<form:form action="update" method="post" commandName="sample">
					<div class="panel-body">
						<div class="panel-group" id="accordion">
							<div class="panel panel-default">
								<div class="panel-heading ">
									<h3 class="panel-title">
										<strong>添加新的项目信息</strong>
										<button id="cancelProBasicData" value="2"
											class="btn btn-default btn-success pull-right"
											style="margin-left: 10px; margin-right: 10px; display: none" type="reset">取消</button>
										<button id="update" value="1"
											class="btn btn-default btn-success pull-right"
											style="margin-left: 10px; margin-right: 10px" type="submit">修改</button>
										<button id="create" class="btn btn-default btn-success"
											style="margin-left: 10px;">创建新的样本</button>
										<!-- <a  data-toggle="collapse"  href="#collapseOne" class="panel_a"><strong>link</strong></a> -->
									</h3>
								</div>
								<div id="collapseOne" class="panel-collapse collapse in">
									<div class="panel-body">
										<div class="row">
											<div class="col-md-6 col-sm-12 col-xs-12">
												<div>
													<label>所属项目编号:</label>
												</div>
												<div>
													<form:input type="text" style="color: red;" class="form-control" path="projectId" readonly="true"/>
												</div>
											</div>
										</div>
										<div class="row">
											<div class="col-md-6 col-sm-12 col-xs-12">
												<div>
													<label>样品编号 </label>
												</div>
												<div>
													<form:input type="text" class="form-control" placeholder="自动生成" path="sampleId" readonly="true"/>
												</div>
											</div>
											<div class="col-md-6 col-sm-12 col-xs-12">
												<div>
													<label>样品来源单位 </label>
												</div>
												<div>
													<form:input path="sourceUnit" class="form-control"/>
												</div>
											</div>
										</div>
										
										<div class="row row-margin">
											<div class="col-md-6 col-sm-12 col-xs-12">
												<div>
													<label>样品负责人</label>
												</div>
												<div>
													<form:input path="samplePrincripal" class="form-control"/>
												</div>
											</div>
											<div class="col-md-6 col-sm-12 col-xs-12">
												<div>
													<label>项目负责人</label>
												</div>
												<div>
													<form:input path="projectPrincripal" class="form-control"/>
												</div>
											</div>
										</div>
										
										
										<div class="row row-margin">
											<div class="col-md-6 col-sm-12 col-xs-12">
												<div>
													<label>是否外送</label>
												</div>
												<div class="pull-left">
													<label><form:radiobutton path="isDelivery" value="Y" />需要
														</label> <label> <form:radiobutton path="isDelivery"
																value="N" />不需要
														</label>
												</div>
											</div>
											<div class="col-md-6 col-sm-12 col-xs-12">
												<div>
													<label>样本类型</label>
												</div>
												<div class="pull-left">
													<label><form:radiobutton path="deliveryType" value="类型1" />类型1
														</label> <label> <form:radiobutton path="deliveryType"
																value="类型2" />类型2
														</label>
												</div>
											</div>
										</div>
										<div class="row row-margin">
											<div class="col-md-6 col-sm-12 col-xs-12">
												<div>
													<label>样品数量 </label>
												</div>
												<div>
													<form:input path="sampleAmount" class="form-control"/>
												</div>
											</div>
											<div class="col-md-6 col-sm-12 col-xs-12">
												<div>
													<label>外送编号</label>
												</div>
												<div>
													<form:input path="deliveryNum" class="form-control"/>
												</div>
											</div>
										</div>
										<div class="row row-margin">
											<div class="col-md-6 col-sm-12 col-xs-12">
												<div>
													<label>收样日期</label>
												</div>
												<div>
													<div>
														<form:input path="reciveDate" class="form-control"/>
													</div>
												</div>
											</div>
											<div class="col-md-6 col-sm-12 col-xs-12">
												<div>
													<label>报告日期</label>
												</div>
												<div>
													<div>
														<form:input path="reportDate" class="form-control"/>
													</div>
												</div>
											</div>
										</div>
										<div class="row row-margin">
											<div class="col-md-6 col-sm-12 col-xs-12">
												<div>
													<label>存放位置</label>
												</div>
												<div>
													<form:input path="diskLocation" class="form-control" readonly="true"/>
												</div>
											</div>
										</div>
									</div>
								</div>
							</div>
						</div>
					</div>
					</form:form>
				</div>
			</div>
		</div>
		<!-- .panel-body -->
	</div>
	<!-- /.panel -->
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
				window.location.replace("http://"+window.location.host+"/admin/sample/add-redirect");
				return false;
			});

		});
	</script>

</body>

</html>