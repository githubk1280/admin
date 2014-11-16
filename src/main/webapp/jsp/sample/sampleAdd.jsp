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
										<strong>添加新的项目信息</strong>
										<!-- <a  data-toggle="collapse"  href="#collapseOne" class="panel_a"><strong>link</strong></a> -->
									</h3>
								</div>
								<div id="collapseOne" class="panel-collapse collapse in">
									<div class="panel-body">
										<div class="row">
											<div class="col-md-6 col-sm-12 col-xs-12">
												<div>
													<label>所属项目编号:</label>
												</div>
												<div>
													<form:input path="projectId" class="form-control" />
												</div>
											</div>
										</div>
										<div class="row">
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
												</div>
												<div>
													<form:input path="sourceUnit" class="form-control" />
												</div>
											</div>
										</div>
										<div class="row row-margin">
											<div class="col-md-6 col-sm-12 col-xs-12">
												<div>
													<label>样品负责人</label>
												</div>
												<div>
													<form:input path="samplePrincripal" class="form-control"/>
												</div>
											</div>
											<div class="col-md-6 col-sm-12 col-xs-12">
												<div>
													<label>项目负责人</label>
												</div>
												<div>
													<form:input path="projectPrincripal" class="form-control"/>
												</div>
											</div>
										</div>
										<div class="row row-margin">
											<div class="col-md-6 col-sm-12 col-xs-12">
												<div>
													<label>是否外送</label>
												</div>
												<div class="pull-left">
													<label><input type="radio" name="optionsRadios1"
														id="optionsRadios1" value="Y" checked>是 </label> <label><input
														type="radio" name="optionsRadios2" id="optionsRadios2"
														value="N">否 </label>
												</div>
											</div>
											<div class="col-md-6 col-sm-12 col-xs-12">
												<div>
													<label>样本类型</label>
												</div>
												<div class="pull-left">
													<label><input type="radio" name="optionsRadios4"
														id="optionsRadios4" value="A" checked>A </label> <label><input
														type="radio" name="optionsRadios5" id="optionsRadios5"
														value="B">B </label>
												</div>
											</div>
										</div>
										<div class="row row-margin">
											<div class="col-md-6 col-sm-12 col-xs-12">
												<div>
													<label>样品数量 </label>
												</div>
												<div>
													<form:input path="sampleAmount" class="form-control" />
												</div>
											</div>
											<div class="col-md-6 col-sm-12 col-xs-12">
												<div>
													<label>外送编号</label>
												</div>
												<div>
													<form:input path="deliveryNum" class="form-control" />
												</div>
											</div>
										</div>
										<div class="row row-margin">
											<div class="col-md-6 col-sm-12 col-xs-12">
												<div>
													<label>收样日期</label>
												</div>
												<div>
													<div>
														<form:input path="reciveDate" class="form-control" />
													</div>
												</div>
											</div>
											<div class="col-md-6 col-sm-12 col-xs-12">
												<div>
													<label>报告日期</label>
												</div>
												<div>
													<div>
														<form:input path="reportDate" class="form-control" />
													</div>
												</div>
											</div>
										</div>
										<div class="row row-margin">
											<div class="col-md-6 col-sm-12 col-xs-12">
												<div>
													<label>存放位置</label>
												</div>
												<div>
													<form:input path="diskLocation" class="form-control"/>
												</div>
											</div>
										</div>
										<div class="row row-margin">
											<div class="col-md-6 col-sm-12 col-xs-12">
												<button class="btn btn-default btn-primary" type="submit">保存</button>
												<button class="btn btn-default btn-primary" type="reset">取消</button>
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