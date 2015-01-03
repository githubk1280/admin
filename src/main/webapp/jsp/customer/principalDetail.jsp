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
					<form:form action="updatePrincipal/${customer.customerId}" method="post" commandName="customer">
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
				<div class="col-md-6">
					<div>
						<label>客户级别</label>
					</div>
					<div class="pull-left">
						<label><form:radiobutton path="customerLevel"   value="0" />VIP-1</label> 
						<label><form:radiobutton path="customerLevel"   value="1" />VIP-2</label> 
						<label><form:radiobutton path="customerLevel"   value="2" />VIP-3</label>
						<label><form:radiobutton path="customerLevel"   value="3" />VIP-4</label>
						<label><form:radiobutton path="customerLevel"   value="4" />VIP-5</label> 
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
						<form:input id="projectIdForCustomerAdd" path="projectId" type="text" class="form-control"  readonly="true"/>
					</div>
				</div>
				<div class="col-md-6 col-sm-12 col-xs-12">
					<div>
						<label>姓名 </label>
					</div>
					<div>
						<form:input id="customerName" path="customerName" type="text" class="form-control"  readonly="true" maxlength="5"/>
					</div>
				</div>
			</div>
			<div class="row">
				<div class="col-md-6 col-sm-12 col-xs-12">
					<div>
						<label>性别 </label>
					</div>
					<div>
						<form:input id="sex"  path="sex" type="text" class="form-control"  readonly="true" maxlength="1"/>
					</div>
				</div>
				<div class="col-md-6 col-sm-12 col-xs-12">
					<div>
						<label>年龄 </label>
						<label id="principalAgeLbl" class="warning-style">请输入正确的年龄</label>
					</div>
					<div>
						<form:input id="age" path="age" type="text" class="form-control"  readonly="true" maxlength="3"/>
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
						<form:input id="phone" path="phone" type="text" class="form-control"  readonly="true" maxlength="15"/>
					</div>
				</div>
				<div class="col-md-6 col-sm-12 col-xs-12">
					<div>
						<label>联系手机 </label>
						<label id="principalCellPhoneLbl" class="warning-style">请输入正确的号码</label>
					</div>
					<div>
						<form:input id="cellphone" path="cellphone" type="text" class="form-control"  readonly="true" maxlength="15"/>
					</div>
				</div>
			</div>
			<div class="row">
				<div class="col-md-6 col-sm-12 col-xs-12">
					<div>
						<label>工作单位 </label>
					</div>
					<div>
						<form:input id="workUnit" path="workUnit" type="text" class="form-control"  readonly="true" maxlength="20"/>
					</div>
				</div>
				<div class="col-md-6 col-sm-12 col-xs-12">
					<div>
						<label>科室/部门 </label>
					</div>
					<div>
						<form:input id="department" path="department" type="text" class="form-control"  readonly="true" maxlength="10"/>
					</div>
				</div>
			</div>
			<div class="row">
				<div class="col-md-6 col-sm-12 col-xs-12">
					<div>
						<label>职位 </label>
					</div>
					<div>
						<form:input id="position" path="position" type="text" class="form-control"  readonly="true" maxlength="6"/>
					</div>
				</div>
				<div class="col-md-6 col-sm-12 col-xs-12">
					<div>
						<label>电子邮件 </label>
						<label id="principalMailLbl" class="warning-style">请输入正确的邮箱</label>
					</div>
					<div>
						<form:input id="email" path="email" type="text" class="form-control"  readonly="true" maxlength="20"/>
					</div>
				</div>
			</div>
			<div class="row">
				<div class="col-md-6 col-sm-12 col-xs-12">
					<div>
						<label>联系地址 </label>
					</div>
					<div>
						<form:input id="adress" path="adress" type="text" class="form-control"  readonly="true" maxlength="100"/>
					</div>
				</div>
				<div class="col-md-6 col-sm-12 col-xs-12">
					<div>
						<label>研究方向 </label>
					</div>
					<div>
						<form:input id="resarchDirection" path="resarchDirection" class="form-control"  readonly="true" maxlength="10"/>
					</div>
				</div>
			</div>
		</div>
       </div>
     </div>
     </form:form>
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
	<%@ include file="../comm-fragement/main-js"%>
	<script type="text/javascript">
		$(document).ready(function() {
			/****button switch of project basic data start***/
			if($("#modifyCustomInfo").css('display')=="block"){
				$("#panelCustomerInfo input").attr("readonly",true);
				$("#panelCustomerInfo textarea").attr("readonly",true);
				$("#customerLevel0").attr("disabled",true);
				$("#customerLevel1").attr("disabled",true);
				$("#customerLevel2").attr("disabled",true);
				$("#customerLevel3").attr("disabled",true);
				$("#customerLevel4").attr("disabled",true);
				
			}else{
				$("#panelCustomerInfo input").attr("readonly",false);
				$("#panelCustomerInfo textarea").attr("readonly",false);
			}

			$("#modifyCustomInfo").click(function(){
				$("#saveCustomInfo").css('display','block');
				$("#cancelCustomInfo").css('display','block');
				$("#modifyCustomInfo").css('display','none');
				$("#panelCustomerInfo input").attr("readonly",false);
				$("#panelCustomerInfo textarea").attr("readonly",false);
				$("#customerLevel0").attr("disabled",false);
				$("#customerLevel1").attr("disabled",false);
				$("#customerLevel2").attr("disabled",false);
				$("#customerLevel3").attr("disabled",false);
				$("#customerLevel4").attr("disabled",false);
				$("#projectIdForCustomerAdd").attr("readonly",true);
				$("#firstCustomerProjectId").attr("readonly",true);
				$("#secondCustomerProjectId").attr("readonly",true);
				
			});


			$("#cancelCustomInfo").click(function(){
				$("#saveCustomInfo").css('display','none');
				$("#modifyCustomInfo").css('display','block');
				$("#cancelCustomInfo").css('display','none');
				$("#panelCustomerInfo input").attr("readonly",true);
				$("#panelCustomerInfo textarea").attr("readonly",true);
				$("#customerLevel0").attr("disabled",true);
				$("#customerLevel1").attr("disabled",true);
				$("#customerLevel2").attr("disabled",true);
				$("#customerLevel3").attr("disabled",true);
				$("#customerLevel4").attr("disabled",true);
				$("#principalAgeLbl").hide();
				$("#principalPhoneLbl").hide();
				$("#principalCellPhoneLbl").hide();
				$("#principalMailLbl").hide();
			});	
			
			
			$("#saveCustomInfo").click(function(){
				$("#saveCustomInfo").attr("type","submit");
				var principalAge = $("#age").val();
					principalAge = $.trim(principalAge);
				var principalPhone = $("#phone").val();
					principalPhone = $.trim(principalPhone);
				var principalCellPhone = $("#cellphone").val();
					principalCellPhone = $.trim(principalCellPhone);
				var principalMail = $("#email").val();
					principalMail = $.trim(principalMail);
				if(principalAge.length>0){
					customerInfo_isPositiveInteger($("#age"));
				}
				
				if(principalPhone.length>0){
					customerInfo_isPositiveInteger($("#phone"));
				}
				
				if(principalCellPhone.length>0){
					customerInfo_isPositiveInteger($("#cellphone"));
				}
				
				if(principalMail.length>0){
					isEmail($("#email"));
				}
			});
		});
		/***validate positive number***/
		function customerInfo_isPositiveInteger(obj){
			var reg = /^[0-9]*[0-9][0-9]*$/;
			if(obj.attr("id")=="age"){
				if(!reg.test(obj.val())){
					$("#principalAgeLbl").show();
					$("#saveCustomInfo").attr("type","button");
					//return "failed";
				}else{
					$("#principalAgeLbl").hide();
					//return "success";
				};
			}
			if(obj.attr("id")=="phone"){
				if(!reg.test(obj.val())){
					$("#principalPhoneLbl").show();
					$("#saveCustomInfo").attr("type","button");
				}else{
					$("#principalPhoneLbl").hide();
					//return "success";
				};
			}
			if(obj.attr("id")=="cellphone"){
				if(!reg.test(obj.val())){
					$("#principalCellPhoneLbl").show();
					$("#saveCustomInfo").attr("type","button");
					//return "failed";
				}else{
					$("#principalCellPhoneLbl").hide();
					//return "success";
				};
			}
			
		};

		function isEmail(obj){ 
			var reg = /^([a-zA-Z0-9_-])+@([a-zA-Z0-9_-])+(.[a-zA-Z0-9_-])+/; 
			if(obj.attr("id")=="email"){
				if(!reg.test(obj.val())){
					$("#principalMailLbl").show();
					$("#saveCustomInfo").attr("type","button");
				}else{
					$("#principalMailLbl").hide();
				}
			}
		} 
	</script>
</body>

</html>