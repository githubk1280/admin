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
								<form:form action="update" method="post" commandName="contract">
									<div class="panel-body">
										<div class="panel-group" id="accordion">
											<div class="panel panel-default">
												<div class="panel-heading ">
													<h3 class="panel-title">
														<strong>合同信息</strong>
														<button id="update" value="1"
															class="btn btn-default btn-success"
															style="margin-left: 10px; margin-right: 10px" type="submit">修改</button>
														<button id="reset" value="2"
															class="btn btn-default btn-success "
															style="margin-left: 10px; margin-right: 10px; display: none" type="reset">取消</button>
													</h3>
												</div>
												<div id="collapseOne" class="panel-collapse collapse in">
													
													<div id="panelProBasicData" class="panel-body">
														<div class="row">
															<div class="col-md-6 col-sm-12 col-xs-12">
																<div>
																	<label>项目编号 </label> <label class="warning-style">该字段不允许为空</label>
																</div>
																<div>
																	<form:input path="projectId" class="form-control" readonly="true"/>
																</div>
															</div>
															<div class="col-md-6 col-sm-12 col-xs-12">
																<div>
																	<label>合同编号 </label> <label id="projectTypeLbl"
																		class="warning-style">该字段不允许为空</label>
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
																	<form:input path="contractType" class="form-control" />
																</div>
															</div>
														</div>
														
														<div class="row row-margin">
															<div class="col-md-6 col-sm-12 col-xs-12">
																<div>
																	<label>纸质合同编号 </label> <label id="startDateLbl"
																		class="warning-style">该字段不允许为空</label> <label
																		id="dateFormatLbl" class="warning-style">日期格式不正确(请修改成'yyyy-mm-dd')</label>
																	<label id="startdateDiffLbl" class="warning-style">结束日期不能小于开始日期</label>
																</div>
																<div>
																	<form:input path="contractPaperId" class="form-control" readonly="true"/>
																</div>
															</div>
															<div class="col-md-6 col-sm-12 col-xs-12">
																<div>
																	<label>签订日期</label> <label id="endDateLbl"
																		class="warning-style">该字段不允许为空</label> <label
																		id="enddateDiffLbl" class="warning-style">结束日期不能小于开始日期</label>
																</div>
																<div>
																	<form:input path="signDate" class="form-control" readonly="true"/>
																</div>
															</div>
														</div>
														<div class="row row-margin">
															<div class="col-md-6 col-sm-12 col-xs-12">
																<div>
																	<label>开始日期</label> <label id="potentialExpendLbl"
																		class="warning-style">该字段不允许为空</label>
																</div>
																<div>
																	<div>
																		<form:input path="startDate" class="form-control" readonly="true"/>
																	</div>
																</div>
															</div>
															<div class="col-md-6 col-sm-12 col-xs-12">
																<div>
																	<label>结束日期</label> <label id="sampleCountLbl"
																		class="warning-style">该字段不允许为空</label>
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
																	<label>合同金额</label> <label id="tecPlatformLbl"
																		class="warning-style">该字段不允许为空</label>
																</div>
																<div>
																	<div>
																		<form:input path="totalAmount" class="form-control" readonly="true"/>
																	</div>
																</div>
															</div>
															<div class="col-md-6 col-sm-12 col-xs-12"></div>
														</div>
														<div class="row row-margin">
															<div class="col-md-6 col-sm-12 col-xs-12">
																<div>
																	<label>预付款金额</label>
																</div>
																<div>
																	<div>
																		<form:input path="advancedAmount" class="form-control" />
																	</div>
																</div>

															</div>
															<div class="col-md-6 col-sm-12 col-xs-12">
																<div>
																	<label>预付款状态</label>
																</div>
																<div class="pull-left">
																	<label><form:radiobutton path="advancedAmountStatus"
																		value="未收" />未收</label> <label> <form:radiobutton
																		path="advancedAmountStatus" value="已收" />已收
																	</label>
																</div>
															</div>
														</div>
														<div class="row row-margin">
															<div class="col-md-6 col-sm-12 col-xs-12">
																<div>
																	<label>尾款金额</label>
																</div>
																<div>
																	<div>
																		<form:input path="balancedAmount" class="form-control" />
																	</div>
																</div>
															</div>
															<div class="col-md-6 col-sm-12 col-xs-12">
																<div>
																	<label>尾款状态</label>
																</div>
																<div>
																	<div class="pull-left">
																		<label><form:radiobutton path="balancedAmountStatus"
																			value="未收" />未收</label> <label> <form:radiobutton
																			path="balancedAmountStatus" value="已收" />已收
																		</label>
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
	
</body>

</html>