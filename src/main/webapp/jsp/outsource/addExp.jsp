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
		<div id="page-wrapper" class="detailPage">
			<div class="row">
				<div class="col-lg-12">
					<form:form action="addExp" method="post" commandName="outSource">
					<div class="panel-body" ng-controller="addExpController">
								<div class="panel panel-default">
									<div class="panel-heading">
										<h3 class="panel-title">
											<strong>外包信息</strong>
										</h3>
									</div>
									<div id="collapseThree" class="panel-collapse collapse in"
										style="">
										<div class="panel-body" >
											<div class="row">
												<div class="col-md-12">
													<div class="pull-left page-header">
														<h5>
															<strong>实验外包信息</strong>
														</h5>
													</div>
												</div>
											</div>
											<div class="row">
												<div class="col-md-4 col-sm-12 col-xs-12">
													<div>
														<label>项目编号 </label>
													</div>
													<div>
														<form:select class="form-control" ng-model="selected" style="width:80%;"
															path="projectId">
															<option value="">-- 请选择 --</option>
															<option ng-repeat="item in idAndPrincipal"
																value="{{ item.projectId }}">{{ item.projectId
																}}</option>
														</form:select>
													</div>
												</div>
												<div class="col-md-4 col-sm-12 col-xs-12">
													<div>
														<label>外包单位</label>
													</div>
													<div>
														<form:input type="text" maxlength="20"
															class="form-control input-style" path="outSourceUnit" />
													</div>
												</div>
												<div class="col-md-4 col-sm-12 col-xs-12">
													<div>
														<label>联系人</label>
													</div>
													<div>
														<form:input type="text" maxlength="5" class="form-control input-style"
															path="contactPerson" />
													</div>
												</div>
											</div>
											<div class="row row-margin">
												<div class="col-md-4 col-sm-12 col-xs-12">
													<div>
														<label>联系人电话</label> <label id="contactPhoneLbl"
															class="warning-style">请输入正确的号码</label>
													</div>
													<div>
														<form:input id="contactPhone" type="text" maxlength="15"
															class="form-control input-style" path="contactPhone" />
													</div>
												</div>
												<div class="col-md-4 col-sm-12 col-xs-12">
													<div>
														<label>合同金额</label> <label id="contractAmountLbl"
															class="warning-style">请输入正确的金额</label>
													</div>
													<div>
														<form:input id="contractAmount" type="text" maxlength="5"
															class="form-control input-style" path="contractAmount" />
													</div>
												</div>
												<div class="col-md-4 col-sm-12 col-xs-12">
													<div>
														<label>送样日期</label> <label id="sendSampleDateLbl"
															class="warning-style">日期格式不正确</label> <label
															id="issendSampleDateLbl" class="warning-style">您输入的日期不存在</label>
													</div>
													<div>
														<form:input id="sendSampleDate" type="text" maxlength="10"
															class="form-control form_date input-style" path="sendSampleDate" />
													</div>
												</div>
											</div>
											<div class="row row-margin">
												<div class="col-md-4 col-sm-12 col-xs-12">
													<div>
														<label>样本数量</label>
													</div>
													<div>
														<div>
															<form:input type="text" maxlength="10"
																class="form-control input-style" path="sendSampleCount" />
														</div>
													</div>
												</div>
												<div class="col-md-4 col-sm-12 col-xs-12">
													<div>
														<label>结果是否收到</label>
													</div>
													<div>
														<div class="pull-left">
															<label><form:radiobutton id="isDelivery1"
																	value="true" path="exprResultRecived" checked="true" />是</label>
															<label><form:radiobutton id="isDelivery2"
																	path="exprResultRecived" value="false" />否</label>
														</div>
													</div>
												</div>
											</div>
											<div class="row row-margin">
												<div class="col-md-6 col-sm-12 col-xs-12">
													<div>
														<label>合同信息</label>
													</div>
													<div>
														<form:textarea class="form-control" rows="8"
															path="contactInfo" />
													</div>
												</div>
											</div>
											<div class="row row-margin">
												<div class="col-md-6 col-sm-12 col-xs-12">
													<div>
														<label>地址 </label>
													</div>
													<div>
														<form:textarea class="form-control" rows="8"
															path="address" />
													</div>
												</div>
											</div>
											<div class="row row-margin">
												<div class="col-md-6 col-sm-12 col-xs-12">
													<button id="saveOutSource"
														class="btn btn-default btn-primary" type="submit">保存</button>
													<button id="cancelOutSource"
														class="btn btn-default btn-primary" type="button">取消</button>
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
		</div>

		<!-- /#wrapper -->
		<%@ include file="../common/modal.jsp"%>

		<%@ include file="../comm-fragement/main-js"%>
		<%@ include file="../comm-fragement/addProjecVal-js"%>
		<script type="text/javascript">
			$(document).ready(
					function() {
						$("#cancelOutSource").click(
								function() {
									window.location.replace("http://"
											+ window.location.host
											+ "/admin/outsource/pages/1");
									return false;
								});
					});

			function addExpController($scope, $http) {
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