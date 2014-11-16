<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8" isErrorPage="true"%>
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
<%@ include file="../jsp/comm-fragement/main-css"%>
</head>

<body ng-app="">

	<div id="wrapper">
		<!-- Navigation -->
		<nav
			class="navbar navbar-default navbar-static-top  navbar-default-color"
			role="navigation" style="margin-bottom: 0">
		<div class="navbar-header">
			<a class="navbar-brand"><strong class="navbrand-font">生物信息管理系统</strong></a>
		</div>
		<ul class="nav navbar-top-links  navbar-right">
			<li><a href="#"> <i class="fa fa-envelope fa-fw"></i><span
					id="messageBadge" class="badge message-badge-margin">999+</span>
			</a></li>
			<!-- /.dropdown 
			                <li class="">
			                    <a href="#">
			                        <i class="fa fa-bell fa-fw fa-bell-color"></i>
			                    </a>
			                </li>-->
			<!-- /.dropdown -->
			<li class="dropdown"><a class="dropdown-toggle"
				data-toggle="dropdown" href="#"> <i class="fa fa-user fa-fw"></i>
					<i class="fa fa-caret-down"></i>
			</a>
				<ul class="dropdown-menu dropdown-user">
					<li><a href="#"><i class="fa fa-user fa-fw"></i> 用户信息</a></li>
					<li><a href="#"><i class="fa fa-gear fa-fw"></i> 设置</a></li>
					<li class="divider"></li>
					<li><a href="" data-toggle="modal" data-target="#logoutModal"><i
							class="fa fa-sign-out fa-fw"></i> 退出</a></li>
				</ul> <!-- /.dropdown-user --></li>
		</ul>
		<!-- navbar tabs -->
		<ul
			class="nav navbar-nav navbar-default nav-pills navbar-nav-left navbar-default-color">
			<li id="tab1" class="active"><a href="#"><i
					class="fa fa-tasks fa-fw "></i><strong>项目管理</strong></a></li>
			<li id="tab2"><a href="#"><i class="fa fa-tasks fa-fw"></i><strong>文档管理</strong></a></li>
			<li id="tab3"><a href="#"><i class="fa fa-tasks fa-fw"></i><strong>财务管理</strong></a></li>
			<li id="tab4"><a href="#"><i class="fa fa-tasks fa-fw"></i><strong>样品管理</strong></a></li>
			<li id="tab5"><a href="#"><i class="fa fa-tasks fa-fw"></i><strong>文献管理</strong></a></li>
		</ul>



		<!-- navbar tabs -->

		<div class="navbar-default sidebar navbar-default-color "
			role="navigation">

			<div class="sidebar-nav ">
				<ul class="nav" id="side-menu">
					<li class="active"><a id="link_pro" href="#"><i
							class="fa fa-bar-chart-o fa-fw"></i> <strong>项目基本信息</strong></a></li>
					<li><a id="link_customer" href="#"><i
							class="fa fa-bar-chart-o fa-fw"></i> <strong>客户基本信息</strong></a></li>
					<li><a id="link_outsource" href="#"><i
							class="fa fa-bar-chart-o fa-fw"></i> <strong>外包信息</strong></a></li>
					<li><a id="link_proStatus" href="#"><i
							class="fa fa-bar-chart-o fa-fw"></i> <strong>项目进度</strong><span
							id="projectStatusBadge" class="badge sidebar-badge-margin">1</span></a>
					</li>
					<li><a id="link_customCalling" href="#"><i
							class="fa fa-bar-chart-o fa-fw"></i> <strong>客户联系记录</strong></a></li>
				</ul>
			</div>
			<!-- /.sidebar-collapse -->
		</div>
		<!-- /.navbar-static-side --> </nav>
		<div id="page-wrapper">
			<h3 style="color: red">Status Code : 400</h3>
			<h5 style="color: red">请输入正确地址</h5>
		</div>
	</div>
	<!-- /#wrapper -->
	<!-- modal box -->
	<div class="modal fade modal-box" id="logoutModal" tabindex="0"
		role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
		<div class="modal-dialog">
			<div class="modal-content">
				<div class="modal-body" align="center">
					<h4>
						<strong class="red-color">您真的要退出吗？</strong>
					</h4>
				</div>
				<div class="modal-footer">
					<button type="button" class="btn btn-primary" data-dismiss="modal">关闭</button>
					<a href="../formal.html"><button type="button"
							class="btn btn-primary">确认</button></a>
				</div>
			</div>
		</div>
	</div>
</body>

</html>