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

<title>生物信息管理系统-创建用户</title>
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
						<div class="panel-group" id="accordion">
							<div class="panel panel-default">
								<div class="panel-heading ">
									<h3 class="panel-title">
										<strong>创建新用户</strong>
									</h3>
								</div>
								<div id="collapseOne">
									<div class="panel-body">
										<form:form action="add" method="post" commandName="newuser">
											<div class="row row-margin" style="align: center">
												<div class="col-md-4  col-sm-12 col-xs-12"></div>
												<div class="col-md-4  col-sm-12 col-xs-12">
													<div>
														<label>用户名</label>
														<label id="nameLbl" class="warning-style">该字段不允许为空</label>
													</div>
													<div>
														<form:input id="name" path="name" class="form-control" />
													</div>
												</div>
												<div class="col-md-4  col-sm-12 col-xs-12"></div>
											</div>
											<div class="row row-margin" style="align: center">
												<div class="col-md-4  col-sm-12 col-xs-12"></div>
												<div class="col-md-4  col-sm-12 col-xs-12">
													<div>
														<label>邮箱</label>
														<label id="emailLbl" class="warning-style">该字段不允许为空</label>
														<label id="firstMailLbl" class="warning-style">请输入正确的邮箱</label>
													</div>
													<div>
														<form:input id="email" path="email" class="form-control" />
													</div>
												</div>
												<div class="col-md-4  col-sm-12 col-xs-12"></div>
											</div>
											<div class="row row-margin">
												<div class="col-md-4  col-sm-12 col-xs-12"></div>
												<div class="col-md-4 col-sm-12 col-xs-12">
													<div>
														<label>用户角色</label>
													</div>
													<div>
														<label><form:radiobutton path="employeeRoleId" value="1" checked="true"/>主管
														</label> 
														<label><form:radiobutton path="employeeRoleId" value="2" />研究员
														</label>
														<label><form:radiobutton path="employeeRoleId" value="4" />财务
														</label>
														<label><form:radiobutton path="employeeRoleId" value="3" />客户
														</label>
													</div>
												</div>
												<div class="col-md-4  col-sm-12 col-xs-12"></div>
											</div>
											<div class="row row-margin">
												<div class="col-md-4  col-sm-12 col-xs-12"></div>
												<div class="col-md-4 col-sm-12 col-xs-12">
													<div>
														<label>输入密码</label>
														<label id="passwordLbl" class="warning-style">该字段不允许为空</label>
													</div>
													<div>
														<form:input id="password" path="password" class="form-control" type="password" />
													</div>
												</div>
												<div class="col-md-4  col-sm-12 col-xs-12"></div>
											</div>
											<div class="row row-margin">
												<div class="col-md-4  col-sm-12 col-xs-12"></div>
												<div class="col-md-4 col-sm-12 col-xs-12">
													<div>
														<label>再次输入密码</label>
														<label id="retryPasswordLbl" class="warning-style">该字段不允许为空</label>
														<label id="notEqualLbl" class="warning-style">输入密码不相同</label>
													</div>
													<div>
														<input id="retryPassword" class="form-control" type="password" />
													</div>
												</div>
												<div class="col-md-4  col-sm-12 col-xs-12"></div>
											</div>
											<div class="row" style="margin-top: 30px">
												<div class="col-md-4  col-sm-12 col-xs-12"></div>
												<div class="col-md-4 col-sm-12 col-xs-12">
													<input id="save" type="submit" class="btn btn-default btn-primary" value="提交" />
													<input id="cancel" type="button" class="btn btn-default btn-primary" value="取消">
												</div>
												<div class="col-md-4  col-sm-12 col-xs-12"></div>
											</div>
										</form:form>
									</div>
								</div>
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
			
			$("#save").click(function(){
				$("#save").attr("type","submit");
				var password = $("#password").val();
				var retryPassword = $("#retryPassword").val();
				var email = $("#email").val();
				var name = $("#name").val();
					name = $.trim(name);
				if(name.length<1){
					$("#nameLbl").show();
					$("#save").attr("type","button");
				}else{
					$("#nameLbl").hide();
				}
					
				if(password.length<1){
					$("#passwordLbl").show();
					$("#save").attr("type","button");
				}else{
					$("#passwordLbl").hide();
				}
				
				if(retryPassword.length<1){
					$("#retryPasswordLbl").show();
					$("#save").attr("type","button");
				}else{
					$("#retryPasswordLbl").hide();
					if(password!=retryPassword){
						$("#notEqualLbl").show();
						$("#save").attr("type","button");
					}else{
						$("#notEqualLbl").hide();
					}
				}
				
				if(email.length<1){
					$("#emailLbl").show();
					$("#save").attr("type","button");
				}else{
					$("#emailLbl").hide();
					isEmail($("#email"));
				}
				
			});
			
			$("#cancel").click(function() {
				window.location.replace("http://"+window.location.host+"/admin/project/pages/1");			
				return false;
			});
		});
		
		function isEmail(obj){ 
			var reg = /^([a-zA-Z0-9_-])+@([a-zA-Z0-9_-])+(.[a-zA-Z0-9_-])+/; 
			if(obj.attr("id")=="email"){
				if(!reg.test(obj.val())){
					$("#firstMailLbl").show();
					$("#save").attr("type","button");
				}else{
					$("#firstMailLbl").hide();
				}
			}
		} 
	</script>


</body>

</html>