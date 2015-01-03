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
					<div class="panel-body">
						<div class="panel panel-default">
							<div class="panel-heading">
								<h3 class="panel-title">
									<strong>客户信息</strong>
								</h3>
						</div>
						<div id="panelCustomerInfo" class="panel-body">
			<div class="row">
				<div class="col-md-6">
					<div>
						<label>客户级别</label>
					</div>
					<div class="pull-left">
						<label><input type="radio" id="customerLevel1"  checked>VIP-1 </label> 
						<label><input type="radio" id="customerLevel2" value="option18">VIP-2</label> 
						<label><input type="radio" id="customerLevel3" value="option19">VIP-3</label>
						<label><input type="radio" id="customerLevel4" value="option19">VIP-4</label>
						<label><input type="radio" id="customerLevel5" value="option19">VIP-5</label>
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
						<input id="projectIdForCustomerAdd" type="text" class="form-control"  readonly="true">
					</div>
				</div>
				<div class="col-md-6 col-sm-12 col-xs-12">
					<div>
						<label>姓名 </label>
					</div>
					<div>
						<input type="text" class="form-control" readonly="true" maxlength="5"/>
					</div>
				</div>
			</div>
			<div class="row">
				<div class="col-md-6 col-sm-12 col-xs-12">
					<div>
						<label>性别 </label>
					</div>
					<div>
						<input type="text" class="form-control"  readonly="true" maxlength="1"/>
					</div>
				</div>
				<div class="col-md-6 col-sm-12 col-xs-12">
					<div>
						<label>年龄 </label>
						<label id="principalAgeLbl" class="warning-style">请输入正确的年龄</label>
					</div>
					<div>
						<input id="principalAge" type="text" class="form-control"  readonly="true" maxlength="3"/>
					</div>
				</div>
			</div>
			<div class="row">
				<div class="col-md-6 col-sm-12 col-xs-12">
					<div>
						<label>联系电话 </label>
						<label id="principalPhoneLbl" class="warning-style">请输入正确的号码</label>
					</div>
					<div>
						<input id="principalPhone" type="text" class="form-control"  readonly="true" maxlength="15"/>
					</div>
				</div>
				<div class="col-md-6 col-sm-12 col-xs-12">
					<div>
						<label>联系手机 </label>
						<label id="principalCellPhoneLbl" class="warning-style">请输入正确的号码</label>
					</div>
					<div>
						<input id="principalCellPhone" type="text" class="form-control"  readonly="true" maxlength="15"/>
					</div>
				</div>
			</div>
			<div class="row">
				<div class="col-md-6 col-sm-12 col-xs-12">
					<div>
						<label>工作单位 </label>
					</div>
					<div>
						<input type="text" class="form-control" readonly="true" maxlength="20"/>
					</div>
				</div>
				<div class="col-md-6 col-sm-12 col-xs-12">
					<div>
						<label>科室/部门 </label>
					</div>
					<div>
						<input type="text" class="form-control" readonly="true" maxlength="10"/>
					</div>
				</div>
			</div>
			<div class="row">
				<div class="col-md-6 col-sm-12 col-xs-12">
					<div>
						<label>职位 </label>
					</div>
					<div>
						<input type="text" class="form-control"  readonly="true" maxlength="6"/>
					</div>
				</div>
				<div class="col-md-6 col-sm-12 col-xs-12">
					<div>
						<label>电子邮件 </label>
						<label id="principalMailLbl" class="warning-style">请输入正确的邮箱</label>
					</div>
					<div>
						<input id="principalMail" type="text" class="form-control"  readonly="true" maxlength="20"/>
					</div>
				</div>
			</div>
			<div class="row">
				<div class="col-md-6 col-sm-12 col-xs-12">
					<div>
						<label>联系地址 </label>
					</div>
					<div>
						<input type="text" class="form-control"  readonly="true" maxlength="100"/>
					</div>
				</div>
				<div class="col-md-6 col-sm-12 col-xs-12">
					<div>
						<label>研究方向 </label>
					</div>
					<div>
						<input type="text" class="form-control"  readonly="true" maxlength="10"/>
					</div>
				</div>
			</div>
			<div class="row row-margin" >
				<div class="col-md-6 col-sm-12 col-xs-12">
					<button id="saveCustomer" class="btn btn-default btn-primary" type="submit">保存</button>
					<button id="cancelCustomer" class="btn btn-default btn-primary" type="button">取消</button>
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
			$("#cancelCustomer").click(function() {
				window.location.replace("http://"+window.location.host+"/admin/customer/pages/1");			
				return false;
			});
	});
	</script>

</body>

</html>