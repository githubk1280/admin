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
					<form:form action="add" method="post" commandName="sample">
					<div class="panel-body">
						<div class="panel-group" id="accordion">
							<div class="panel panel-default">
								<div class="panel-heading ">
									<h3 class="panel-title">
										<strong>添加样本基本信息</strong>
										<!-- <a  data-toggle="collapse"  href="#collapseOne" class="panel_a"><strong>link</strong></a> -->
									</h3>
								</div>
								<div id="collapseOne" class="panel-collapse collapse in">
									<div class="panel-body">
										<div class="row">
											<div class="col-md-6 col-sm-12 col-xs-12">
												<div>
													<label>所属项目编号:</label>
													<label id="projectIdLbl" class="warning-style">该字段不允许为空</label>
												</div>
												<div>
													<form:input id="projectId" path="projectId" class="form-control" />
												</div>
											</div>
										</div>
										<div class="row row-margin">
											<div class="col-md-6 col-sm-12 col-xs-12">
												<div>
													<label>样品编号 </label>
												</div>
												<div>
													<input type="text" class="form-control" placeholder="自动生成"
														disabled>
												</div>
											</div>
											<div class="col-md-6 col-sm-12 col-xs-12">
												<div>
													<label>样品来源单位 </label>
													<label id="sourceUnitLbl" class="warning-style">该字段不允许为空</label>
												</div>
												<div>
													<form:input id="sourceUnit" path="sourceUnit" class="form-control" />
												</div>
											</div>
										</div>
										<div class="row row-margin">
											<div class="col-md-6 col-sm-12 col-xs-12">
												<div>
													<label>样品负责人</label>
													<label id="samplePrincripalLbl" class="warning-style">该字段不允许为空</label>
												</div>
												<div>
													<form:input id="samplePrincripal" path="samplePrincripal" class="form-control"/>
												</div>
											</div>
											<div class="col-md-6 col-sm-12 col-xs-12">
												<div>
													<label>项目负责人</label>
													<label id="projectPrincripalLbl" class="warning-style">该字段不允许为空</label>
												</div>
												<div>
													<form:input id="projectPrincripal" path="projectPrincripal" class="form-control"/>
												</div>
											</div>
										</div>
										<div class="row row-margin">
											<div class="col-md-6 col-sm-12 col-xs-12">
												<div>
													<label>是否外送</label>
												</div>
												<div class="pull-left">
													<label><input type="radio" 
														id="sended1" value="Y" checked>是 </label> <label><input
														type="radio"  id="sended2"
														value="N">否 </label>
												</div>
											</div>
											<div class="col-md-6 col-sm-12 col-xs-12">
												<div>
													<label>样本类型</label>
												</div>
												<div class="pull-left">
													<label><input type="radio"
														id="sampleType1" value="A" checked>A </label> <label><input
														type="radio"  id="sampleType12"
														value="B">B </label>
												</div>
											</div>
										</div>
										<div class="row row-margin">
											<div class="col-md-6 col-sm-12 col-xs-12">
												<div>
													<label>样品数量 </label>
													<label id="sampleAmountLbl" class="warning-style">该字段不允许为空</label>
													<label id="checkSampleAmountLbl" class="warning-style">请输入正确的样本数量</label>
												</div>
												<div>
													<form:input id="sampleAmount" path="sampleAmount" class="form-control" />
												</div>
											</div>
											<div class="col-md-6 col-sm-12 col-xs-12">
												<div>
													<label>外送编号</label>
													<label id="deliveryNumLbl" class="warning-style">该字段不允许为空</label>
												</div>
												<div>
													<form:input id="deliveryNum" path="deliveryNum" class="form-control" />
												</div>
											</div>
										</div>
										<div class="row row-margin">
											<div class="col-md-6 col-sm-12 col-xs-12">
												<div>
													<label>收样日期</label>
													<label id="reciveDateLbl" class="warning-style">该字段不允许为空</label>
													<label id="reciveDateFormatLbl" class="warning-style">日期格式不正确</label>
													<label id="isreciveDateLbl" class="warning-style">您输入的日期不存在</label>
												</div>
												<div>
													<div>
														<form:input id="reciveDate" path="reciveDate" class="form-control form_date" />
													</div>
												</div>
											</div>
											<div class="col-md-6 col-sm-12 col-xs-12">
												<div>
													<label>报告日期</label>
													<label id="reportDateLbl" class="warning-style">该字段不允许为空</label>
													<label id="reportDateFormatLbl" class="warning-style">日期格式不正确</label>
													<label id="isreportDateLbl" class="warning-style">您输入的日期不存在</label>
												</div>
												<div>
													<div>
														<form:input id="reportDate" path="reportDate" class="form-control form_date" />
													</div>
												</div>
											</div>
										</div>
										<div class="row row-margin">
											<div class="col-md-6 col-sm-12 col-xs-12">
												<div>
													<label>存放位置</label>
													<label id="locationLbl" class="warning-style">该字段不允许为空</label>
												</div>
												<div>
													<form:input id="location" path="diskLocation" class="form-control"/>
												</div>
											</div>
										</div>
										<div class="row row-margin">
											<div class="col-md-6 col-sm-12 col-xs-12">
												<button id="save" class="btn btn-default btn-primary" type="submit">保存</button>
												<button id="cancel" class="btn btn-default btn-primary" type="reset">取消</button>
											</div>
										</div>
									</div>
								</div>
							</div>
						</div>
					</div>
					</form:form>
				</div>
				<!-- /.panel -->
			</div>
		</div>
	</div>
	<!-- /#wrapper -->
	<%@ include file="../common/modal.jsp"%>

	<%@ include file="../comm-fragement/main-js"%>
	<%@ include file="../comm-fragement/addSampleVal-js"%>
	


</body>

</html>