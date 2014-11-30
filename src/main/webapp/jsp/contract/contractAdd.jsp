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
								<form:form action="add" method="post" commandName="contract">
									<div class="panel-body" ng-controller="contractController">
										<div class="panel-group" id="accordion">
											<div class="panel panel-default">
												<div class="panel-heading ">
													<h3 class="panel-title">
														<strong>合同信息</strong>
													</h3>
												</div>
												<div id="collapseOne" class="panel-collapse collapse in">
													<div id="panelContractData" class="panel-body">
														<div class="row">
															<div class="col-md-6 col-sm-12 col-xs-12">
																<div>
																	<label>项目编号 </label> 
																	<label id="projectIDLbl" class="warning-style">该字段不允许为空</label>
																</div>
																<div>
																	<form:select class="form-control" ng-model="selected" ng-options="m.projectId for m in idAndPrincipal" path="projectId" >
																   		<option value="">-- 请选择 --</option>
																	</form:select>
																</div>
															</div>
															<div class="col-md-6 col-sm-12 col-xs-12">
																<div>
																	<label>合同编号 </label>
																</div>
																<div>
																	<input type="text" class="form-control" readonly="readonly" value="自动生成"/>
																</div>
															</div>
														</div>
														<div class="row row-margin">
															<div class="col-md-6 col-sm-12 col-xs-12">
																<div>
																	<label>合同签订人 </label>
																	<label id="signPersonNameBLbl" class="warning-style">该字段不允许为空</label>
																</div>
																<div>
																	<form:input id="signPersonNameB" path="signPersonNameB" class="form-control" />
																</div>
															</div>
															<div class="col-md-6 col-sm-12 col-xs-12">
																<div>
																	<label>合同状态</label>
																	<label id="contractTypeLbl" class="warning-style">该字段不允许为空</label>
																</div>
																<div>
																	<form:input id="contractType" path="contractType" class="form-control" />
																</div>
															</div>
														</div>
														
														<div class="row row-margin">
															<div class="col-md-6 col-sm-12 col-xs-12">
																<div>
																	<label>纸质合同编号 </label>
																	<label id="contractPaperIdLbl" class="warning-style">该字段不允许为空</label>
																</div>
																<div>
																	<form:input id="contractPaperId" path="contractPaperId" class="form-control" />
																</div>
															</div>
															<div class="col-md-6 col-sm-12 col-xs-12">
																<div>
																	<label>签订日期</label> 
																	<label id="signDateLbl" class="warning-style">该字段不允许为空</label> 
																	<label id="signDateFormatLbl" class="warning-style">日期格式不正确</label>
																	<label id="issignDateLbl" class="warning-style">您输入的日期不存在</label>
																</div>
																<div>
																	<form:input id="signDate" path="signDate" class="form-control form_date" />
																</div>
															</div>
														</div>
														<div class="row row-margin">
															<div class="col-md-6 col-sm-12 col-xs-12">
																<div>
																	<label>开始日期</label>
																	<label id="startDateLbl" class="warning-style">该字段不允许为空</label>
																	<label id="startDateFormatLbl" class="warning-style">日期格式不正确</label>
																	<label id="isstartDateLbl" class="warning-style">您输入的日期不存在</label>
																</div>
																<div>
																	<div>
																		<form:input id="startDate" path="startDate" class="form-control form_date" />
																	</div>
																</div>
															</div>
															<div class="col-md-6 col-sm-12 col-xs-12">
																<div>
																	<label>结束日期</label>
																	<label id="endDateLbl" class="warning-style">该字段不允许为空</label>
																	<label id="endDateFormatLbl" class="warning-style">日期格式不正确</label>
																	<label id="dateComparedLbl" class="warning-style">结束日期必须大于开始日期</label>
																	<label id="isendDateLbl" class="warning-style">您输入的日期不存在</label>
																</div>
																<div>
																	<div>
																		<form:input id="endDate" path="endDate" class="form-control form_date" />
																	</div>
																</div>
															</div>
														</div>
														<div class="row row-margin">
															<div class="col-md-6 col-sm-12 col-xs-12">
																<div>
																	<label>合同金额</label>
																	<label id="totalAmountLbl" class="warning-style">该字段不允许为空</label>
																	<label id="checkTotalAmountLbl" class="warning-style">请输入正确的金额</label>
																</div>
																<div>
																	<div class="input-group">
																		<span class="input-group-addon">￥</span>
																		<form:input id="totalAmount" path="totalAmount" class="form-control" />
																		
																	</div>
																</div>
															</div>
															<div class="col-md-6 col-sm-12 col-xs-12"></div>
														</div>
														<div class="row row-margin">
															<div class="col-md-6 col-sm-12 col-xs-12">
																<div>
																	<label>预付款金额</label>
																	<label id="advancedAmountLbl" class="warning-style">该字段不允许为空</label>
																	<label id="checkAdvancedAmountLbl" class="warning-style">请输入正确的金额</label>
																	<label id="advancedAmountComparedTotalAmountLbl" class="warning-style">预付款金额不能大于合同金额</label>
																</div>
																<div>
																	<div class="input-group">
																		<span class="input-group-addon">￥</span>
																		<form:input id="advancedAmount" path="advancedAmount" class="form-control" />
																		
																	</div>
																</div>

															</div>
															<div class="col-md-6 col-sm-12 col-xs-12">
																<div>
																	<label>预付款状态</label>
																</div>
																<div class="pull-left">
																	<label><form:radiobutton path="advancedAmountStatus" id="advancedAmountStatus1"
																		value="未收" checked="true"/>未收</label> <label> <form:radiobutton id="advancedAmountStatus2"
																		path="advancedAmountStatus" value="已收" />已收
																	</label>
																</div>
															</div>
														</div>
														<div class="row row-margin">
															<div class="col-md-6 col-sm-12 col-xs-12">
																<div>
																	<label>尾款金额</label>
																	<label id="balancedAmountLbl" class="warning-style">该字段不允许为空</label>
																	<label id="checkBalancedAmountLbl" class="warning-style">请输入正确的金额</label>
																	<label id="balancedAmountComparedTotalAmountLbl" class="warning-style">尾款金额不能大于合同金额</label>
																</div>
																<div>
																	<div class="input-group">
																		<span class="input-group-addon">￥</span>
																		<form:input id="balancedAmount" path="balancedAmount" class="form-control" />
																		
																	</div>
																</div>
															</div>
															<div class="col-md-6 col-sm-12 col-xs-12">
																<div>
																	<label>尾款状态</label>
																</div>
																<div>
																	<div class="pull-left">
																		<label><form:radiobutton path="balancedAmountStatus" id="balancedAmountStatus1"
																			value="未收" checked="true"/>未收</label> <label> <form:radiobutton id="balancedAmountStatus2"
																			path="balancedAmountStatus" value="已收" />已收
																		</label>
																	</div>
																</div>

															</div>
														</div>
														<div class="row row-margin">
															<div class="col-md-6 col-sm-12 col-xs-12">
																<button id="save" class="btn btn-default btn-primary" type="submit">保存</button>
																<button id="cancel" class="btn btn-default btn-primary" type="button">取消</button>
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
	<%@ include file="../comm-fragement/addContractVal-js"%>
	<script type="text/javascript">
	$(document).ready(function() {
		$("#cancel").click(function() {
			window.location.replace("http://"+window.location.host+"/admin/contract/pages/1");			
			return false;
		});
		
		
	});
	function contractController($scope, $http) {
		$scope.selected = '';
		$http.get("/admin/sample/ajax/projectIdPrincipal").success(
				function(data) {
					if (data.success == true) {
						$scope.idAndPrincipal = JSON.parse(data.data);
					}
				}).error(function(err) {
				alert("获取失败，请重试!");
				});
	}
	</script>
</body>

</html>