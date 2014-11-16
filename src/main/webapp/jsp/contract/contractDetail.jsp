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

<body>
	<div id="wrapper">
		<%@ include file="../common/nav.jsp"%>
						<!----------------------------------------project basic data start ------------------------->
						<div id="page-wrapper" class="detailPage">
							<div class="row">
								<div class="col-lg-12">
									<div class="panel-body">
										<div class="panel-group" id="accordion">
											<div class="panel panel-default">
												<div class="panel-heading ">
													<h3 class="panel-title">
														<strong>合同信息</strong>
														<button id="saveProBasicData" value="1"
															class="btn btn-default btn-success"
															style="margin-left: 10px; margin-right: 10px">修改</button>
														<button id="cancelProBasicData" value="2"
															class="btn btn-default btn-success "
															style="margin-left: 10px; margin-right: 10px; display: none">取消</button>
													</h3>
												</div>
												<div id="collapseOne" class="panel-collapse collapse in">
													<form:form action="add" method="post" commandName="contract">
													<div id="panelProBasicData" class="panel-body">
														<div class="row">
															<div class="col-md-6 col-sm-12 col-xs-12">
																<div>
																	<label>项目编号 </label> <label class="warning-style">该字段不允许为空</label>
																</div>
																<div>
																	<input type="text" value="${contract.projectId}" class="form-control" disabled="disabled">
																</div>
															</div>
															<div class="col-md-6 col-sm-12 col-xs-12">
																<div>
																	<label>合同编号 </label> <label id="projectTypeLbl"
																		class="warning-style">该字段不允许为空</label>
																</div>
																<div>
																	<input type="text" value="${contract.contractId}" class="form-control" >
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
																	<input type="text" value="${contract.contractPaperId}" class="form-control">
																</div>
															</div>
															<div class="col-md-6 col-sm-12 col-xs-12">
																<div>
																	<label>签订日期</label> <label id="endDateLbl"
																		class="warning-style">该字段不允许为空</label> <label
																		id="enddateDiffLbl" class="warning-style">结束日期不能小于开始日期</label>
																</div>
																<div>
																	<input type="text" value=<fmt:formatDate value="${contract.signDate}" pattern="yyyy-MM-dd" /> class="form-control">
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
																		<input type="text" value=<fmt:formatDate value="${contract.startDate}" pattern="yyyy-MM-dd" /> class="form-control">
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
																		<input type="text" value=<fmt:formatDate value="${contract.endDate}" pattern="yyyy-MM-dd" /> class="form-control">
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
																		<input id="tecPlatform" maxlength=10 type="text"
																			class="form-control" value="${contract.totalAmount}">
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
																	<label><input type="radio"
																		name="optionsRadios1" id="optionsRadios1"
																		value="未收" checked>未收 </label> <label><input
																		type="radio" name="optionsRadios2" id="optionsRadios2"
																		value="已收">已收 </label>
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
																		<label><input type="radio"
																			name="optionsRadios8" id="optionsRadios8"
																			value="option8" checked> 未收 </label> <label><input
																			type="radio" name="optionsRadios9"
																			id="optionsRadios9" value="option9"> 已收取 </label>
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