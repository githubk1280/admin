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
					<!----------------------------------------custom info start ------------------------->
	                                <div class="panel panel-default">
	                                    <div class="panel-heading">
	                                        <h3 class="panel-title">
	                                            	<strong>客户信息</strong>
	                                            	<button id="modifyCustomInfo"  type="button" class="btn btn-default btn-success" style="margin-right: 10px;float:right; padding:1px 12px">修改</button>
													<button id="cancelCustomInfo"  type="reset" class="btn btn-default btn-success" style="margin-left: 10px; margin-right: 10px;float:right; padding:1px 12px; display: none" ng-click="cancelClick()">取消</button>
													<button id="saveCustomInfo"  class="btn btn-default btn-success" style="margin-left: 10px; margin-right: 10px;float:right; padding:1px 12px; display: none" ng-click="saveOutSource()">保存</button>
	                                        </h3>
	                                    </div>
	                                    <div id="collapseFour" class="panel-collapse collapse in" style="">
	                                     <div id="panelCustomerInfo" class="panel-body">
			
			
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
						<input id="secondCustomerProjectId" type="text" class="form-control" value="${project.projectId }" readonly="true"/>
					</div>
				</div>
				<div class="col-md-6 col-sm-12 col-xs-12">
					<div>
						<label>姓名 </label>
					</div>
					<div>
						<input type="text" class="form-control" ng-model="customer2.customerName" readonly="true" maxlength="5"/>
					</div>
				</div>
			</div>
			<div class="row">
				<div class="col-md-6 col-sm-12 col-xs-12">
					<div>
						<label>性别 </label>
					</div>
					<div>
						<input type="text" class="form-control" ng-model="customer2.sex" readonly="true" maxlength="1"/>
					</div>
				</div>
				<div class="col-md-6 col-sm-12 col-xs-12">
					<div>
						<label>年龄 </label>
						<label id="secondAgeLbl" class="warning-style">请输入正确的年龄</label>
					</div>
					<div>
						<input id="secondAge" type="text" class="form-control" ng-model="customer2.age" readonly="true" maxlength="3"/>
					</div>
				</div>
			</div>
			<div class="row">
				<div class="col-md-6 col-sm-12 col-xs-12">
					<div>
						<label>联系电话 </label>
						<label id="secondPhoneLbl" class="warning-style">请输入正确的号码</label>
					</div>
					<div>
						<input id="secondPhone" type="text" class="form-control" ng-model="customer2.phone" readonly="true" maxlength="15"/>
					</div>
				</div>
				<div class="col-md-6 col-sm-12 col-xs-12">
					<div>
						<label>联系手机 </label>
						<label id="secondCellphoneLbl" class="warning-style">请输入正确的号码</label>
					</div>
					<div>
						<input id="secondCellphone" type="text" class="form-control" ng-model="customer2.cellphone" readonly="true" maxlength="15"/>
					</div>
				</div>
			</div>
			<div class="row">
				<div class="col-md-6 col-sm-12 col-xs-12">
					<div>
						<label>工作单位 </label>
					</div>
					<div>
						<input type="text" class="form-control" ng-model="customer2.workUnit" readonly="true" maxlength="20"/>
					</div>
				</div>
				<div class="col-md-6 col-sm-12 col-xs-12">
					<div>
						<label>科室/部门 </label>
					</div>
					<div>
						<input type="text" class="form-control" ng-model="customer2.department" readonly="true" maxlength="10"/>
					</div>
				</div>
			</div>
			<div class="row">
				<div class="col-md-6 col-sm-12 col-xs-12">
					<div>
						<label>职位 </label>
					</div>
					<div>
						<input type="text" class="form-control" ng-model="customer2.position" readonly="true" maxlength="6"/>
					</div>
				</div>
				<div class="col-md-6 col-sm-12 col-xs-12">
					<div>
						<label>电子邮件 </label>
						<label id="secondMailLbl" class="warning-style">请输入正确的邮箱</label>
					</div>
					<div>
						<input id="secondMail" type="text" class="form-control" ng-model="customer2.email" readonly="true" maxlength="20"/>
					</div>
				</div>
			</div>
			<div class="row">
				<div class="col-md-6 col-sm-12 col-xs-12">
					<div>
						<label>联系地址 </label>
					</div>
					<div>
						<input type="text" class="form-control" ng-model="customer2.adress" readonly="true"  maxlength="100"/>
					</div>
				</div>
				<div class="col-md-6 col-sm-12 col-xs-12">
					<div>
						<label>研究方向 </label>
					</div>
					<div>
						<input type="text" class="form-control" ng-model="customer2.resarchDirection" readonly="true"  maxlength="10"/>
					</div>
				</div>
			</div>
			<div class="row">
				<div class="col-md-6 col-sm-12 col-xs-12">
					<div>
						<label>与负责人关系 </label>
					</div>
					<div>
						<input type="text" class="form-control" ng-model="customer2.relationShip" readonly="true" maxlength="10"/>
					</div>
				</div>
				<div class="col-md-6 col-sm-12 col-xs-12">
					<div>
						<label>负责内容 </label>
					</div>
					<div>
						<input type="text" class="form-control"  ng-model="customer2.responsibleArea" readonly="true" maxlength="50"/>
					</div>
				</div>
			</div>
       </div>
     </div>
	<!----------------------------------------custom info end ------------------------->
						</div>

					<!-- .panel-body -->
				</div>
				<!-- /.panel -->
			</div>
		</div>
	</div>
	<!-- /#wrapper -->
	<%@ include file="../common/modal.jsp"%>
	<%@ include file="../comm-fragement/modifyCustomerVal-js"%>
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