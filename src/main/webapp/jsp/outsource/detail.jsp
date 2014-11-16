<%@ page language="java"
	import="com.tmrasys.enums.AdminEnum.OutSourceTypeEnum"
	contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
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
						<!----------------------------------------outsource start ------------------------->
						<div class="panel panel-default">
							<div class="panel-heading">
								<h3 class="panel-title">
									<strong>外包信息</strong> <a data-toggle="collapse"
										href="#collapseThree" class="panel_a"><strong>link</strong></a>
								</h3>
							</div>

							<div id="collapseThree" class="panel-collapse collapse in" style="">
								<div class="panel-body">
									<c:if test="${outsource.outSourceType.equals('实验外包')}">
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
													<input type="text" class="form-control"
														value="${outsource.outSourceId }" disabled>
												</div>
											</div>
											<div class="col-md-6 col-sm-12 col-xs-12">
												<div>
													<label>外包单位</label>
												</div>
												<div>
													<input type="text" class="form-control"
														value="${outsource.outSourceUnit }" disabled>
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
													<input type="text" class="form-control"
														value="<fmt:formatDate value="${outsource.sendSampleDate }"
											pattern="yyyy-MM-dd" />"
														disabled>
												</div>
											</div>
										</div>
										<div class="row row-margin">
											<div class="col-md-6 col-sm-12 col-xs-12">
												<div>
													<label>结果是否收到</label>
												</div>
												<div>
													<input type="text" class="form-control"
														value="${outsource.exprResultRecived==true?'已收到':'未收到'}" disabled>
												</div>
											</div>
											<div class="col-md-6 col-sm-12 col-xs-12">
												<div>
													<label>送样数量</label>
												</div>
												<div>
													<div>
														<input type="text" class="form-control"
															value="${outsource.sendSampleCount }" disabled>
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
													<textarea class="form-control" rows="8" disabled>${outsource.address }</textarea>
												</div>
											</div>
										</div>
									</c:if>
									<c:if test="${outsource.outSourceType.equals('数据分析外包')}">
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
													<input type="text" class="form-control"
														value="${outsource.outSourceId }" disabled>
												</div>
											</div>
											<div class="col-md-6 col-sm-12 col-xs-12">
												<div>
													<label>外包单位</label>
												</div>
												<div>
													<input type="text" class="form-control"
														value="${outsource.outSourceUnit }" disabled>
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
													<textarea class="form-control" rows="8" disabled>${outsource.address }</textarea>
												</div>
											</div>
										</div>
									</c:if>
								</div>
							</div>
						</div>
						<!----------------------------------------outsource end ------------------------->
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