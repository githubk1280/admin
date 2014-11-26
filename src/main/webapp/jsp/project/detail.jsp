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
										<button id="cancelProBasicData" class="btn btn-default btn-success" 
										 style="margin-left: 10px; margin-right: 10px; display: none" type="reset">取消</button>
										<button id="saveProBasicData" value="1"
										  class="btn btn-default btn-success"
										  style="margin-left: 10px; margin-right: 10px;display:none" type="submit">保存</button>
										<button id="modifyProBasicData" class="btn btn-default btn-success"
											style="margin-left: 10px;" type="button">修改</button>
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
														<form:input path="projectType" class="form-control" maxlength="3"/>
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
														<form:input path="startDate" class="form-control form_date"  maxlength="10"/>
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
														<form:input path="endDate" class="form-control form_date"  maxlength="10"/>
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
															<form:input path="potentialExpenditure"  maxlength="15" class="form-control" />
															<span class="input-group-addon"> .00</span>
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
															<form:input path="sampleCount" class="form-control" maxlength="10"/>
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
															<form:input path="platformDemand" class="form-control" maxlength="10"/>
														</div>
													</div>
												</div>
												<div class="col-md-6 col-sm-12 col-xs-12">
													<div>
														<label>研究方向 </label>
														<label id="researchDirectionLbl" class="warning-style">该字段不允许为空</label>
													</div>
													<div>
														<form:input path="researchDirection" class="form-control" maxlength="10"/>
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
															<label><form:radiobutton
																	path="hasCorporatedIntention" value="Y" />是 </label> <label><form:radiobutton
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
															<label><form:radiobutton path="needProjectPlan"
																	value="Y" />需要 </label> <label><form:radiobutton
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
														<form:textarea path="projectContent" class="form-control"
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
						
						<div class="panel panel-default">
							<div class="panel-heading">
								<h3 class="panel-title">
									<strong>客户信息</strong> <a data-toggle="collapse"s
										href="#collapseFour" class="panel_a"> <span
										id="arrowCustomerInfo"
										class="glyphicon glyphicon-chevron-down"
										style="color: rgb(0, 0, 0);"></span>
									</a>
									<button id="saveCustomInfo" value="1"
										class="btn btn-default btn-success"
										style="margin-left: 10px;" type="submit">修改</button>
									<button id="cancelCustomInfo" value="2"
										class="btn btn-default btn-success"
										style="margin-left: 10px; display: none">取消</button>
								</h3>
							</div>
							<div id="collapseFour" class="panel-collapse collapse" style="">
								<div id="panelCustomerInfo" class="panel-body">
									<div class="row">
										<div class="col-md-6">
											<div>
												<label>客户级别</label>
											</div>
											<div class="pull-left">
												<label><input type="radio" name="optionsRadios17"
													id="optionsRadios17" value="option17" checked>高 </label> <label><input
													type="radio" name="optionsRadios18" id="optionsRadios18"
													value="option18">中 </label> <label><input
													type="radio" name="optionsRadios19" id="optionsRadios19"
													value="option19">低 </label>
											</div>
										</div>
									</div>
									<div class="row">
										<div class="col-md-12">
											<div class="pull-left page-header">
												<h5>
													<strong>项目主要负责人</strong>
												</h5>
											</div>
										</div>
									</div>
									<div class="row">
										<div class="col-md-6 col-sm-12 col-xs-12">
											<div>
												<label>项目编号 </label>
											</div>
											<div>
												<input id="customerProjectID" type="text"
													class="form-control">
											</div>
										</div>
										<div class="col-md-6 col-sm-12 col-xs-12">
											<div>
												<label>姓名</label>
											</div>
											<div>
												<input type="text" class="form-control">
											</div>
										</div>
									</div>
									<div class="row">
										<div class="col-md-6 col-sm-12 col-xs-12">
											<div>
												<label>性别 </label>
											</div>
											<div>
												<label><input type="radio" name="optionsRadios18"
													id="optionsRadios18" value="option18">男</label> <label><input
													type="radio" name="optionsRadios19" id="optionsRadios19"
													value="option19">女 </label>
											</div>
										</div>
										<div class="col-md-6 col-sm-12 col-xs-12">
											<div>
												<label>年龄</label>
											</div>
											<div>
												<input type="text" class="form-control">
											</div>
										</div>
									</div>
									<div class="row">
										<div class="col-md-6 col-sm-12 col-xs-12">
											<div>
												<label>联系电话</label>
											</div>
											<div>
												<input type="text" class="form-control">
											</div>
										</div>
										<div class="col-md-6 col-sm-12 col-xs-12">
											<div>
												<label>联系手机</label>
											</div>
											<div>
												<input type="text" class="form-control">
											</div>
										</div>
									</div>
									<div class="row">
										<div class="col-md-6 col-sm-12 col-xs-12">
											<div>
												<label>工作单位 </label>
											</div>
											<div>
												<input type="text" class="form-control">
											</div>
										</div>
										<div class="col-md-6 col-sm-12 col-xs-12">
											<div>
												<label>科室/部门</label>
											</div>
											<div>
												<input type="text" class="form-control">
											</div>
										</div>
									</div>
									<div class="row">
										<div class="col-md-6 col-sm-12 col-xs-12">
											<div>
												<label>职位 </label>
											</div>
											<div>
												<input type="text" class="form-control">
											</div>
										</div>
										<div class="col-md-6 col-sm-12 col-xs-12">
											<div>
												<label>电子邮件</label>
											</div>
											<div>
												<input type="text" class="form-control">
											</div>
										</div>
									</div>
									<div class="row">
										<div class="col-md-6 col-sm-12 col-xs-12">
											<div>
												<label>联系地址 </label>
											</div>
											<div>
												<input type="text" class="form-control">
											</div>
										</div>
										<div class="col-md-6 col-sm-12 col-xs-12">
											<div>
												<label>研究方向 </label>
											</div>
											<div>
												<input type="text" class="form-control">
											</div>
										</div>
									</div>
				
				
									<div class="row">
										<div class="col-md-12">
											<div class="pull-left  page-header">
												<h5>
													<strong>项目第一联系人</strong>
												</h5>
											</div>
										</div>
									</div>
									<div class="row">
										<div class="col-md-6 col-sm-12 col-xs-12">
											<div>
												<label>项目编号 </label>
											</div>
											<div>
												<input type="text" class="form-control">
											</div>
										</div>
										<div class="col-md-6 col-sm-12 col-xs-12">
											<div>
												<label>姓名 </label>
											</div>
											<div>
												<input type="text" class="form-control">
											</div>
										</div>
									</div>
									<div class="row">
										<div class="col-md-6 col-sm-12 col-xs-12">
											<div>
												<label>性别 </label>
											</div>
											<div>
												<input type="text" class="form-control">
											</div>
										</div>
										<div class="col-md-6 col-sm-12 col-xs-12">
											<div>
												<label>年龄 </label>
											</div>
											<div>
												<input type="text" class="form-control">
											</div>
										</div>
									</div>
									<div class="row">
										<div class="col-md-6 col-sm-12 col-xs-12">
											<div>
												<label>联系电话 </label>
											</div>
											<div>
												<input type="text" class="form-control">
											</div>
										</div>
										<div class="col-md-6 col-sm-12 col-xs-12">
											<div>
												<label>联系手机 </label>
											</div>
											<div>
												<input type="text" class="form-control">
											</div>
										</div>
									</div>
									<div class="row">
										<div class="col-md-6 col-sm-12 col-xs-12">
											<div>
												<label>工作单位 </label>
											</div>
											<div>
												<input type="text" class="form-control">
											</div>
										</div>
										<div class="col-md-6 col-sm-12 col-xs-12">
											<div>
												<label>科室/部门 </label>
											</div>
											<div>
												<input type="text" class="form-control">
											</div>
										</div>
									</div>
									<div class="row">
										<div class="col-md-6 col-sm-12 col-xs-12">
											<div>
												<label>职位 </label>
											</div>
											<div>
												<input type="text" class="form-control">
											</div>
										</div>
										<div class="col-md-6 col-sm-12 col-xs-12">
											<div>
												<label>电子邮件 </label>
											</div>
											<div>
												<input type="text" class="form-control">
											</div>
										</div>
									</div>
									<div class="row">
										<div class="col-md-6 col-sm-12 col-xs-12">
											<div>
												<label>联系地址 </label>
											</div>
											<div>
												<input type="text" class="form-control">
											</div>
										</div>
										<div class="col-md-6 col-sm-12 col-xs-12">
											<div>
												<label>研究方向 </label>
											</div>
											<div>
												<input type="text" class="form-control">
											</div>
										</div>
									</div>
									<div class="row">
										<div class="col-md-6 col-sm-12 col-xs-12">
											<div>
												<label>与负责人关系 </label>
											</div>
											<div>
												<input type="text" class="form-control">
											</div>
										</div>
										<div class="col-md-6 col-sm-12 col-xs-12">
											<div>
												<label>负责内容 </label>
											</div>
											<div>
												<input type="text" class="form-control">
											</div>
										</div>
									</div>
				
									<div class="row">
										<div class="col-md-12">
											<div class="pull-left page-header">
												<h5>
													<strong>项目第二联系人</strong>
												</h5>
											</div>
										</div>
									</div>
									<div class="row">
										<div class="col-md-6 col-sm-12 col-xs-12">
											<div>
												<label>项目编号 </label>
											</div>
											<div>
												<input type="text" class="form-control">
											</div>
										</div>
										<div class="col-md-6 col-sm-12 col-xs-12">
											<div>
												<label>姓名 </label>
											</div>
											<div>
												<input type="text" class="form-control">
											</div>
										</div>
									</div>
									<div class="row">
										<div class="col-md-6 col-sm-12 col-xs-12">
											<div>
												<label>性别 </label>
											</div>
											<div>
												<input type="text" class="form-control">
											</div>
										</div>
										<div class="col-md-6 col-sm-12 col-xs-12">
											<div>
												<label>年龄 </label>
											</div>
											<div>
												<input type="text" class="form-control">
											</div>
										</div>
									</div>
									<div class="row">
										<div class="col-md-6 col-sm-12 col-xs-12">
											<div>
												<label>联系电话 </label>
											</div>
											<div>
												<input type="text" class="form-control">
											</div>
										</div>
										<div class="col-md-6 col-sm-12 col-xs-12">
											<div>
												<label>联系手机 </label>
											</div>
											<div>
												<input type="text" class="form-control">
											</div>
										</div>
									</div>
									<div class="row">
										<div class="col-md-6 col-sm-12 col-xs-12">
											<div>
												<label>工作单位 </label>
											</div>
											<div>
												<input type="text" class="form-control">
											</div>
										</div>
										<div class="col-md-6 col-sm-12 col-xs-12">
											<div>
												<label>科室/部门 </label>
											</div>
											<div>
												<input type="text" class="form-control">
											</div>
										</div>
									</div>
									<div class="row">
										<div class="col-md-6 col-sm-12 col-xs-12">
											<div>
												<label>职位 </label>
											</div>
											<div>
												<input type="text" class="form-control">
											</div>
										</div>
										<div class="col-md-6 col-sm-12 col-xs-12">
											<div>
												<label>电子邮件 </label>
											</div>
											<div>
												<input type="text" class="form-control">
											</div>
										</div>
									</div>
									<div class="row">
										<div class="col-md-6 col-sm-12 col-xs-12">
											<div>
												<label>联系地址 </label>
											</div>
											<div>
												<input type="text" class="form-control">
											</div>
										</div>
										<div class="col-md-6 col-sm-12 col-xs-12">
											<div>
												<label>研究方向 </label>
											</div>
											<div>
												<input type="text" class="form-control">
											</div>
										</div>
									</div>
									<div class="row">
										<div class="col-md-6 col-sm-12 col-xs-12">
											<div>
												<label>与负责人关系 </label>
											</div>
											<div>
												<input type="text" class="form-control">
											</div>
										</div>
										<div class="col-md-6 col-sm-12 col-xs-12">
											<div>
												<label>负责内容 </label>
											</div>
											<div>
												<input type="text" class="form-control">
											</div>
										</div>
									</div>
				
								</div>
							</div>
						</div>
				</div>
			</div>							
      </div>
</div>

		<!-- /#wrapper -->
		<%@ include file="../common/modal.jsp"%>

		<%@ include file="../comm-fragement/main-js"%>
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
	    	$("#arrowCustomerInfo").click(function(){
	    		if($(this).attr("class")==("glyphicon glyphicon-chevron-down")){
	    			$(this).attr("class","glyphicon glyphicon-chevron-up");
	    		}else{
	    			$(this).attr("class","glyphicon glyphicon-chevron-down");
	    		}
	    	});
	    	
	   	});
	    function projectStatusController($scope, $http) {
			$scope.psToggle = function() {
				var target = $("#arrowProStatus");
				if (target.attr("class") == ("glyphicon glyphicon-chevron-down")) {
					$http.get("/admin/status/ajax/${project.projectId}").success(
						function(data) {
							if (data.success == true) {
								$scope.progress = JSON.parse(data.data);
							}
							// format
							$scope.progress.progressDate = $scope
									.getTimeString($scope.progress.progressDate);
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
				result += d.getDay() > 10 ? d.getDay() : "0" + d.getDay();
				result += " ";
				result += d.getHours() > 10 ? d.getHours() : "0" + d.getHours();
				result += ":";
				result += d.getMinutes() > 10 ? d.getMinutes() : "0" + d.getMinutes();
				result += ":";
				result += d.getSeconds() > 10 ? d.getSeconds() : "0" + d.getSeconds();
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
		}
	    
	    
    </script>
</body>

</html>