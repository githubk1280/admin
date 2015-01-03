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
					<!-- .panel-heading -->
					<div class="panel-body">
						<!----------------------------------------project basic data start ------------------------->
						<div class="panel-group" id="accordion">
							<div class="panel panel-default">
								<div class="panel-heading ">
									<h3 class="panel-title">
										<strong>添加新的项目信息</strong>
									</h3>
								</div>
								<div id="collapseOne" class="panel-collapse collapse in">
									<div class="panel-body">
										<form:form action="add" method="post" commandName="project">
											<div class="row">
												<div class="col-md-6 col-sm-12 col-xs-12">
													<div>
														<label>项目编号 </label>
														<label id="proBasicProjectIDLbl" class="warning-style">该字段不允许为空</label>
													</div>
													<div>
														<form:input id="proBasicProjectID" path="projectId" type="text" class="form-control" maxlength ="20" />
													</div>
												</div>
												<div class="col-md-6 col-sm-12 col-xs-12">
													<div>
														<label>项目名 </label>
														<label id="projectNameLbl" class="warning-style">该字段不允许为空</label>
													</div>
													<div>
														<form:input id="projectName" path="projectName" class="form-control" maxlength="20"/>
													</div>
												</div>
											</div>
											<div class="row">
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
														<label><form:radiobutton id="needSCI1" path="needSCI" value="Y" checked="true"/>需要
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
														<label><form:radiobutton id="priority1" path="priority" value="1" checked="true"/>高
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
																path="needPrincipalAssist" value="Y" checked="true"/>是 </label> <label><form:radiobutton id="needPrincipalAssist2"
																path="needPrincipalAssist" value="N" />否 </label>
													</div>
												</div>
											</div>
											<div class="row row-margin">
												<div class="col-md-6 col-sm-12 col-xs-12">
													<div>
														<label>开始日期(yyyy-mm-dd) </label>
														<label id="startDateLbl" class="warning-style">该字段不允许为空</label>
														<label id="startDateFormatLbl" class="warning-style">日期格式不正确</label>
														<label id="isstartDateLbl" class="warning-style">您输入的日期不存在</label>
													</div>
													<div>
														<form:input id="startDate" path="startDate" class="form-control form_date" maxlength="10"/>
													</div>
												</div>
												<div class="col-md-6 col-sm-12 col-xs-12">
													<div>
														<label>结束日期(yyyy-mm-dd)</label>
														<label id="endDateLbl" class="warning-style">该字段不允许为空</label>
														<label id="endDateFormatLbl" class="warning-style">日期格式不正确</label>
														<label id="dateComparedLbl" class="warning-style">结束日期必须大于开始日期</label>
														<label id="isendDateLbl" class="warning-style">您输入的日期不存在</label>
													</div>
													<div>
														<form:input id="endDate" path="endDate" class="form-control form_date" maxlength="10"/>
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
															<form:input id="potentialExpenditure" path="potentialExpenditure"
																class="form-control" maxlength="15"/>
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
															<label><form:radiobutton id="hasCorporatedIntention1"
																	path="hasCorporatedIntention" value="Y" checked="true"/>是 </label> <label><form:radiobutton id="hasCorporatedIntention2"
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
															<label><form:radiobutton path="needProjectPlan" id="needProjectPlan1" 
																	value="Y" checked="true"/>需要 </label> <label><form:radiobutton id="needProjectPlan2"
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
											<div class="row row-margin">
												<div class="col-md-6 col-sm-12 col-xs-12">
													<button id="saveProBasicData" class="btn btn-default btn-primary" type="submit">保存</button>
													<button id="cancelProBasicData" class="btn btn-default btn-primary" type="button">取消</button>
												</div>
											</div>
										</form:form>
									</div>
								</div>
							</div>
						</div>
						<!-------------------------------------------project basic data end ------------------------------------------>
					</div>
					<!-- .panel-body -->
				</div>
				<!-- /.panel -->
			</div>
		</div>
	</div>
	<!-- /#wrapper -->
	<%@ include file="../common/modal.jsp"%>

	<%@ include file="../comm-fragement/main-js"%>
	<%@ include file="../comm-fragement/addProjecVal-js"%>
	<script type="text/javascript">
		$(document).ready(function() {
			$("#cancelProBasicData").click(function() {
				window.location.replace("http://"+window.location.host+"/admin/project/pages/1");			
				return false;
			});
	});
	</script>

</body>

</html>