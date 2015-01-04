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
								<form:form action="update" method="post" commandName="contract">
									<div class="panel-body">
										<div class="panel-group" id="accordion">
											<div class="panel panel-default">
												<div class="panel-heading ">
													<h3 class="panel-title">
														<strong>合同信息</strong>
														<button id="modifyBtn" value="1"
															class="btn btn-default btn-success"
															style="margin-right: 10px;float:right; padding:1px 12px" type="button">修改</button>
														<button id="cancelBtn"  value="2"
															class="btn btn-default btn-success "
															style="margin-left: 10px; margin-right: 10px;float:right; padding:1px 12px; display: none" type="reset">取消</button>
														<button id="save" value="1"
															class="btn btn-default btn-success"
															style="margin-left: 10px; margin-right: 10px;float:right; padding:1px 12px; display: none" type="submit">保存</button>
														
													</h3>
												</div>
												<div id="collapseOne" class="panel-collapse collapse in">
													
													<div id="panelContractData" class="panel-body">
														<div class="row">
															<div class="col-md-6 col-sm-12 col-xs-12">
																<div>
																	<label>项目编号 </label>
																</div>
																<div>
																	<form:input path="projectId" class="form-control" readonly="true"/>
																</div>
															</div>
															<div class="col-md-6 col-sm-12 col-xs-12">
																<div>
																	<label>合同编号 </label>
																</div>
																<div>
																	<form:input path="contractId" class="form-control" readonly="true"/>
																</div>
															</div>
														</div>
														
														<div class="row">
															<div class="col-md-6 col-sm-12 col-xs-12">
																<div>
																	<label>合同签订人 </label>
																</div>
																<div>
																	<form:input path="signPersonNameB" class="form-control" readonly="true"/>
																</div>
															</div>
															<div class="col-md-6 col-sm-12 col-xs-12">
																<div>
																	<label>合同状态</label>
																</div>
																<div>
																	<form:input path="contractType" class="form-control" readonly="true"/>
																</div>
															</div>
														</div>
														
														<div class="row row-margin">
															<div class="col-md-6 col-sm-12 col-xs-12">
																<div>
																	<label>纸质合同编号 </label>
																</div>
																<div>
																	<form:input path="contractPaperId" class="form-control" readonly="true"/>
																</div>
															</div>
															<div class="col-md-6 col-sm-12 col-xs-12">
																<div>
																	<label>签订日期</label>
																</div>
																<div>
																	<form:input path="signDate" class="form-control" readonly="true"/>
																</div>
															</div>
														</div>
														<div class="row row-margin">
															<div class="col-md-6 col-sm-12 col-xs-12">
																<div>
																	<label>开始日期</label>
																</div>
																<div>
																	<div>
																		<form:input path="startDate" class="form-control" readonly="true"/>
																	</div>
																</div>
															</div>
															<div class="col-md-6 col-sm-12 col-xs-12">
																<div>
																	<label>结束日期</label>
																</div>
																<div>
																	<div>
																		<form:input path="endDate" class="form-control" readonly="true"/>
																	</div>
																</div>
															</div>
														</div>
														<div class="row row-margin">
															<div class="col-md-6 col-sm-12 col-xs-12">
																<div>
																	<label>合同金额</label>
																</div>
																<div>
																	<div>
																		<form:input id="totalAmount" path="totalAmount" class="form-control" readonly="true"/>
																	</div>
																</div>
															</div>
															<div class="col-md-6 col-sm-12 col-xs-12"></div>
														</div>
														<div class="row row-margin">
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
															<div class="col-md-4 col-sm-12 col-xs-12">
																<div>
																	<label>预付款金额</label>
																	<label id="advancedAmountLbl" class="warning-style">该字段不允许为空</label>
																	<label id="checkAdvancedAmountLbl" class="warning-style">请输入正确的金额</label>
																	<label id="advancedAmountComparedTotalAmountLbl" class="warning-style">预付款金额不能大于合同金额</label>
																</div>
																<div>
																	<div class="input-group">
																		<span class="input-group-addon">￥</span>
																		<form:input id="advancedAmount" path="advancedAmount" class="form-control"  readonly="true"/>
																	</div>
																</div>

															</div>
															<div class="col-md-4 col-sm-12 col-xs-12">
																<div>
																	<label>预付款到账日期</label>
																</div>
																<div class="pull-left">
																	<form:input id="advancedPaymentDate" path="advancedAmountDate" class="form-control form_date" style="width:150%" readonly="true"/>
																</div>
															</div>
															<div class="col-md-4 col-sm-12 col-xs-12">
																<div>
																	<label>预付款财务确认人</label>
																</div>
																<div class="pull-left">
																	<form:input id="advancedPaymentPrincipal" path="advancedConfirmer"
																	   class="form-control" style="width:150%" readonly="true" />
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
																		<label><form:radiobutton path="balancedAmountStatus" id="balancedAmountStatus1"
																			value="未收" checked="true"/>未收</label> <label> <form:radiobutton id="balancedAmountStatus2"
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
																	<div class="input-group">
																		<span class="input-group-addon">￥</span>
																		<form:input id="balancedAmount" path="balancedAmount" class="form-control"  readonly="true"/>
																	</div>
																</div>
															</div>
															<div class="col-md-4 col-sm-12 col-xs-12">
																<div>
																	<label>尾款到账日期</label>
																</div>
																<div>
																	<div class="pull-left">
																		<form:input id="balPaymentDate" path="balancedAmountDate" class="form-control form_date" style="width:150%" readonly="true"/>
																	</div>
																</div>
															</div>
															<div class="col-md-4 col-sm-12 col-xs-12">
																<div>
																	<label>尾款财务确认人</label>
																</div>
																<div>
																	<div class="pull-left">
																		<form:input id="balPaymentPrincipal" path="balancedConfirmer" 
																		class="form-control" style="width:150%" readonly="true" />
																	</div>
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
	<%@ include file="../comm-fragement/modifyContractVal-js"%>
	
</body>

</html>