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
						<form:form action="addSecond" method="post" commandName="customer">
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
						<form:input id="projectIdForCustomerAdd" path="projectId" type="text" class="form-control" readonly="true"/>
					</div>
				</div>
				<div class="col-md-6 col-sm-12 col-xs-12">
					<div>
						<label>姓名 </label>
					</div>
					<div>
						<form:input id="customerName" path="customerName" type="text" class="form-control"  maxlength="5"/>
					</div>
				</div>
			</div>
			<div class="row">
				<div class="col-md-6 col-sm-12 col-xs-12">
					<div>
						<label>性别 </label>
					</div>
					<div>
						<form:input id="sex"  path="sex" type="text" class="form-control"  maxlength="1"/>
					</div>
				</div>
				<div class="col-md-6 col-sm-12 col-xs-12">
					<div>
						<label>年龄 </label>
						<label id="secondAgeLbl" class="warning-style">请输入正确的年龄</label>
					</div>
					<div>
						<form:input id="age" path="age" type="text" class="form-control" maxlength="3"/>
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
						<form:input id="phone" path="phone" type="text" class="form-control"  maxlength="15"/>
					</div>
				</div>
				<div class="col-md-6 col-sm-12 col-xs-12">
					<div>
						<label>联系手机 </label>
						<label id="secondCellphoneLbl" class="warning-style">请输入正确的号码</label>
					</div>
					<div>
						<form:input id="cellphone" path="cellphone" type="text" class="form-control"  maxlength="15"/>
					</div>
				</div>
			</div>
			<div class="row">
				<div class="col-md-6 col-sm-12 col-xs-12">
					<div>
						<label>工作单位 </label>
					</div>
					<div>
						<form:input id="workUnit" path="workUnit" type="text" class="form-control"  maxlength="20"/>
					</div>
				</div>
				<div class="col-md-6 col-sm-12 col-xs-12">
					<div>
						<label>科室/部门 </label>
					</div>
					<div>
						<form:input id="department" path="department" type="text" class="form-control"  maxlength="10"/>
					</div>
				</div>
			</div>
			<div class="row">
				<div class="col-md-6 col-sm-12 col-xs-12">
					<div>
						<label>职位 </label>
					</div>
					<div>
						<form:input id="position" path="position" type="text" class="form-control"  maxlength="6"/>
					</div>
				</div>
				<div class="col-md-6 col-sm-12 col-xs-12">
					<div>
						<label>电子邮件 </label>
						<label id="secondMailLbl" class="warning-style">请输入正确的邮箱</label>
					</div>
					<div>
						<form:input id="email" path="email" type="text" class="form-control"  maxlength="20"/>
					</div>
				</div>
			</div>
			<div class="row">
				<div class="col-md-6 col-sm-12 col-xs-12">
					<div>
						<label>联系地址 </label>
					</div>
					<div>
						<form:input id="adress" path="adress" type="text" class="form-control"   maxlength="100"/>
					</div>
				</div>
				<div class="col-md-6 col-sm-12 col-xs-12">
					<div>
						<label>研究方向 </label>
					</div>
					<div>
						<form:input id="resarchDirection" path="resarchDirection" type="text" class="form-control"   maxlength="10"/>
					</div>
				</div>
			</div>
			<div class="row">
				<div class="col-md-6 col-sm-12 col-xs-12">
					<div>
						<label>与负责人关系 </label>
					</div>
					<div>
						<form:input id="relationShip" path="relationShip" type="text" class="form-control"  maxlength="10"/>
					</div>
				</div>
				<div class="col-md-6 col-sm-12 col-xs-12">
					<div>
						<label>负责内容 </label>
					</div>
					<div>
						<form:input id="responsibleArea" path="responsibleArea" type="text" class="form-control"   maxlength="50"/>
					</div>
				</div>
			</div>
			<div class="row row-margin" >
				<div class="col-md-6 col-sm-12 col-xs-12">
					<button id="saveCustomInfo" class="btn btn-default btn-primary" type="submit">保存</button>
					<button id="cancelCustomInfo" class="btn btn-default btn-primary" type="button">取消</button>
				</div>
			</div>
			</form:form>
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
	<script type="text/javascript">
		$(document).ready(function() {
			$("#cancelCustomInfo").click(function() {
				window.location.replace("http://"+window.location.host+"/admin/customer/pages/1");			
				return false;
			});
				$("#saveCustomInfo").click(function(){
					$("#saveCustomInfo").attr("type","submit");
					var secondAge = $("#age").val();
						secondAge = $.trim(secondAge);
					var secondPhone = $("#phone").val();
						secondPhone = $.trim(secondPhone);
					var secondCellphone = $("#cellphone").val();
						secondCellphone = $.trim(secondCellphone);
					var secondMail = $("#email").val();
						secondMail = $.trim(secondMail);
					if(secondAge.length>0){
						customerInfo_isPositiveInteger($("#age"));
					}
					
					if(secondPhone.length>0){
						customerInfo_isPositiveInteger($("#phone"));
					}
					
					if(secondCellphone.length>0){
						customerInfo_isPositiveInteger($("#cellphone"));
					}
					
					if(secondMail.length>0){
						isEmail($("#email"));
					}
				});
			});
		/***validate positive number***/
		function customerInfo_isPositiveInteger(obj){
			var reg = /^[0-9]*[0-9][0-9]*$/;
			if(obj.attr("id")=="age"){
				if(!reg.test(obj.val())){
					$("#secondAgeLbl").show();
					$("#saveCustomInfo").attr("type","button");
					//return "failed";
				}else{
					$("#secondAgeLbl").hide();
					//return "success";
				};
			}
			
			if(obj.attr("id")=="phone"){
				if(!reg.test(obj.val())){
					$("#secondPhoneLbl").show();
					$("#saveCustomInfo").attr("type","button");
					//return "failed";
				}else{
					$("#secondPhoneLbl").hide();
					//return "success";
				};
			}
			
			if(obj.attr("id")=="cellphone"){
				if(!reg.test(obj.val())){
					$("#secondCellphoneLbl").show();
					$("#saveCustomInfo").attr("type","button");
					//return "failed";
				}else{
					$("#secondCellphoneLbl").hide();
					//return "success";
				};
			}
			
		};

		function isEmail(obj){ 
			var reg = /^([a-zA-Z0-9_-])+@([a-zA-Z0-9_-])+(.[a-zA-Z0-9_-])+/; 
			if(obj.attr("id")=="email"){
				if(!reg.test(obj.val())){
					$("#secondMailLbl").show();
					$("#saveCustomInfo").attr("type","button");
				}else{
					$("#secondMailLbl").hide();
				}
			}
		} 
	</script>

</body>

</html>