<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html lang="en">
<head>
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1" />
<%@ include file="jsp/comm-fragement/index-css"%>
<title>生物信息管理系统</title>
</head>
<body>
	<div class="container">
		<div class="row">
			<div class="col-md-2 hidden-xs hidden-sm">
				<img src="resources/image/logo.jpg" class="img-responsive img-box">
			</div>
			<div class="col-md-10 hidden-xs hidden-sm">
				<img src="resources/image/banner.jpg" class="banner">
			</div>
		</div>
		<div class="row">
			<div class="col-md-6  hidden-xs hidden-sm">
				<img class="img-responsive" src="resources/image/test.jpg">
			</div>
			<div class="col-md-6 login-box">
				<div class="">
					<form class="form-signin" role="form" action="login" method="get">
						<div>
							<h3 align="center"
								class="form-signin-heading hidden-xs hidden-sm">
								<strong>生物信息管理系统</strong>
							</h3>
						</div>
						<div class="row">
							<div class="col-md-2 col-sm-2 col-xs-3">
								<button type="button"
									class="btn btn-default btn-lg btn-user-style"
									disabled="disabled">
									<div>
										<i class="glyphicon glyphicon-user"></i>
									</div>
								</button>
							</div>
							<div class="col-md-10 col-sm-10 col-xs-9">
								<input type="text" name="userName" class="form-control"
									placeholder="用户名 " maxlength=30 required autofocus>
							</div>
						</div>
						<br />
						<div class="row">
							<div class="col-md-2 col-sm-2 col-xs-3">
								<button type="button"
									class="btn btn-default btn-lg btn-user-style"
									disabled="disabled">
									<div>
										<i class="glyphicon glyphicon-lock "></i>
									</div>
								</button>
							</div>
							<div class="col-md-10 col-sm-10 col-xs-9 ">
								<input type="password" name="password" class="form-control"
									placeholder="密码" maxlength=20 required>
							</div>
						</div>
						<button class="btn btn-lg btn-primary btn-block submit-style"
							type="submit">
							<strong>登录</strong>
						</button>
					</form>
				</div>
			</div>
		</div>
		<div class="footer">
			<div class="container">
				<p class="text-muted">Biotecan,Koala版权信息2014</p>
			</div>
		</div>

	</div>
</body>
</html>