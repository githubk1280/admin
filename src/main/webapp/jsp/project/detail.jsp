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
														<input type="text" placeholder="自动生成" class="form-control"
															disabled>
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
							<!----------------------------------------project status start ------------------------->
							<div class="panel panel-default panel-info">
								<div class="panel-heading">
									<h3 class="panel-title">
										<strong>项目进度</strong> <a data-toggle="collapse"
											href="#collapseTwo" class="panel_a"><strong>link</strong></a>
									</h3>

								</div>
								<div id="collapseTwo" class="panel-collapse collapse">
									<div class="panel-body">
										<div id="projectStatusDiv">
											<div class="row">
												<div class="col-md-12">
													<div class="pull-left">
														<h4>
															<strong>进度1</strong>
														</h4>
													</div>
												</div>
											</div>
											<div class="row row-margin">
												<div class="col-md-4 col-sm-12 col-xs-12">
													<div class="pull-left">
														<span class="label label-default">项目编号 </span>
													</div>
													<div class="pull-left">
														<input type="text" class="form-control" disabled>
													</div>
												</div>
												<div class="col-md-4 col-sm-12 col-xs-12">
													<div class="pull-left">
														<span class="label label-default">日期 </span>
													</div>
													<div class="pull-left">
														<input type="text" class="form-control"
															style="margin-left: 23px" disabled>
													</div>
												</div>
												<div class="col-md-4 col-sm-12 col-xs-12">
													<div class="pull-left">
														<span class="label label-default">优先级 </span>
													</div>
													<div class="pull-left radio-margin">
														<label><input type="radio" name="optionsRadios12"
															id="optionsRadios12" value="option12" checked disabled>高
														</label> <label><input type="radio" name="optionsRadios13"
															id="optionsRadios13" value="option13" disabled>中
														</label> <label><input type="radio" name="optionsRadios14"
															id="optionsRadios14" value="option14" disabled>低
														</label>
													</div>
												</div>
											</div>
										</div>
									</div>
								</div>
							</div>
							<!----------------------------------------project status end ------------------------->
							<!----------------------------------------outsource start ------------------------->
							<div class="panel panel-default panel-info">
								<div class="panel-heading">
									<h3 class="panel-title">
										<strong>外包信息</strong> <a data-toggle="collapse"
											href="#collapseThree" class="panel_a"><strong>link</strong></a>
									</h3>
								</div>

								<div id="collapseThree" class="panel-collapse collapse" style="">
									<div class="panel-body">
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
													<input type="text" class="form-control" disabled>
												</div>
											</div>
											<div class="col-md-6 col-sm-12 col-xs-12">
												<div>
													<label>外包单位</label>
												</div>
												<div>
													<input type="text" class="form-control" disabled>
												</div>
											</div>
										</div>
										<div class="row row-margin">
											<div class="col-md-6 col-sm-12 col-xs-12">
												<div>
													<label>联系人</label>
												</div>
												<div>
													<input type="text" class="form-control" disabled>
												</div>
											</div>
											<div class="col-md-6 col-sm-12 col-xs-12">
												<div>
													<label>联系人电话</label>
												</div>
												<div>
													<input type="text" class="form-control" disabled>
												</div>
											</div>
										</div>

										<div class="row row-margin">
											<div class="col-md-6 col-sm-12 col-xs-12">
												<div>
													<label>合同金额</label>
												</div>
												<div>
													<input type="text" class="form-control" disabled>
												</div>
											</div>
											<div class="col-md-6 col-sm-12 col-xs-12">
												<div>
													<label>送样日期</label>
												</div>
												<div>
													<input type="text" class="form-control" disabled>
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
															id="optionsRadios6" value="option6" disabled>是 </label> <label><input
															type="radio" name="optionsRadios7" id="optionsRadios7"
															value="option7" checked disabled>否 </label>
													</div>
												</div>
											</div>
											<div class="col-md-6 col-sm-12 col-xs-12">
												<div>
													<label>样本数量</label>
												</div>
												<div>
													<div>
														<input type="text" class="form-control" disabled>
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
													<textarea class="form-control" rows="8" disabled></textarea>
												</div>
											</div>
										</div>
										<div class="row row-margin">
											<div class="col-md-6 col-sm-12 col-xs-12">
												<div>
													<label>地址 </label>
												</div>
												<div>
													<textarea class="form-control" rows="8" disabled></textarea>
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
													<input type="text" class="form-control" disabled>
												</div>
											</div>
											<div class="col-md-6 col-sm-12 col-xs-12">
												<div>
													<label>外包单位</label>
												</div>
												<div>
													<input type="text" class="form-control" disabled>
												</div>
											</div>
										</div>
										<div class="row row-margin">
											<div class="col-md-6 col-sm-12 col-xs-12">
												<div>
													<label>联系人</label>
												</div>
												<div>
													<input type="text" class="form-control" disabled>
												</div>
											</div>
											<div class="col-md-6 col-sm-12 col-xs-12">
												<div>
													<label>联系人电话</label>
												</div>
												<div>
													<input type="text" class="form-control" disabled>
												</div>
											</div>
										</div>
										<div class="row row-margin">
											<div class="col-md-6 col-sm-12 col-xs-12">
												<div>
													<label>地址 </label>
												</div>
												<div>
													<textarea class="form-control" rows="8" disabled></textarea>
												</div>
											</div>
										</div>

									</div>
								</div>
							</div>
							<!----------------------------------------outsource end ------------------------->
							<!----------------------------------------custom info start ------------------------->
							<div class="panel panel-default panel-info">
								<div class="panel-heading">
									<h3 class="panel-title">
										<strong>客户信息</strong> <a data-toggle="collapse"
											href="#collapseFour" class="panel_a"><strong>link</strong></a>
									</h3>
								</div>
								<div id="collapseFour" class="panel-collapse collapse" style="">
									<div class="panel-body">
										<div class="row">
											<div class="col-md-6">
												<div>
													<label>客户级别</label>
												</div>
												<div class="pull-left">
													<label><input type="radio" name="optionsRadios17"
														id="optionsRadios17" value="option17" checked disabled>高
													</label> <label><input type="radio" name="optionsRadios18"
														id="optionsRadios18" value="option18" disabled>中 </label>
													<label><input type="radio" name="optionsRadios19"
														id="optionsRadios19" value="option19" disabled>低 </label>
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
													<input type="text" class="form-control" disabled>
												</div>
											</div>
											<div class="col-md-6 col-sm-12 col-xs-12">
												<div>
													<label>姓名</label>
												</div>
												<div>
													<input type="text" class="form-control" disabled>
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
														id="optionsRadios18" value="option18" disabled>男</label> <label><input
														type="radio" name="optionsRadios19" id="optionsRadios19"
														value="option19" disabled>女 </label>
												</div>
											</div>
											<div class="col-md-6 col-sm-12 col-xs-12">
												<div>
													<label>年龄</label>
												</div>
												<div>
													<input type="text" class="form-control" disabled>
												</div>
											</div>
										</div>
										<div class="row">
											<div class="col-md-6 col-sm-12 col-xs-12">
												<div>
													<label>联系电话</label>
												</div>
												<div>
													<input type="text" class="form-control" disabled>
												</div>
											</div>
											<div class="col-md-6 col-sm-12 col-xs-12">
												<div>
													<label>联系手机</label>
												</div>
												<div>
													<input type="text" class="form-control" disabled>
												</div>
											</div>
										</div>
										<div class="row">
											<div class="col-md-6 col-sm-12 col-xs-12">
												<div>
													<label>工作单位 </label>
												</div>
												<div>
													<input type="text" class="form-control" disabled>
												</div>
											</div>
											<div class="col-md-6 col-sm-12 col-xs-12">
												<div>
													<label>科室/部门</label>
												</div>
												<div>
													<input type="text" class="form-control" disabled>
												</div>
											</div>
										</div>
										<div class="row">
											<div class="col-md-6 col-sm-12 col-xs-12">
												<div>
													<label>职位 </label>
												</div>
												<div>
													<input type="text" class="form-control" disabled>
												</div>
											</div>
											<div class="col-md-6 col-sm-12 col-xs-12">
												<div>
													<label>电子邮件</label>
												</div>
												<div>
													<input type="text" class="form-control" disabled>
												</div>
											</div>
										</div>
										<div class="row">
											<div class="col-md-6 col-sm-12 col-xs-12">
												<div>
													<label>联系地址 </label>
												</div>
												<div>
													<input type="text" class="form-control" disabled>
												</div>
											</div>
											<div class="col-md-6 col-sm-12 col-xs-12">
												<div>
													<label>研究方向 </label>
												</div>
												<div>
													<input type="text" class="form-control" disabled>
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
													<input type="text" class="form-control" disabled>
												</div>
											</div>
											<div class="col-md-6 col-sm-12 col-xs-12">
												<div>
													<label>姓名 </label>
												</div>
												<div>
													<input type="text" class="form-control" disabled>
												</div>
											</div>
										</div>
										<div class="row">
											<div class="col-md-6 col-sm-12 col-xs-12">
												<div>
													<label>性别 </label>
												</div>
												<div>
													<input type="text" class="form-control" disabled>
												</div>
											</div>
											<div class="col-md-6 col-sm-12 col-xs-12">
												<div>
													<label>年龄 </label>
												</div>
												<div>
													<input type="text" class="form-control" disabled>
												</div>
											</div>
										</div>
										<div class="row">
											<div class="col-md-6 col-sm-12 col-xs-12">
												<div>
													<label>联系电话 </label>
												</div>
												<div>
													<input type="text" class="form-control" disabled>
												</div>
											</div>
											<div class="col-md-6 col-sm-12 col-xs-12">
												<div>
													<label>联系手机 </label>
												</div>
												<div>
													<input type="text" class="form-control" disabled>
												</div>
											</div>
										</div>
										<div class="row">
											<div class="col-md-6 col-sm-12 col-xs-12">
												<div>
													<label>工作单位 </label>
												</div>
												<div>
													<input type="text" class="form-control" disabled>
												</div>
											</div>
											<div class="col-md-6 col-sm-12 col-xs-12">
												<div>
													<label>科室/部门 </label>
												</div>
												<div>
													<input type="text" class="form-control" disabled>
												</div>
											</div>
										</div>
										<div class="row">
											<div class="col-md-6 col-sm-12 col-xs-12">
												<div>
													<label>职位 </label>
												</div>
												<div>
													<input type="text" class="form-control" disabled>
												</div>
											</div>
											<div class="col-md-6 col-sm-12 col-xs-12">
												<div>
													<label>电子邮件 </label>
												</div>
												<div>
													<input type="text" class="form-control" disabled>
												</div>
											</div>
										</div>
										<div class="row">
											<div class="col-md-6 col-sm-12 col-xs-12">
												<div>
													<label>联系地址 </label>
												</div>
												<div>
													<input type="text" class="form-control" disabled>
												</div>
											</div>
											<div class="col-md-6 col-sm-12 col-xs-12">
												<div>
													<label>研究方向 </label>
												</div>
												<div>
													<input type="text" class="form-control" disabled>
												</div>
											</div>
										</div>
										<div class="row">
											<div class="col-md-6 col-sm-12 col-xs-12">
												<div>
													<label>与负责人关系 </label>
												</div>
												<div>
													<input type="text" class="form-control" disabled>
												</div>
											</div>
											<div class="col-md-6 col-sm-12 col-xs-12">
												<div>
													<label>负责内容 </label>
												</div>
												<div>
													<input type="text" class="form-control" disabled>
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
													<input type="text" class="form-control" disabled>
												</div>
											</div>
											<div class="col-md-6 col-sm-12 col-xs-12">
												<div>
													<label>姓名 </label>
												</div>
												<div>
													<input type="text" class="form-control" disabled>
												</div>
											</div>
										</div>
										<div class="row">
											<div class="col-md-6 col-sm-12 col-xs-12">
												<div>
													<label>性别 </label>
												</div>
												<div>
													<input type="text" class="form-control" disabled>
												</div>
											</div>
											<div class="col-md-6 col-sm-12 col-xs-12">
												<div>
													<label>年龄 </label>
												</div>
												<div>
													<input type="text" class="form-control" disabled>
												</div>
											</div>
										</div>
										<div class="row">
											<div class="col-md-6 col-sm-12 col-xs-12">
												<div>
													<label>联系电话 </label>
												</div>
												<div>
													<input type="text" class="form-control" disabled>
												</div>
											</div>
											<div class="col-md-6 col-sm-12 col-xs-12">
												<div>
													<label>联系手机 </label>
												</div>
												<div>
													<input type="text" class="form-control" disabled>
												</div>
											</div>
										</div>
										<div class="row">
											<div class="col-md-6 col-sm-12 col-xs-12">
												<div>
													<label>工作单位 </label>
												</div>
												<div>
													<input type="text" class="form-control" disabled>
												</div>
											</div>
											<div class="col-md-6 col-sm-12 col-xs-12">
												<div>
													<label>科室/部门 </label>
												</div>
												<div>
													<input type="text" class="form-control" disabled>
												</div>
											</div>
										</div>
										<div class="row">
											<div class="col-md-6 col-sm-12 col-xs-12">
												<div>
													<label>职位 </label>
												</div>
												<div>
													<input type="text" class="form-control" disabled>
												</div>
											</div>
											<div class="col-md-6 col-sm-12 col-xs-12">
												<div>
													<label>电子邮件 </label>
												</div>
												<div>
													<input type="text" class="form-control" disabled>
												</div>
											</div>
										</div>
										<div class="row">
											<div class="col-md-6 col-sm-12 col-xs-12">
												<div>
													<label>联系地址 </label>
												</div>
												<div>
													<input type="text" class="form-control" disabled>
												</div>
											</div>
											<div class="col-md-6 col-sm-12 col-xs-12">
												<div>
													<label>研究方向 </label>
												</div>
												<div>
													<input type="text" class="form-control" disabled>
												</div>
											</div>
										</div>
										<div class="row">
											<div class="col-md-6 col-sm-12 col-xs-12">
												<div>
													<label>与负责人关系 </label>
												</div>
												<div>
													<input type="text" class="form-control" disabled>
												</div>
											</div>
											<div class="col-md-6 col-sm-12 col-xs-12">
												<div>
													<label>负责内容 </label>
												</div>
												<div>
													<input type="text" class="form-control" disabled>
												</div>
											</div>
										</div>

									</div>
								</div>
							</div>
							<!----------------------------------------custom info end ------------------------->
							<div class="panel panel-default panel-info">
								<div class="panel-heading">
									<h3 class="panel-title">
										<strong>客户联系记录</strong> <a data-toggle="collapse"
											href="#collapseFive" class="panel_a"><strong>link</strong></a>
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
			$(document).ready(
					function() {

						$("nav li").click(
								function() {
									$(this).addClass('active').siblings()
											.removeClass('active');
								});

						$("#link_pro").click(
								function() {
									$("#mainframe").attr("src",
											"../page/projectBasicData.html");
								});

						$("#link_customer").click(
								function() {
									$("#mainframe").attr("src",
											"../page/customInfo.html");
								});

						$("#link_outsource").click(
								function() {
									$("#mainframe").attr("src",
											"../page/outsource.html");
								});

						$("#link_proStatus").click(
								function() {
									$("#mainframe").attr("src",
											"../page/proStatus.html");
								});

						$("#link_customCalling").click(
								function() {
									$("#mainframe").attr("src",
											"../page/customCalling.html");
								});

						$(".pagination li ").click(
								function() {
									$(this).addClass('active').siblings()
											.removeClass('active');
								});

						$("#projectStatusBadge").click(function() {
							alert($("#projectStatusBadge").text());
							$("#projectStatusBadge").text("");
						})

					});
		</script>
</body>

</html>