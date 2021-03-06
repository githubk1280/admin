<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<%@ page import="com.tmrasys.domain.Employee" %>
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
															<div class="col-md-4 col-sm-12 col-xs-12">
																<div>
																	<label>项目编号 </label> 
																	<label id="projectIDLbl" class="warning-style">该字段不允许为空</label>
																</div>
																<div>
																	<form:select class="form-control" ng-model="selected"  path="projectId" style="width:80%;">
																   		<option value="">-- 请选择 --</option>
																   		<option ng-repeat="item in idAndPrincipal" value="{{ item.projectId }}">{{ item.projectId }}</option>
																	</form:select>
																</div>
															</div>
															<div class="col-md-4 col-sm-12 col-xs-12">
																<div>
																	<label>合同编号 </label>
																</div>
																<div>
																	<input type="text" class="form-control input-style" readonly="readonly" value="自动生成"/>
																</div>
															</div>
															<div class="col-md-4 col-sm-12 col-xs-12">
																<div>
																	<label>合同签订人 </label>
																	<label id="signPersonNameBLbl" class="warning-style">该字段不允许为空</label>
																</div>
																<div>
																	<form:input id="signPersonNameB" path="signPersonNameB" class="form-control input-style" />
																</div>
															</div>
														</div>
														<div class="row row-margin">
															<div class="col-md-4 col-sm-12 col-xs-12">
																<div>
																	<label>合同状态</label>
																	<label id="contractTypeLbl" class="warning-style">该字段不允许为空</label>
																</div>
																<div>
																	<form:input id="contractType" path="contractType" class="form-control input-style" />
																</div>
															</div>
															<div class="col-md-4 col-sm-12 col-xs-12">
																<div>
																	<label>纸质合同编号 </label>
																	<label id="contractPaperIdLbl" class="warning-style">该字段不允许为空</label>
																</div>
																<div>
																	<form:input id="contractPaperId" path="contractPaperId" class="form-control input-style" />
																</div>
															</div>
															<div class="col-md-4 col-sm-12 col-xs-12">
																<div>
																	<label>签订日期</label> 
																	<label id="signDateLbl" class="warning-style">该字段不允许为空</label> 
																	<label id="signDateFormatLbl" class="warning-style">日期格式不正确</label>
																	<label id="issignDateLbl" class="warning-style">您输入的日期不存在</label>
																</div>
																<div>
																	<form:input id="signDate" path="signDate" class="form-control input-style" />
																</div>
															</div>
														</div>
														<div class="row row-margin">
															<div class="col-md-4 col-sm-12 col-xs-12">
																<div>
																	<label>开始日期</label>
																	<label id="startDateLbl" class="warning-style">该字段不允许为空</label>
																	<label id="startDateFormatLbl" class="warning-style">日期格式不正确</label>
																	<label id="isstartDateLbl" class="warning-style">您输入的日期不存在</label>
																</div>
																<div>
																	<div>
																		<form:input id="startDate" path="startDate" class="form-control input-style" />
																	</div>
																</div>
															</div>
															<div class="col-md-4 col-sm-12 col-xs-12">
																<div>
																	<label>结束日期</label>
																	<label id="endDateLbl" class="warning-style">该字段不允许为空</label>
																	<label id="endDateFormatLbl" class="warning-style">日期格式不正确</label>
																	<label id="dateComparedLbl" class="warning-style">结束日期必须大于开始日期</label>
																	<label id="isendDateLbl" class="warning-style">您输入的日期不存在</label>
																</div>
																<div>
																	<div>
																		<form:input id="endDate" path="endDate" class="form-control input-style" />
																	</div>
																</div>
															</div>
															<div class="col-md-4 col-sm-12 col-xs-12">
																<div>
																	<label>合同金额</label>
																	<label id="totalAmountLbl" class="warning-style">该字段不允许为空</label>
																	<label id="checkTotalAmountLbl" class="warning-style">请输入正确的金额</label>
																</div>
																<div>
																	<div class="input-group input-style"> 
																		<span class="input-group-addon">￥</span>
																		<form:input id="totalAmount" path="totalAmount" class="form-control" />
																		
																	</div>
																</div>
															</div>
														</div>
														<div class="row row-margin">
															<div class="col-md-6 col-sm-12 col-xs-12">
																<div>
																	<label>预付款状态</label>
																</div>
																<div>
																	<div class="pull-left">
																		<label><form:radiobutton path="advancedAmountStatus" id="advancedAmountStatus1" onChange="advanceRadioChange1();"
																		value="未收"  checked="true"/>未收</label> <label> <form:radiobutton id="advancedAmountStatus2"
																		path="advancedAmountStatus" onChange="advanceRadioChange2();" value="已收" />已收
																		</label>
																	</div>
																</div>
															</div>
														</div>
														<div class="row row-margin">
															<div class="col-md-4 col-sm-12 col-xs-12">
																<div>
																	<label>预付款金额</label>
																	<label id="advancedAmountLbl" class="warning-style">该字段不允许为空</label>
																	<label id="checkAdvancedAmountLbl" class="warning-style">请输入正确的金额</label>
																	<label id="advancedAmountComparedTotalAmountLbl" class="warning-style">预付款金额不能大于合同金额</label>
																</div>
																<div>
																	<div class="input-group input-style">
																		<span class="input-group-addon">￥</span>
																		<form:input id="advancedAmount" path="advancedAmount" class="form-control" />
																	</div>
																</div>
															</div>
															<div class="col-md-4 col-sm-12 col-xs-12">
																<div>
																	<label>预付款到账日期</label>
																</div>
																<div>
																	<form:input id="advancedPaymentDate" path="advancedAmountDate" class="form-control input-style"/>
																</div>
															</div>
															<div class="col-md-4 col-sm-12 col-xs-12">
																<div>
																	<label>预付款财务确认人</label>
																</div>
																<div>
																	<form:input id="advancedPaymentPrincipal" path="advancedConfirmer"
																	   class="form-control input-style"  />
																</div>
															</div>
														</div>
														<div class="row row-margin">
															<div class="col-md-6 col-sm-12 col-xs-12">
																<div>
																	<label>尾款状态</label>
																</div>
																<div>
																	<div class="pull-left">
																		<label><form:radiobutton path="balancedAmountStatus" id="balancedAmountStatus1" onChange="balancedRadioChange1();"
																			value="未收" checked="true"/>未收</label> <label> <form:radiobutton id="balancedAmountStatus2" onChange="balancedRadioChange2();"
																			path="balancedAmountStatus" value="已收" />已收
																		</label>
																	</div>
																</div>
															</div>
														</div>
														<div class="row row-margin">
															<div class="col-md-4 col-sm-12 col-xs-12">
																<div>
																	<label>尾款金额</label>
																	<label id="balancedAmountLbl" class="warning-style">该字段不允许为空</label>
																	<label id="checkBalancedAmountLbl" class="warning-style">请输入正确的金额</label>
																	<label id="balancedAmountComparedTotalAmountLbl" class="warning-style">尾款金额不能大于合同金额</label>
																</div>
																<div>
																	<div class="input-group input-style">
																		<span class="input-group-addon">￥</span>
																		<form:input id="balancedAmount" path="balancedAmount" class="form-control" />
																	</div>
																</div>
															</div>
															<div class="col-md-4 col-sm-12 col-xs-12">
																<div>
																	<label>尾款到账日期</label>
																</div>
																<div>
																	<div>
																		<form:input id="balPaymentDate" path="balancedAmountDate" class="form-control  input-style"/>
																	</div>
																</div>
															</div>
															<div class="col-md-4 col-sm-12 col-xs-12">
																<div>
																	<label>尾款财务确认人</label>
																</div>
																<div>
																	<div>
																		<form:input id="balPaymentPrincipal" path="balancedConfirmer" 
																		class="form-control input-style" />
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
		if($("#advancedAmountStatus1").attr("checked")=="checked"){
			$("#advancedPaymentDate").attr("readonly","true");
			$("#advancedPaymentPrincipal").attr("readonly","true");
			$( "#advancedPaymentDate" ).datetimepicker("destroy");
		}
		if($("#balancedAmountStatus1").attr("checked")=="checked"){
			$("#balPaymentDate").attr("readonly","true");
			$("#balPaymentPrincipal").attr("readonly","true");
			$( "#balPaymentDate" ).datetimepicker("destroy");
		}
		
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
	
	function advanceRadioChange1(){
		$("#advancedAmountStatus2").removeAttr("checked","false");
		$("#advancedAmountStatus1").attr("checked","true");
		$("#advancedPaymentDate").attr("readonly","true");
		$("#advancedPaymentPrincipal").attr("readonly","true");
		$( "#advancedPaymentDate" ).datetimepicker("destroy");
	}
	
	function advanceRadioChange2(){
		$("#advancedAmountStatus1").removeAttr("checked","false");
		$("#advancedAmountStatus2").attr("checked","true");
		$("#advancedPaymentDate").removeAttr("readonly");
		$("#advancedPaymentPrincipal").removeAttr("readonly");
		$( "#advancedPaymentDate" ).datetimepicker({
			lang:'ch',
			timepicker:false,
			onClose:function(){
				var ii = $("#advancedPaymentDate").val();
				if(ii!=""){
					var date = new Date(ii);
					var year = date.getFullYear();
					var month = date.getMonth() + 1; 
					if(month<10){
						month = "0" + month;
					}
					var day = date.getDate();
					if(day<10){
						day = "0" + day;
					}
					formatDate = year + "-" + month + "-" + day;
					$("#advancedPaymentDate").val(formatDate);
				}
			},
			validateOnBlur:false
		});
	}
	
	function balancedRadioChange1(){
		$("#balancedAmountStatus2").removeAttr("checked","false");
		$("#balancedAmountStatus1").attr("checked","true");
		$("#balPaymentDate").attr("readonly","true");
		$("#balPaymentPrincipal").attr("readonly","true");
		$( "#balPaymentDate" ).datetimepicker("destroy");
	}
	
	function balancedRadioChange2(){
		$("#balancedAmountStatus1").removeAttr("checked","false");
		$("#balancedAmountStatus2").attr("checked","true");
		$("#balPaymentDate").removeAttr("readonly");
		$("#balPaymentPrincipal").removeAttr("readonly");
		$( "#balPaymentDate" ).datetimepicker({
			lang:'ch',
			timepicker:false,
			onClose:function(){
				var ii = $("#balPaymentDate").val();
				if(ii!=""){
					var date = new Date(ii);
					var year = date.getFullYear();
					var month = date.getMonth() + 1; 
					if(month<10){
						month = "0" + month;
					}
					var day = date.getDate();
					if(day<10){
						day = "0" + day;
					}
					formatDate = year + "-" + month + "-" + day;
					$("#balPaymentDate").val(formatDate);
				}
			},
			validateOnBlur:false
		});
	}
	//balancedAmountStatus1
	
	</script>
</body>
</html>