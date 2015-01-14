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

<title>生物信息管理系统-修改密码</title>
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
										<strong>修改密码</strong>
									</h3>
								</div>
								<div id="collapseOne">
									<div class="panel-body">
										<form:form action="update" method="post" commandName="modifyUser">
											<div class="row row-margin">
												<div class="col-md-4 col-sm-12 col-xs-12"></div>
												<div class="col-md-4 col-sm-12 col-xs-12">
													<div>
														<label>输入新密码</label>
														<label id="newPasswordLbl" class="warning-style">该字段不允许为空</label>
													</div>
													<div>
														<form:input id="newPassword" path="password" class="form-control" type="password" />
													</div>
												</div>
												<div class="col-md-4  col-sm-12 col-xs-12"></div>
											</div>
											<div class="row row-margin">
												<div class="col-md-4  col-sm-12 col-xs-12"></div>
												<div class="col-md-4 col-sm-12 col-xs-12">
													<div>
														<label>再次输入新密码</label>
														<label id="retryNewPasswordLbl" class="warning-style">该字段不允许为空</label>
														<label id="notEqualLbl" class="warning-style">输入密码不相同</label>
													</div>
													<div>
														<input id="retryNewPassword" class="form-control" type="password" />
													</div>
												</div>
												<div class="col-md-4  col-sm-12 col-xs-12"></div>
											</div>
											<div class="row" style="margin-top: 30px">
												<div class="col-md-4  col-sm-12 col-xs-12"></div>
												<div class="col-md-4 col-sm-12 col-xs-12">
													<input id="save" type="submit" class="btn btn-default btn-primary" value="提交" />
													<input id="cancel" type="button"
														class="btn btn-default btn-primary" value="取消">
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
				var newPassword = $("#newPassword").val();
				var retryNewPassword = $("#retryNewPassword").val();
				if(newPassword.length<1){
					$("#newPasswordLbl").show();
					$("#save").attr("type","button");
				}else{
					$("#newPasswordLbl").hide();
				}
				if(retryNewPassword.length<1){
					$("#retryNewPasswordLbl").show();
					$("#save").attr("type","button");
				}else{
					$("#retryNewPasswordLbl").hide();
					if(newPassword!=retryNewPassword){
						$("#notEqualLbl").show();
						$("#save").attr("type","button");
					}else{
						$("#notEqualLbl").hide();
					}
				}
				
			});
			
			$("#cancel").click(function() {
				window.location.replace("http://"+window.location.host+"/admin/project/pages/1");			
				return false;
			});
		});
	</script>


</body>

</html>