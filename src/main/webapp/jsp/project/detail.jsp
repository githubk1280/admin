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
										<strong>项目信息</strong> <a data-toggle="collapse"
											href="#collapseOne" class="panel_a"><strong>link</strong></a>
									</h3>
								</div>
								<div id="collapseOne" class="panel-collapse collapse in">
									<div class="panel-body">
										<form:form action="add" method="post" commandName="project">
											<div class="row">
												<div class="col-md-6 col-sm-12 col-xs-12">
													<div>
														<label>项目编号 </label>
													</div>
													<div>
														<form:input path="projectId" class="form-control" />
													</div>
												</div>
												<div class="col-md-6 col-sm-12 col-xs-12">
													<div>
														<label>项目名 </label>
													</div>
													<div>
														<form:input path="projectName" class="form-control" />
													</div>
												</div>
											</div>
											<div class="row">
												<div class="col-md-6 col-sm-12 col-xs-12">
													<div>
														<label>项目类型 </label>
													</div>
													<div>
														<form:input path="projectType" class="form-control" />
													</div>
												</div>
												<div class="col-md-6 col-sm-12 col-xs-12">
													<div>
														<label>是否需要发SCI文章</label>
													</div>
													<div class="pull-left">
														<label><form:radiobutton path="needSCI" value="Y" />需要
														</label> <label> <form:radiobutton path="needSCI"
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
														<label><form:radiobutton path="priority" value="1" />高
														</label> <label> <form:radiobutton path="priority"
																value="2" />中
														</label> <label><form:radiobutton path="priority"
																value="3" />低 </label>
													</div>
												</div>
												<div class="col-md-6 col-sm-12 col-xs-12">
													<div>
														<label>是否需要主管协助</label>
													</div>
													<div class="pull-left">
														<label><form:radiobutton
																path="needPrincipalAssist" value="Y" />是 </label> <label><form:radiobutton
																path="needPrincipalAssist" value="N" />否 </label>
													</div>
												</div>
											</div>
											<div class="row row-margin">
												<div class="col-md-6 col-sm-12 col-xs-12">
													<div>
														<label>开始日期 </label>
													</div>
													<div>
														<form:input path="startDate" class="form-control" />
													</div>
												</div>
												<div class="col-md-6 col-sm-12 col-xs-12">
													<div>
														<label>结束日期</label>
													</div>
													<div>
														<form:input path="endDate" class="form-control" />
													</div>
												</div>
											</div>
											<div class="row row-margin">
												<div class="col-md-6 col-sm-12 col-xs-12">
													<div>
														<label>潜在经费</label>
													</div>
													<div>
														<div>
															<form:input path="potentialExpenditure"
																class="form-control" />
														</div>
													</div>
												</div>
												<div class="col-md-6 col-sm-12 col-xs-12">
													<div>
														<label>样本数量</label>
													</div>
													<div>
														<div>
															<form:input path="sampleCount" class="form-control" />
														</div>
													</div>
												</div>
											</div>
											<div class="row row-margin">
												<div class="col-md-6 col-sm-12 col-xs-12">
													<div>
														<label>技术平台</label>
													</div>
													<div>
														<div>
															<form:input path="platformDemand" class="form-control" />
														</div>
													</div>
												</div>
												<div class="col-md-6 col-sm-12 col-xs-12">
													<div>
														<label>研究方向 </label>
													</div>
													<div>
														<form:input path="researchDirection" class="form-control" />
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
										</form:form>
									</div>
								</div>
							</div>
							<!-------------------------------------------project basic data end ------------------------------------------>
							<%@ include file="projectstatus.jsp"%>
							<!----------------------------------------outsource start ------------------------->
							<div class="panel panel-default">
								<div class="panel-heading">
									<h3 class="panel-title">
										<strong>外包信息</strong> <a data-toggle="collapse"
											href="#collapseThree" class="panel_a"> <span
											id="arrowOutsource" class="glyphicon glyphicon-chevron-down"
											style="color: rgb(0, 0, 0);"></span>
										</a>
										<button id="saveOutsource" value="1"
											class="btn btn-default btn-success"
											style="margin-left: 10px;">修改</button>
										<button id="cancelOutsource" value="2"
											class="btn btn-default btn-success"
											style="margin-left: 10px; display: none">取消</button>
									</h3>
								</div>

								<div id="collapseThree" class="panel-collapse collapse" style="">
									<div id="panelOutsource" class="panel-body">
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
											<div class="col-md-6 col-sm-12 col-xs-12">
												<div>
													<label>项目编号 </label>
												</div>
												<div>
													<input id="outsourceProjectID" type="text"
														class="form-control">
												</div>
											</div>
											<div class="col-md-6 col-sm-12 col-xs-12">
												<div>
													<label>外包单位</label>
												</div>
											</div>
											<div>
												<input type="text" class="form-control">
											</div>
										</div>
										<div class="row row-margin">
											<div class="col-md-6 col-sm-12 col-xs-12">
												<div>
													<label>联系人</label>
												</div>
												<div>
													<input type="text" class="form-control">
												</div>
											</div>
											<div class="col-md-6 col-sm-12 col-xs-12">
												<div>
													<label>联系人电话</label>
												</div>
												<div>
													<input type="text" class="form-control">
												</div>
											</div>
										</div>

										<div class="row row-margin">
											<div class="col-md-6 col-sm-12 col-xs-12">
												<div>
													<label>合同金额</label>
												</div>
												<div>
													<input type="text" class="form-control">
												</div>
											</div>
											<div class="col-md-6 col-sm-12 col-xs-12">
												<div>
													<label>送样日期</label>
												</div>
												<div>
													<input type="text" class="form-control">
												</div>
											</div>
										</div>
										<div class="row row-margin">
											<div class="col-md-6 col-sm-12 col-xs-12">
												<div>
													<label>结果是否收到</label>
												</div>
												<div>
													<div class="pull-left">
														<label><input type="radio" name="optionsRadios6"
															id="optionsRadios6" value="option6">是 </label> <label><input
															type="radio" name="optionsRadios7" id="optionsRadios7"
															value="option7" checked>否 </label>
													</div>
												</div>
											</div>
											<div class="col-md-6 col-sm-12 col-xs-12">
												<div>
													<label>样本数量</label>
												</div>
												<div>
													<div>
														<input type="text" class="form-control">
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
													<textarea class="form-control" rows="8"></textarea>
												</div>
											</div>
										</div>
										<div class="row row-margin">
											<div class="col-md-6 col-sm-12 col-xs-12">
												<div>
													<label>地址 </label>
												</div>
												<div>
													<textarea class="form-control" rows="8"></textarea>
												</div>
											</div>
										</div>
										<div class="row">
											<div class="col-md-12">
												<div class="pull-left page-header">
													<h5>
														<strong>数据分析外包信息</strong>
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
													<label>外包单位</label>
												</div>
												<div>
													<input type="text" class="form-control">
												</div>
											</div>
										</div>
										<div class="row row-margin">
											<div class="col-md-6 col-sm-12 col-xs-12">
												<div>
													<label>联系人</label>
												</div>
												<div>
													<input type="text" class="form-control">
												</div>
											</div>
											<div class="col-md-6 col-sm-12 col-xs-12">
												<div>
													<label>联系人电话</label>
												</div>
												<div>
													<input type="text" class="form-control">
												</div>
											</div>
										</div>
										<div class="row row-margin">
											<div class="col-md-6 col-sm-12 col-xs-12">
												<div>
													<label>地址 </label>
												</div>
												<div>
													<textarea class="form-control" rows="8"></textarea>
												</div>
											</div>
										</div>

									</div>
								</div>
							</div>
							<!----------------------------------------outsource end ------------------------->
							<!----------------------------------------custom info start ------------------------->
							<div class="panel panel-default">
								<div class="panel-heading">
									<h3 class="panel-title">
										<strong>客户信息</strong> <a data-toggle="collapse"
											href="#collapseFour" class="panel_a"> <span
											id="arrowCustomerInfo"
											class="glyphicon glyphicon-chevron-down"
											style="color: rgb(0, 0, 0);"></span>
										</a>
										<button id="saveCustomInfo" value="1"
											class="btn btn-default btn-success"
											style="margin-left: 10px;">修改</button>
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
							<!----------------------------------------custom info end ------------------------->
							<div class="panel panel-default">
								<div class="panel-heading">
									<h3 class="panel-title">
										<strong>客户联系记录</strong> <a data-toggle="collapse"
											href="#collapseFive" class="panel_a"> <span id="arrow5"
											class="glyphicon glyphicon-chevron-down"
											style="color: rgb(0, 0, 0);"></span>
										</a>
									</h3>
								</div>
								<div id="collapseFive" class="panel-collapse collapse" style="">
									<div class="panel-body">Lorem ipsum dolor sit amet,
										consectetur adipisicing elit, sed do eiusmod tempor incididunt
										ut labore et dolore magna aliqua. Ut enim ad minim veniam,
										quis nostrud exercitation ullamco laboris nisi ut aliquip ex
										ea commodo consequat. Duis aute irure dolor in reprehenderit
										in voluptate velit esse cillum dolore eu fugiat nulla
										pariatur. Excepteur sint occaecat cupidatat non proident, sunt
										in culpa qui officia deserunt mollit anim id est laborum.</div>
								</div>
							</div>
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
	    	$("#arrowOutsource").click(function(){
	    		if($(this).attr("class")==("glyphicon glyphicon-chevron-down")){
	    			$(this).attr("class","glyphicon glyphicon-chevron-up");
	    		}else{
	    			$(this).attr("class","glyphicon glyphicon-chevron-down");
	    		}
	    	});
	    	$("#arrowProStatus").click(function(){
	    		if($(this).attr("class")==("glyphicon glyphicon-chevron-down")){
	    			$.ajax({
	    	             type: "get",
	    	             url: "/admin/status/ajax/${project.projectId}",
	    	             success: function(data){
	    	            	 alert(data);
	    	             },
	    	             error:function(data){
	    	            	 alert("请求失败，请重试!");
	    	             }
	    	             });
	    			$(this).attr("class","glyphicon glyphicon-chevron-up");
	    		}else{
	    			$(this).attr("class","glyphicon glyphicon-chevron-down");
	    		}
	    	});
	    	$("#arrowProBasicData").click(function(){
	    		if($(this).attr("class")==("glyphicon glyphicon-chevron-down")){
	    			$(this).attr("class","glyphicon glyphicon-chevron-up");
	    		}else{
	    			$(this).attr("class","glyphicon glyphicon-chevron-down");
	    		}
	    	});
	    	/************switch save button and  cancel button****/
	    	$("#saveProBasicData").click(function(){
	    		if($(this).attr("value")=="1"){
	    			$(this).attr("value","3");
	    			$("#panelProBasicData input").attr("disabled",false);
	    			$("#panelProBasicData radio").attr("disabled",false);
	    			$("#panelProBasicData select").attr("disabled",false);
	    			$("#panelProBasicData textarea").attr("disabled",false);
	    			$("#proBasicProjectID").attr("disabled",true);
	    			$(this).text("保存");
	    			$("#cancelProBasicData").show();
	    		}else if($(this).attr("value")=="2"){
	    			$(this).text("修改");
	    			$("#panelProBasicData input").attr("disabled",true);
	    			$("#panelProBasicData radio").attr("disabled",true);
	    			$("#panelProBasicData select").attr("disabled",true);
	    			$("#panelProBasicData textarea").attr("disabled",true);
	    		}else if($(this).attr("value")=="3"){
	    			$(this).attr("value","1");
	    			$(this).text("修改");
	    			$("#panelProBasicData input").attr("disabled",true);
	    			$("#panelProBasicData radio").attr("disabled",true);
	    			$("#panelProBasicData select").attr("disabled",true);
	    			$("#panelProBasicData textarea").attr("disabled",true);
	    			$("#cancelProBasicData").hide();
	    		}
	    	});
	    	$("#cancelProBasicData").click(function(){
	    		if($(this).attr("value")=="2"){
	    			$("#saveProBasicData").attr("value","1");
	    			$("#saveProBasicData").text("修改");
	    			$("#panelProBasicData input").attr("disabled",true);
	    			$("#panelProBasicData radio").attr("disabled",true);
	    			$("#panelProBasicData select").attr("disabled",true);
	    			$("#panelProBasicData textarea").attr("disabled",true);
	    			$("#cancelProBasicData").hide();
	    		}
	    	});
	    	
	    	$("#saveProStatus").click(function(){
	    		if($(this).attr("value")=="1"){
	    			$(this).attr("value","3");
	    			$("#panelProStatus input").attr("disabled",false);
	    			$("#panelProStatus radio").attr("disabled",false);
	    			$("#panelProStatus select").attr("disabled",false);
	    			$("#panelProStatus textarea").attr("disabled",false);
	    			$(this).text("保存");
	    			$("#cancelProStatus").show();
	    		}else if($(this).attr("value")=="2"){
	    			$(this).text("修改");
	    		}else if($(this).attr("value")=="3"){
	    			$(this).attr("value","1");
	    			$(this).text("修改");
	    			$("#panelProStatus input").attr("disabled",false);
	    			$("#panelProStatus radio").attr("disabled",false);
	    			$("#panelProStatus select").attr("disabled",false);
	    			$("#panelProStatus textarea").attr("disabled",false);
	    			$("#cancelProStatus").hide();
	    		}
	    	});
	    	$("#cancelProStatus").click(function(){
	    		if($(this).attr("value")=="2"){
	    			$("#saveProStatus").attr("value","1");
	    			$("#saveProStatus").text("修改");
	    			$("#panelProStatus input").attr("disabled",false);
	    			$("#panelProStatus radio").attr("disabled",false);
	    			$("#panelProStatus select").attr("disabled",false);
	    			$("#panelProStatus textarea").attr("disabled",false);
	    			$("#cancelProStatus").hide();
	    		}
	    	});
	    	
	    	$("#saveOutsource").click(function(){
	    		if($(this).attr("value")=="1"){
	    			$(this).attr("value","3");
	    			$("#panelOutsource input").attr("disabled",false);
	    			$("#panelOutsource radio").attr("disabled",false);
	    			$("#panelOutsource select").attr("disabled",false);
	    			$("#panelOutsource textarea").attr("disabled",false);
	    			$("#outsourceProjectID").attr("disabled",true);
	    			$(this).text("保存");
	    			$("#cancelOutsource").show();
	    		}else if($(this).attr("value")=="2"){
	    			$(this).text("修改");
	    			$("#panelOutsource input").attr("disabled",true);
	    			$("#panelOutsource radio").attr("disabled",true);
	    			$("#panelOutsource select").attr("disabled",true);
	    			$("#panelOutsource textarea").attr("disabled",true);
	    		}else if($(this).attr("value")=="3"){
	    			$(this).attr("value","1");
	    			$(this).text("修改");
	    			$("#panelOutsource input").attr("disabled",true);
	    			$("#panelOutsource radio").attr("disabled",true);
	    			$("#panelOutsource select").attr("disabled",true);
	    			$("#panelOutsource textarea").attr("disabled",true);
	    			$("#cancelOutsource").hide();
	    		}
	    	});
	    	$("#cancelOutsource").click(function(){
	    		if($(this).attr("value")=="2"){
	    			$("#saveOutsource").attr("value","1");
	    			$("#saveOutsource").text("修改");
	    			$("#panelOutsource input").attr("disabled",true);
	    			$("#panelOutsource radio").attr("disabled",true);
	    			$("#panelOutsource select").attr("disabled",true);
	    			$("#panelOutsource textarea").attr("disabled",true);
	    			$("#cancelOutsource").hide();
	    		}
	    	});
	    	
	    	$("#saveCustomInfo").click(function(){
	    		if($(this).attr("value")=="1"){
	    			$(this).attr("value","3");
	    			$("#panelCustomerInfo input").attr("disabled",false);
	    			$("#panelCustomerInfo radio").attr("disabled",false);
	    			$("#panelCustomerInfo select").attr("disabled",false);
	    			$("#panelCustomerInfo textarea").attr("disabled",false);
	    			$("#customerProjectID").attr("disabled",true);
	    			//panelCustomerInfo
	    			$(this).text("保存");
	    			$("#cancelCustomInfo").show();
	    		}else if($(this).attr("value")=="2"){
	    			$(this).text("修改");
	    			$("#panelCustomerInfo input").attr("disabled",true);
	    			$("#panelCustomerInfo radio").attr("disabled",true);
	    			$("#panelCustomerInfo select").attr("disabled",true);
	    			$("#panelCustomerInfo textarea").attr("disabled",true);
	    		}else if($(this).attr("value")=="3"){
	    			$(this).attr("value","1");
	    			$(this).text("修改");
	    			$("#panelCustomerInfo input").attr("disabled",true);
	    			$("#panelCustomerInfo radio").attr("disabled",true);
	    			$("#panelCustomerInfo select").attr("disabled",true);
	    			$("#panelCustomerInfo textarea").attr("disabled",true);
	    			$("#cancelCustomInfo").hide();
	    		}
	    	});
	    	$("#cancelCustomInfo").click(function(){
	    		if($(this).attr("value")=="2"){
	    			$("#saveCustomInfo").attr("value","1");
	    			$("#saveCustomInfo").text("修改");
	    			$("#panelCustomerInfo input").attr("disabled",true);
	    			$("#panelCustomerInfo radio").attr("disabled",true);
	    			$("#panelCustomerInfo select").attr("disabled",true);
	    			$("#panelCustomerInfo textarea").attr("disabled",true);
	    			$("#cancelCustomInfo").hide();
	    		}
	    	});
	    	
	    /* give a judgement of disabled on each field*/
	    	if(($("#proBasicProjectID").val()=="")||($("#proBasicProjectID").val()==null)||($("#proBasicProjectID").val()==undefined)){
				$("input").attr("disabled",false);
				$("radio").attr("disabled",false);
				$("select").attr("disabled",false);
				$("textarea").attr("disabled",false);
			}else{
				$("input").attr("disabled",true);
				$("radio").attr("disabled",true);
				$("select").attr("disabled",true);
				$("textarea").attr("disabled",true);
			}
	    	
			$("#link_newStatus").click(function(){
				$("#proStatusDate").css("display","block");		
				$("#proStatusUpdate").css("display","block");
				$("#proStatusContent").css("display","block");
				$("#proStatusBtn").css("display","block");
				$("#inputProStatusDate").attr("disabled",false);
				$("#radioProStatus1").attr("disabled",false);
				$("#radioProStatus2").attr("disabled",false);
				$("#radioProStatus3").attr("disabled",false);
				$("#radioProStatus4").attr("disabled",false);
				$("#inpuProStatusContent").attr("disabled",false);
			});
			
			$("#btnCancel").click(function(){
				$("#proStatusDate").css("display","none");		
				$("#proStatusUpdate").css("display","none");
				$("#proStatusContent").css("display","none");
				$("#proStatusBtn").css("display","none");
			});
	    	
	   	});
	    
	    	
    </script>
</body>

</html>