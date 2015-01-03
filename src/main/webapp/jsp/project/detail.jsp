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
	</div>
		<div id="page-wrapper" class="detailPage">
			<div class="row">
				<div class="col-lg-12">
					<!-- .panel-heading -->
					<div class="panel-body">
						<!----------------------------------------project basic data start ------------------------->
						<form:form action="update" method="post" commandName="project">
						<div class="panel-group" id="accordion">
							<div class="panel panel-default">
								<div class="panel-heading ">
								
									<h3 class="panel-title">
										<strong>项目基本信息</strong>
										
										<a  data-toggle="collapse"  href="#collapseOne" class="panel_a" >
											<span id="arrowProBasicData" class="glyphicon glyphicon-chevron-up" style="color: rgb(0, 0, 0);"></span>
	                                    </a>
	                                    <button id="modifyProBasicData" class="btn btn-default btn-success" 
										 style="margin-right: 10px;float:right; padding:1px 12px" type="button">修改</button>
										<button id="cancelProBasicData" class="btn btn-default btn-success" 
										 style="margin-left: 10px; margin-right: 10px;float:right; padding:1px 12px; display: none" type="reset">取消</button>
										<button id="saveProBasicData" value="1"
										  class="btn btn-default btn-success"
										  style="margin-left: 10px; margin-right: 10px;float:right; padding:1px 12px;display:none" type="submit">保存</button>
										
									</h3>
								</div>
								<div id="collapseOne" class="panel-collapse collapse in">
									<div class="panel-body" id="panelProBasicData">
											<div class="row">
												<div class="col-md-6 col-sm-12 col-xs-12">
													<div>
														<label>项目编号 </label>
													</div>
													<div>
														<form:input id="proBasicProjectID" path="projectId" class="form-control" />
													</div>
												</div>
												<div class="col-md-6 col-sm-12 col-xs-12">
													<div>
														<label>项目名 </label>
													</div>
													<div>
														<form:input id="projectName" path="projectName" class="form-control" />
													</div>
												</div>
											</div>
											<div class="row row-margin">
												<div class="col-md-6 col-sm-12 col-xs-12">
													<div>
														<label>项目类型 </label>
														<label id="projectTypeLbl" class="warning-style">该字段不允许为空</label>
													</div>
													<div>
														<form:input id="projectType" path="projectType" class="form-control" maxlength="3"/>
													</div>
												</div>
												<div class="col-md-6 col-sm-12 col-xs-12">
													<div>
														<label>是否需要发SCI文章</label>
													</div>
													<div class="pull-left">
														<label><form:radiobutton id="needSCI1" path="needSCI" value="Y" />需要
														</label> <label> <form:radiobutton id="needSCI2" path="needSCI"
																value="N" />不需要
														</label>
													</div>
												</div>
											</div>
											<div class="row row-margin">
												<div class="col-md-6 col-sm-12 col-xs-12">
													<div>
														<label>优先级</label>
													</div>
													<div class="pull-left">
														<label><form:radiobutton id="priority1" path="priority" value="1" />高
														</label> <label> <form:radiobutton id="priority2" path="priority"
																value="2" />中
														</label> <label><form:radiobutton id="priority3" path="priority"
																value="3" />低 </label>
													</div>
												</div>
												<div class="col-md-6 col-sm-12 col-xs-12">
													<div>
														<label>是否需要主管协助</label>
													</div>
													<div class="pull-left">
														<label><form:radiobutton id="needPrincipalAssist1"
																path="needPrincipalAssist" value="Y" />是 </label> <label><form:radiobutton id="needPrincipalAssist2"
																path="needPrincipalAssist" value="N" />否 </label>
													</div>
												</div>
											</div>
											<div class="row row-margin">
												<div class="col-md-6 col-sm-12 col-xs-12">
													<div>
														<label>开始日期 </label>
														<label id="startDateLbl" class="warning-style">该字段不允许为空</label>
														<label id="startDateFormatLbl" class="warning-style">日期格式不正确</label>
														<label id="isstartDateLbl" class="warning-style">您输入的日期不存在</label>
													</div>
													<div>
														<form:input id="startDate" path="startDate" class="form-control form_date"  maxlength="10"/>
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
														<form:input id="endDate" path="endDate" class="form-control form_date"  maxlength="10"/>
													</div>
												</div>
											</div>
											<div class="row row-margin">
												<div class="col-md-6 col-sm-12 col-xs-12">
													<div>
														<label>潜在经费</label>
														<label id="potentialExpenditureLbl" class="warning-style">该字段不允许为空</label>
														<label id="checkAmountLbl" class="warning-style">请输入正确的金额</label>
													</div>
													<div>
														<div class="input-group">
															<span class="input-group-addon">￥</span>
															<form:input id="potentialExpenditure" path="potentialExpenditure"  maxlength="15" class="form-control" />
														</div>
													</div>
												</div>
												<div class="col-md-6 col-sm-12 col-xs-12">
													<div>
														<label>样本数量</label>
														<label id="sampleCountLbl"  class="warning-style">该字段不允许为空</label>
														<label id="checkSampleAmountLbl" class="warning-style">请输入正确的样本数量</label>
													</div>
													<div>
														<div>
															<form:input id="sampleCount" path="sampleCount" class="form-control" maxlength="10"/>
														</div>
													</div>
												</div>
											</div>
											<div class="row row-margin">
												<div class="col-md-6 col-sm-12 col-xs-12">
													<div>
														<label>技术平台</label>
														<label id="platformDemandLbl" class="warning-style">该字段不允许为空</label>
													</div>
													<div>
														<div>
															<form:input id="platformDemand" path="platformDemand" class="form-control" maxlength="10"/>
														</div>
													</div>
												</div>
												<div class="col-md-6 col-sm-12 col-xs-12">
													<div>
														<label>研究方向 </label>
														<label id="researchDirectionLbl" class="warning-style">该字段不允许为空</label>
													</div>
													<div>
														<form:input id="researchDirection" path="researchDirection" class="form-control" maxlength="10"/>
													</div>
												</div>
											</div>
											<div class="row row-margin">
												<div class="col-md-6 col-sm-12 col-xs-12">
													<div>
														<label>10x1000合作 </label>
													</div>
													<div>
														<div class="pull-left">
															<label><form:radiobutton id="hasCorporatedIntention1"
																	path="hasCorporatedIntention" value="Y" />是 </label> <label><form:radiobutton id="hasCorporatedIntention2"
																	path="hasCorporatedIntention" value="N" />否 </label>
														</div>
													</div>
												</div>
												<div class="col-md-6 col-sm-12 col-xs-12">
													<div>
														<label>课题方案</label>
													</div>
													<div>
														<div class="pull-left">
															<label><form:radiobutton id="needProjectPlan1" path="needProjectPlan"
																	value="Y" />需要 </label> <label><form:radiobutton id="needProjectPlan2"
																	path="needProjectPlan" value="N" />不需要 </label>
														</div>
													</div>

												</div>
											</div>
											<div class="row row-margin">
												<div class="col-md-6 col-sm-12 col-xs-12">
													<div>
														<label>项目内容 </label>
														<label id="projectContentLbl" class="warning-style">该字段不允许为空</label>
													</div>
													<div>
														<form:textarea id="projectContent" path="projectContent" class="form-control"
															rows="8" />
													</div>
												</div>
											</div>
											<div class="row row-margin">
												<div class="col-md-6 col-sm-12 col-xs-12">
													<div>
														<label>项目备注 </label>
													</div>
													<div>
														<form:textarea path="projectNote" class="form-control"
															rows="8" />
													</div>
												</div>
											</div>
										</div>
								</div>
							</div>
						 </div>
						</form:form>
						<!-- include projectstatus page -->
						<%@ include file="projectstatus.jsp"%>
						<!-- include projectoutsource page -->
						<%@ include file="projectOutSource.jsp"%>
						<%@ include file="projectCustomer.jsp"%>
				</div>
			</div>							
      </div>
</div>

		<!-- /#wrapper -->
		<%@ include file="../common/modal.jsp"%>
		<%@ include file="../comm-fragement/main-js"%>
		<%@ include file="../comm-fragement/projectVal-js"%>
		<%@ include file="../comm-fragement/modifyOutsourceVal-js"%>
		<%@ include file="../comm-fragement/modifyCustomerVal-js"%>
		
		<script type="text/javascript">
	    $(document).ready(function(){
	    	$(".pagination li ").click(function(){
    		  $(this).addClass('active')
    	        .siblings().removeClass('active');
    	  	});
	    	$("#arrow5").click(function(){
	    		if($(this).attr("class")==("glyphicon glyphicon-chevron-down")){
	    			$(this).attr("class","glyphicon glyphicon-chevron-up");
	    		}else{
	    			$(this).attr("class","glyphicon glyphicon-chevron-down");
	    		}
             });
	    	
	   	});
	    
	    $("#link_newStatus").click(function(){
			$("#proStatusDate").css('display','block');
			$("#proStatusUpdate").css('display','block');
			$("#proStatusContent").css('display','block');
			$("#cancelProjectStatus").css('display','block');
			$("#saveProjectStatus").css('display','block');
		});
	    $("#cancelProjectStatus").click(function(){
	    	$("#proStatusDate").css('display','none');
			$("#proStatusUpdate").css('display','none');
			$("#proStatusContent").css('display','none');
			$("#proStatusBtn").css('display','none');
			$("#cancelProjectStatus").css('display','none');
			$("#saveProjectStatus").css('display','none');
	    });
	    
	    $("#link_newStatus").click(function(){
			$("#proStatusDate").css('display','block');
			$("#proStatusUpdate").css('display','block');
			$("#proStatusContent").css('display','block');
			$("#proStatusBtn").css('display','block');
			$("#btnCancel").css('display','block');
		});
	    
	 
	    
	    function projectStatusController($scope, $http) {
			$scope.psToggle = function() {
				var target = $("#arrowProStatus");
				if (target.attr("class") == ("glyphicon glyphicon-chevron-down")) {
					$http.get("/admin/status/ajax/proHisBasic/${project.projectId}").success(
						function(data) {
							if (data.success == true) {
								$scope.progress = JSON.parse(data.data);
							}
							// format
							//alert($scope.progress.percentage);
							if($scope.progress.percentage<=30){
								$("#progressBarStyle").addClass("progress-bar-danger");
							}
							if($scope.progress.percentage>30&&$scope.progress.percentage<=60){
								$("#progressBarStyle").addClass("progress-bar-warning");
							}
							if($scope.progress.percentage>60&&$scope.progress.percentage<=90){
								$("#progressBarStyle").addClass("progress-bar");
							}
							if($scope.progress.percentage>90){
								$("#progressBarStyle").addClass("progress-bar-success");
							}
							//$scope.progress.progressDate = $scope
								//	.getTimeString($scope.progress.progressDate);
						}).error(function(err) {
						alert("获取失败，请重试!");
					});
					target.attr("class", "glyphicon glyphicon-chevron-up");
				} else {
					target.attr("class", "glyphicon glyphicon-chevron-down");
				}
			};
		
			$scope.getTimeString = function(longTimes) {
				var d = new Date(longTimes);
				var result = "";
				result += d.getFullYear();
				result += "-";
				result += d.getMonth();
				result += "-";
				result += d.getDay() > 11 ? d.getDay() : "0" + d.getDay();
				result += " ";
				result += d.getHours() > 11 ? d.getHours() : "0" + d.getHours();
				result += ":";
				result += d.getMinutes() > 11 ? d.getMinutes() : "0" + d.getMinutes();
				result += ":";
				result += d.getSeconds() > 11 ? d.getSeconds() : "0" + d.getSeconds();
				return result;
			};
		
			$scope.saveProjectStatus = function() {
				$http({
		            method:'post',
		            url:'/admin/status/ajax/add',
		            data: $scope.progress
				}).success(function (data){
					if(data.success == true){
						alert("状态更新成功!");
					}
				}).error(function (err){
					alert(err);
				});
			};
			
			$scope.cancelProjectStatus = function(){
				$http.get("/admin/status/ajax/${project.projectId}").success(
						function(data) {
							if (data.success == true) {
								$scope.progress = JSON.parse(data.data);
							}
							if($scope.progress.percentage<=30){
								$("#progressBarStyle").addClass("progress-bar-danger");
							}
							if($scope.progress.percentage>30&&$scope.progress.percentage<=60){
								$("#progressBarStyle").addClass("progress-bar-warning");
							}
							if($scope.progress.percentage>60&&$scope.progress.percentage<=90){
								$("#progressBarStyle").addClass("progress-bar");
							}
							if($scope.progress.percentage>90){
								$("#progressBarStyle").addClass("progress-bar-success");
							}
							//format
							$scope.progress.progressDate = $scope
									.getTimeString($scope.progress.progressDate);
							
						}).error(function(err) {
						alert("获取失败，请重试!");
					});
			}
		}
	    
	    
	    
	    function projectCustomerController($scope, $http) {
			$scope.csToggle = function() {
				var target = $("#arrowCustomerInfo");
				if (target.attr("class") == ("glyphicon glyphicon-chevron-down")) {
					$http.get("/admin/customer/ajax/${project.projectId}").success(
						function(data) {
							if (data.success == true) {
								$scope.customers = JSON.parse(data.data);
							}
							if($scope.customers){
								if($scope.customers.length>0){
									$scope.customer0 = $scope.customers[0];
									if($scope.customers.length>1)$scope.customer1 = $scope.customers[1];
									if($scope.customers.length>2)$scope.customer2 = $scope.customers[2];
								}
							}
						}).error(function(err) {
						alert("获取失败，请重试!");
					});
					target.attr("class", "glyphicon glyphicon-chevron-up");
				} else {
					target.attr("class", "glyphicon glyphicon-chevron-down");
				}
			};
			
			$scope.cancelClick = function(){
				$http.get("/admin/customer/ajax/${project.projectId}").success(
						function(data) {
							if (data.success == true) {
								$scope.customers = JSON.parse(data.data);
							}
							if($scope.customers){
								if($scope.customers.length>0){
									$scope.customer0 = $scope.customers[0];
									if($scope.customers.length>1)$scope.customer1 = $scope.customers[1];
									if($scope.customers.length>2)$scope.customer2 = $scope.customers[2];
								}
							}
						}).error(function(err) {
						alert("获取失败，请重试!");
					});
			}
		
			$scope.updateCustomer = function() {
				//for add
				var saveCustomInfoType = $("#saveCustomInfo").attr("type");
				if(saveCustomInfoType!="button"){
					var pId = $('#projectIdForCustomerAdd').val();
					if($scope.customer0){
						$scope.customer0.projectId = pId;
						$scope.customer0.principalNumber = 0;
					}
					if($scope.customer1){
						$scope.customer1.projectId = pId;
						$scope.customer1.principalNumber = 1;
					}
					if($scope.customer2){
						$scope.customer2.projectId = pId;
						$scope.customer2.principalNumber = 2;
					}
					var customers = [];
					($scope.customer0) && customers.push($scope.customer0);
					($scope.customer1) && customers.push($scope.customer1);
					($scope.customer2) && customers.push($scope.customer2);
					if(customers.length >0){
						$http({
				            method:'post',
				            url:'/admin/customer/ajax/update',
				            data: customers,
						}).success(function (data){
							if(data.success == true){
								//alert("更新成功!");
							}
						}).error(function (err){
							alert(err);
						});
					}
				}
				
			};
		}
	    
    </script>
</body>

</html>