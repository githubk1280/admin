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
							<div class="panel panel-default panel-info">
								<div class="panel-heading ">
									<h3 class="panel-title">
										<strong>项目信息</strong> <a data-toggle="collapse"
											href="#collapseOne" class="panel_a"><strong>link</strong></a>
									</h3>
								</div>
								<div id="collapseOne" class="panel-collapse collapse in">
									<div class="panel-body">
										<div class="row">
											<div class="col-md-4 col-sm-12 col-xs-12">
												<div class="pull-left">
													<span class="label label-default">项目编号 </span>
												</div>
												<div class="pull-left">
													<input type="text" class="form-control" disabled
														value="${project.projectId}">
												</div>
											</div>
											<div class="col-md-4 col-sm-12 col-xs-12">
												<div class="pull-left">
													<span class="label label-default">项目类型 </span>
												</div>
												<div class="pull-left">
													<select class="form-control select.form-control disabled">
														<option>--请选择--</option>
														<option selected="selected">意向项目</option>
														<option>实施项目</option>
													</select>
												</div>
											</div>
											<div class="col-md-4 col-sm-12 col-xs-12 ">
												<div class="pull-left">
													<span class="label label-default">优先级 </span>
												</div>
												<div class="pull-left radio-margin">
													<label><input type="radio" name="optionsRadios1"
														id="optionsRadios1" value="option1" checked disabled>高
													</label> <label><input type="radio" name="optionsRadios2"
														id="optionsRadios2" value="option2" disabled>中 </label> <label><input
														type="radio" name="optionsRadios3" id="optionsRadios3"
														value="option3" disabled>低 </label>
												</div>
											</div>
										</div>
										<div class="row row-margin">
											<div class="col-md-4 col-sm-12 col-xs-12">
												<div class="pull-left">
													<span class="label label-default">是否需要主管协助</span>
												</div>
												<div class="pull-left radio-margin">
													<label><input type="radio" name="optionsRadios4"
														id="optionsRadios4" value="option4" checked disabled>是
													</label> <label><input type="radio" name="optionsRadios5"
														id="optionsRadios5" value="option5" disabled>否 </label>
												</div>
											</div>
											<div class="col-md-4 col-sm-12 col-xs-12">
												<div class="pull-left">
													<span class="label label-default">开始日期 </span>
												</div>
												<div class="pull-left">
													<input type="text" class="form-control" disabled
														value="<fmt:formatDate value="${project.startDate}"
											pattern="yyyy-MM-dd" />">
												</div>
											</div>
											<div class="col-md-4 col-sm-12 col-xs-12">
												<div class="pull-left">
													<span class="label label-default">结束日期 </span>
												</div>
												<div class="pull-left">
													<input type="text" class="form-control" disabled
														value="<fmt:formatDate value="${project.endDate}"
											pattern="yyyy-MM-dd" />">
												</div>
											</div>
										</div>
										<div class="row row-margin">
											<div class="col-md-4 col-sm-12 col-xs-12">
												<div class="pull-left">
													<span class="label label-default">潜在经费 </span>
												</div>
												<div class="pull-left">
													<div class="pull-left">
														<input type="text" class="form-control" disabled
															value="${project.potentialExpenditure}">
													</div>
												</div>
											</div>
											<div class="col-md-4 col-sm-12 col-xs-12">
												<div class="pull-left">
													<span class="label label-default">样本数量 </span>
												</div>
												<div class="pull-left">
													<div class="pull-left">
														<input type="text" class="form-control" disabled
															value="${project.sampleCount }">
													</div>
												</div>
											</div>
											<div class="col-md-4 col-sm-12 col-xs-12">
												<div class="pull-left">
													<span class="label label-default">技术平台 </span>
												</div>
												<div class="pull-left">
													<div class="pull-left">
														<input type="text" class="form-control" disabled
															value="${project.platformDemand }">
													</div>
												</div>
											</div>
										</div>

										<div class="row row-margin">
											<div class="col-md-3 col-sm-12 col-xs-12">
												<div class="pull-left">
													<span class="label label-default">研究方向 </span>
												</div>
												<div class="pull-left">
													<input type="text" class="form-control" disabled
															value="${project.researchDirection }">
												</div>
											</div>
											<div class="col-md-3 col-sm-12 col-xs-12">
												<div class="pull-left">
													<span class="label label-default">10x1000合作 </span>
												</div>
												<div class="pull-left">
													<div class="pull-left radio-margin">
														<label><input type="radio" name="optionsRadios6"
															id="optionsRadios6" value="option6" disabled>是 </label> <label><input
															type="radio" name="optionsRadios7" id="optionsRadios7"
															value="option7" checked disabled>否 </label>
													</div>
												</div>
											</div>
											<div class="col-md-3 col-sm-12 col-xs-12">
												<div class="pull-left">
													<span class="label label-default">课题方案 </span>
												</div>
												<div class="pull-left">
													<div class="pull-left radio-margin">
														<label><input type="radio" name="optionsRadios8"
															id="optionsRadios8" value="option8" checked disabled>
															需要 </label> <label><input type="radio"
															name="optionsRadios9" id="optionsRadios9" value="option9"
															disabled> 不需要 </label>
													</div>
												</div>
											</div>
											<div class="col-md-3 col-sm-12 col-xs-12">
												<div class="pull-left">
													<span class="label label-default">SCI文章 </span>
												</div>
												<div class="pull-left">
													<div class="pull-left radio-margin">
														<label><input type="radio" name="optionsRadios10"
															id="optionsRadios10" value="option10" checked disabled>
															需发 </label> <label><input type="radio"
															name="optionsRadios11" id="optionsRadios11"
															value="option11" disabled> 不需发 </label>
													</div>
												</div>
											</div>
										</div>

										<div class="row row-margin">
											<div class="col-md-6 col-sm-12 col-xs-12">
												<div class="pull-left">
													<span class="label label-default">项目内容 </span>
												</div>
												<div class="pull-left">
													<textarea class="form-control" rows="8" disabled></textarea>
												</div>
											</div>
											<div class="col-md-6 col-sm-12 col-xs-12 ">
												<div class="pull-left">
													<span class="label label-default">项目备注 </span>
												</div>
												<div class="pull-left">
													<textarea class="form-control" rows="8" disabled></textarea>
												</div>
											</div>
										</div>
									</div>
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
														id="optionsRadios13" value="option13" disabled>中 </label>
													<label><input type="radio" name="optionsRadios14"
														id="optionsRadios14" value="option14" disabled>低 </label>
												</div>
											</div>
										</div>
										<div class="row row-margin">
											<div class="col-md-4 col-sm-12 col-xs-12">
												<div class="pull-left">
													<span class="label label-default">员工姓名 </span>
												</div>
												<div class="pull-left">
													<input type="text" class="form-control" disabled>
												</div>
											</div>
											<div class="col-md-4 col-sm-12 col-xs-12">
												<div class="pull-left">
													<span class="label label-default">进度内容 </span>
												</div>
												<div class="pull-left">
													<textarea class="form-control" rows="8" disabled></textarea>
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
											<div class="pull-left">
												<h5>
													<strong>实验外包信息</strong>
												</h5>
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
												<span class="label label-default">外包单位</span>
											</div>
											<div class="pull-left">
												<input type="text" class="form-control"
													style="width: 140%; margin-left: 14px">
											</div>
										</div>
										<div class="col-md-4 col-sm-12 col-xs-12">
											<div class="pull-left">
												<span class="label label-default">地址</span>
											</div>
											<div class="pull-left">
												<textarea class="form-control" rows="2" cols="9"
													style="margin-left: 23px"></textarea>
											</div>
										</div>
									</div>
									<div class="row row-margin">
										<div class="col-md-4 col-sm-12 col-xs-12">
											<div class="pull-left">
												<span class="label label-default">联系人</span>
											</div>
											<div class="pull-left">
												<input type="text" class="form-control"
													style="margin-left: 14px; width: 197px" disabled>
											</div>
										</div>
										<div class="col-md-4 col-sm-12 col-xs-12">
											<div class="pull-left">
												<span class="label label-default">联系人电话</span>
											</div>
											<div class="pull-left">
												<input type="text" class="form-control">
											</div>
										</div>
										<div class="col-md-4 col-sm-12 col-xs-12">
											<div class="pull-left">
												<span class="label label-default">合同信息</span>
											</div>
											<div class="pull-left">
												<textarea class="form-control" rows="2" cols="12"></textarea>
											</div>
										</div>
									</div>
									<div class="row row-margin">
										<div class="col-md-4 col-sm-12 col-xs-12">
											<div class="pull-left">
												<span class="label label-default">合同金额</span>
											</div>
											<div class="pull-left">
												<input type="text" class="form-control" disabled>
											</div>
										</div>
										<div class="col-md-4 col-sm-12 col-xs-12">
											<div class="pull-left">
												<span class="label label-default">送样日期</span>
											</div>
											<div class="pull-left">
												<input type="text" class="form-control"
													style="margin-left: 14px; width: 197px">
											</div>
										</div>
										<div class="col-md-4 col-sm-12 col-xs-12">
											<div class="pull-left">
												<span class="label label-default">结果是否收到</span>
											</div>
											<div class="pull-left radio-margin">
												<label><input type="radio" name="optionsRadios15"
													id="optionsRadios15" value="option15" checked disabled>是
												</label> <label><input type="radio" name="optionsRadios16"
													id="optionsRadios16" value="option16" disabled>否 </label>
											</div>
										</div>

									</div>
									<div class="row">
										<div class="col-md-12">
											<div class="pull-left">
												<h5>
													<strong>数据分析外包信息</strong>
												</h5>
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
												<span class="label label-default">外包单位</span>
											</div>
											<div class="pull-left">
												<input type="text" class="form-control"
													style="width: 140%; margin-left: 14px">
											</div>
										</div>
										<div class="col-md-4 col-sm-12 col-xs-12">
											<div class="pull-left">
												<span class="label label-default">地址</span>
											</div>
											<div class="pull-left">
												<textarea class="form-control" rows="2" cols="9"
													style="margin-left: 23px"></textarea>
											</div>
										</div>
									</div>
									<div class="row row-margin">
										<div class="col-md-4 col-sm-12 col-xs-12">
											<div class="pull-left">
												<span class="label label-default">联系人</span>
											</div>
											<div class="pull-left">
												<input type="text" class="form-control"
													style="margin-left: 14px; width: 197px" disabled>
											</div>
										</div>
										<div class="col-md-4 col-sm-12 col-xs-12">
											<div class="pull-left">
												<span class="label label-default">联系人电话</span>
											</div>
											<div class="pull-left">
												<input type="text" class="form-control" disabled>
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
										<div class="col-md-12">
											<div class="pull-left">
												<span class="label label-default">客户级别</span>
											</div>
											<div class="pull-left radio-margin">
												<label><input type="radio" name="optionsRadios17"
													id="optionsRadios17" value="option17" checked disabled>高
												</label> <label><input type="radio" name="optionsRadios18"
													id="optionsRadios18" value="option18" disabled>中 </label> <label><input
													type="radio" name="optionsRadios19" id="optionsRadios19"
													value="option19" disabled>低 </label>
											</div>
										</div>
									</div>
									<div class="row">
										<div class="col-md-12">
											<div class="pull-left">
												<h5>
													<strong>项目主要负责人</strong>
												</h5>
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
												<span class="label label-default">姓名</span>
											</div>
											<div class="pull-left">
												<input type="text" class="form-control"
													style="margin-left: 24px; width: 198px">
											</div>
										</div>
										<div class="col-md-4 col-sm-12 col-xs-12">
											<div class="pull-left">
												<span class="label label-default">性别</span>
											</div>
											<div class="pull-left radio-margin">
												<label><input type="radio" name="optionsRadios20"
													id="optionsRadios20" value="option20" checked disabled>男
												</label> <label><input type="radio" name="optionsRadios21"
													id="optionsRadios21" value="option21" disabled>女</label>
											</div>
										</div>
									</div>
									<div class="row row-margin">
										<div class="col-md-4 col-sm-12 col-xs-12">
											<div class="pull-left">
												<span class="label label-default">年龄 </span>
											</div>
											<div class="pull-left">
												<input type="text" class="form-control"
													style="margin-left: 24px; width: 198px" disabled>
											</div>
										</div>
										<div class="col-md-4 col-sm-12 col-xs-12">
											<div class="pull-left">
												<span class="label label-default">联系电话</span>
											</div>
											<div class="pull-left">
												<input type="text" class="form-control">
											</div>
										</div>
										<div class="col-md-4 col-sm-12 col-xs-12">
											<div class="pull-left">
												<span class="label label-default">联系手机</span>
											</div>
											<div class="pull-left">
												<input type="text" class="form-control">
											</div>
										</div>
									</div>
									<div class="row row-margin">
										<div class="col-md-4 col-sm-12 col-xs-12">
											<div class="pull-left">
												<span class="label label-default">工作单位 </span>
											</div>
											<div class="pull-left">
												<input type="text" class="form-control" disabled>
											</div>
										</div>
										<div class="col-md-4 col-sm-12 col-xs-12">
											<div class="pull-left">
												<span class="label label-default">科室/部门</span>
											</div>
											<div class="pull-left">
												<input type="text" class="form-control">
											</div>
										</div>
										<div class="col-md-4 col-sm-12 col-xs-12">
											<div class="pull-left">
												<span class="label label-default">职位</span>
											</div>
											<div class="pull-left">
												<input type="text" class="form-control"
													style="margin-left: 24px; width: 198px">
											</div>
										</div>
									</div>
									<div class="row row-margin">
										<div class="col-md-4 col-sm-12 col-xs-12">
											<div class="pull-left">
												<span class="label label-default">电子邮件</span>
											</div>
											<div class="pull-left">
												<input type="text" class="form-control" disabled>
											</div>
										</div>
										<div class="col-md-4 col-sm-12 col-xs-12">
											<div class="pull-left">
												<span class="label label-default">联系地址</span>
											</div>
											<div class="pull-left">
												<input type="text" class="form-control">
											</div>
										</div>
										<div class="col-md-4 col-sm-12 col-xs-12">
											<div class="pull-left">
												<span class="label label-default">研究方向</span>
											</div>
											<div class="pull-left">
												<input type="text" class="form-control">
											</div>
										</div>
									</div>
									<div class="row">
										<div class="col-md-12">
											<div class="pull-left">
												<h5>
													<strong>项目第一联系人</strong>
												</h5>
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
												<span class="label label-default">姓名</span>
											</div>
											<div class="pull-left">
												<input type="text" class="form-control"
													style="margin-left: 24px; width: 198px">
											</div>
										</div>
										<div class="col-md-4 col-sm-12 col-xs-12">
											<div class="pull-left">
												<span class="label label-default">性别</span>
											</div>
											<div class="pull-left radio-margin">
												<label><input type="radio" name="optionsRadios22"
													id="optionsRadios22" value="option22" checked disabled>男
												</label> <label><input type="radio" name="optionsRadios23"
													id="optionsRadios23" value="option23" disabled>女</label>
											</div>
										</div>
									</div>
									<div class="row row-margin">
										<div class="col-md-4 col-sm-12 col-xs-12">
											<div class="pull-left">
												<span class="label label-default">年龄 </span>
											</div>
											<div class="pull-left">
												<input type="text" class="form-control"
													style="margin-left: 24px; width: 198px" disabled>
											</div>
										</div>
										<div class="col-md-4 col-sm-12 col-xs-12">
											<div class="pull-left">
												<span class="label label-default">联系电话</span>
											</div>
											<div class="pull-left">
												<input type="text" class="form-control">
											</div>
										</div>
										<div class="col-md-4 col-sm-12 col-xs-12">
											<div class="pull-left">
												<span class="label label-default">联系手机</span>
											</div>
											<div class="pull-left">
												<input type="text" class="form-control">
											</div>
										</div>
									</div>
									<div class="row row-margin">
										<div class="col-md-4 col-sm-12 col-xs-12">
											<div class="pull-left">
												<span class="label label-default">工作单位 </span>
											</div>
											<div class="pull-left">
												<input type="text" class="form-control" disabled>
											</div>
										</div>
										<div class="col-md-4 col-sm-12 col-xs-12">
											<div class="pull-left">
												<span class="label label-default">科室/部门</span>
											</div>
											<div class="pull-left">
												<input type="text" class="form-control">
											</div>
										</div>
										<div class="col-md-4 col-sm-12 col-xs-12">
											<div class="pull-left">
												<span class="label label-default">职位</span>
											</div>
											<div class="pull-left">
												<input type="text" class="form-control"
													style="margin-left: 24px; width: 198px">
											</div>
										</div>
									</div>
									<div class="row row-margin">
										<div class="col-md-4 col-sm-12 col-xs-12">
											<div class="pull-left">
												<span class="label label-default">电子邮件</span>
											</div>
											<div class="pull-left">
												<input type="text" class="form-control" disabled>
											</div>
										</div>
										<div class="col-md-4 col-sm-12 col-xs-12">
											<div class="pull-left">
												<span class="label label-default">联系地址</span>
											</div>
											<div class="pull-left">
												<input type="text" class="form-control">
											</div>
										</div>
										<div class="col-md-4 col-sm-12 col-xs-12">
											<div class="pull-left">
												<span class="label label-default">研究方向</span>
											</div>
											<div class="pull-left">
												<input type="text" class="form-control">
											</div>
										</div>
									</div>
									<div class="row row-margin">
										<div class="col-md-4 col-sm-12 col-xs-12">
											<div class="pull-left">
												<span class="label label-default">与负责人关系</span>
											</div>
											<div class="pull-left">
												<input type="text" class="form-control" disabled>
											</div>
										</div>
										<div class="col-md-4 col-sm-12 col-xs-12">
											<div class="pull-left">
												<span class="label label-default">负责内容</span>
											</div>
											<div class="pull-left">
												<input type="text" class="form-control">
											</div>
										</div>
									</div>
									<div class="row">
										<div class="col-md-12">
											<div class="pull-left">
												<h5>
													<strong>项目第二联系人</strong>
												</h5>
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
												<span class="label label-default">姓名</span>
											</div>
											<div class="pull-left">
												<input type="text" class="form-control"
													style="margin-left: 24px; width: 198px">
											</div>
										</div>
										<div class="col-md-4 col-sm-12 col-xs-12">
											<div class="pull-left">
												<span class="label label-default">性别</span>
											</div>
											<div class="pull-left radio-margin">
												<label><input type="radio" name="optionsRadios24"
													id="optionsRadios24" value="option24" checked disabled>男
												</label> <label><input type="radio" name="optionsRadios25"
													id="optionsRadios25" value="option25" disabled>女</label>
											</div>
										</div>
									</div>
									<div class="row row-margin">
										<div class="col-md-4 col-sm-12 col-xs-12">
											<div class="pull-left">
												<span class="label label-default">年龄 </span>
											</div>
											<div class="pull-left">
												<input type="text" class="form-control"
													style="margin-left: 24px; width: 198px" disabled>
											</div>
										</div>
										<div class="col-md-4 col-sm-12 col-xs-12">
											<div class="pull-left">
												<span class="label label-default">联系电话</span>
											</div>
											<div class="pull-left">
												<input type="text" class="form-control">
											</div>
										</div>
										<div class="col-md-4 col-sm-12 col-xs-12">
											<div class="pull-left">
												<span class="label label-default">联系手机</span>
											</div>
											<div class="pull-left">
												<input type="text" class="form-control">
											</div>
										</div>
									</div>
									<div class="row row-margin">
										<div class="col-md-4 col-sm-12 col-xs-12">
											<div class="pull-left">
												<span class="label label-default">工作单位 </span>
											</div>
											<div class="pull-left">
												<input type="text" class="form-control" disabled>
											</div>
										</div>
										<div class="col-md-4 col-sm-12 col-xs-12">
											<div class="pull-left">
												<span class="label label-default">科室/部门</span>
											</div>
											<div class="pull-left">
												<input type="text" class="form-control">
											</div>
										</div>
										<div class="col-md-4 col-sm-12 col-xs-12">
											<div class="pull-left">
												<span class="label label-default">职位</span>
											</div>
											<div class="pull-left">
												<input type="text" class="form-control"
													style="margin-left: 24px; width: 198px">
											</div>
										</div>
									</div>
									<div class="row row-margin">
										<div class="col-md-4 col-sm-12 col-xs-12">
											<div class="pull-left">
												<span class="label label-default">电子邮件</span>
											</div>
											<div class="pull-left">
												<input type="text" class="form-control" disabled>
											</div>
										</div>
										<div class="col-md-4 col-sm-12 col-xs-12">
											<div class="pull-left">
												<span class="label label-default">联系地址</span>
											</div>
											<div class="pull-left">
												<input type="text" class="form-control">
											</div>
										</div>
										<div class="col-md-4 col-sm-12 col-xs-12">
											<div class="pull-left">
												<span class="label label-default">研究方向</span>
											</div>
											<div class="pull-left">
												<input type="text" class="form-control">
											</div>
										</div>
									</div>
									<div class="row row-margin">
										<div class="col-md-4 col-sm-12 col-xs-12">
											<div class="pull-left">
												<span class="label label-default">与负责人关系</span>
											</div>
											<div class="pull-left">
												<input type="text" class="form-control" disabled>
											</div>
										</div>
										<div class="col-md-4 col-sm-12 col-xs-12">
											<div class="pull-left">
												<span class="label label-default">负责内容</span>
											</div>
											<div class="pull-left">
												<input type="text" class="form-control">
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
									ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis
									nostrud exercitation ullamco laboris nisi ut aliquip ex ea
									commodo consequat. Duis aute irure dolor in reprehenderit in
									voluptate velit esse cillum dolore eu fugiat nulla pariatur.
									Excepteur sint occaecat cupidatat non proident, sunt in culpa
									qui officia deserunt mollit anim id est laborum.</div>
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
		$(document).ready(function() {

			$("nav li").click(function() {
				$(this).addClass('active').siblings().removeClass('active');
			});

			$("#link_pro").click(function() {
				$("#mainframe").attr("src", "../page/projectBasicData.html");
			});

			$("#link_customer").click(function() {
				$("#mainframe").attr("src", "../page/customInfo.html");
			});

			$("#link_outsource").click(function() {
				$("#mainframe").attr("src", "../page/outsource.html");
			});

			$("#link_proStatus").click(function() {
				$("#mainframe").attr("src", "../page/proStatus.html");
			});

			$("#link_customCalling").click(function() {
				$("#mainframe").attr("src", "../page/customCalling.html");
			});

			$(".pagination li ").click(function() {
				$(this).addClass('active').siblings().removeClass('active');
			});

			$("#projectStatusBadge").click(function() {
				alert($("#projectStatusBadge").text());
				$("#projectStatusBadge").text("");
			})

		});
	</script>


</body>

</html>