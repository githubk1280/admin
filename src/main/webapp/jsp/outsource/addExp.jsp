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
					<div class="panel-body">
						<div class="panel panel-default">
							<div class="panel-heading">
								<h3 class="panel-title">
									<strong>外包信息</strong>
								</h3>
						</div>
						<div id="collapseThree" class="panel-collapse collapse in" style="">
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
						<input id="outsourceProjectID" type="text" readonly="true" class="form-control" value="${project.projectId }">
					</div>
				</div>
				<div class="col-md-6 col-sm-12 col-xs-12">
					<div>
						<label>外包单位</label>
					</div>
					<div>
						<input type="text" maxlength="20" class="form-control">
					</div>
				</div>
			</div>
			<div class="row row-margin">
				<div class="col-md-6 col-sm-12 col-xs-12">
					<div>
						<label>联系人</label>
					</div>
					<div>
						<input type="text" maxlength="5" class="form-control" >
					</div>
				</div>
				<div class="col-md-6 col-sm-12 col-xs-12">
					<div>
						<label>联系人电话</label>
						<label id="contactPhoneLbl" class="warning-style">请输入正确的号码</label>
					</div>
					<div>
						<input id="contactPhone" type="text" maxlength="15" class="form-control" >
					</div>
				</div>
			</div>

			<div class="row row-margin">
				<div class="col-md-6 col-sm-12 col-xs-12">
					<div>
						<label>合同金额</label>
						<label id="contractAmountLbl" class="warning-style">请输入正确的金额</label>
					</div>
					<div>
						<input id="contractAmount" type="text" maxlength="5" class="form-control">
					</div>
				</div>
				<div class="col-md-6 col-sm-12 col-xs-12">
					<div>
						<label>送样日期</label>
						<label id="sendSampleDateLbl" class="warning-style">日期格式不正确</label>
						<label id="issendSampleDateLbl" class="warning-style">您输入的日期不存在</label>
					</div>
					<div>
						<input id="sendSampleDate" type="text"  maxlength="10" class="form-control form_date" > 
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
								id="resultReceived1" value="1"  checked>是 </label> <label><input
								id="resultReceived2" type="radio" name="optionsRadios7" id="optionsRadios7"
								value="2" ng-model="pgos.experimentOS.exprResultRecived">否 </label>
						</div>
					</div>
				</div>
				<div class="col-md-6 col-sm-12 col-xs-12">
					<div>
						<label>样本数量</label>
					</div>
					<div>
						<div>
							<input type="text"  maxlength="10" class="form-control" >
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
						<textarea class="form-control" rows="8" ></textarea>
					</div>
				</div>
			</div>
			<div class="row row-margin">
				<div class="col-md-6 col-sm-12 col-xs-12">
					<button id="saveOutSource" class="btn btn-default btn-primary" type="submit">保存</button>
					<button id="cancelOutSource" class="btn btn-default btn-primary" type="button">取消</button>
				</div>
			</div>
									</div>
									</div>
					</div>
				</div>
			</div>
		</div>
	</div>
	</div>
	
	<!-- /#wrapper -->
	<%@ include file="../common/modal.jsp"%>

	<%@ include file="../comm-fragement/main-js"%>
	<%@ include file="../comm-fragement/addProjecVal-js"%>
	<script type="text/javascript">
		$(document).ready(function() {
			$("#cancelOutSource").click(function() {
				window.location.replace("http://"+window.location.host+"/admin/outsource/pages/1");			
				return false;
			});
	});
	</script>

</body>

</html>