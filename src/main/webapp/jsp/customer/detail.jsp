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

<body>
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
	                                        </h3>
	                                    </div>
	                                    <div id="collapseFour" class="panel-collapse collapse in" style="">
	                                        <div id="panelCustomerInfo" class="panel-body">
		                                         <div class="row">
		                                        		<div class="col-md-6 col-sm-12 col-xs-12">
		                                        			<div><label>客户级别</label></div>
																<div class="pull-left">
			                                        				<input type="text" class="form-control" value="${customer.customerLevel}" disabled>
																</div>
		                                        		</div>
		                                        		<div class="col-md-6 col-sm-12 col-xs-12">
		                                        			<div><label>姓名 </label></div>
		                                        			<div><input type="text" class="form-control" value="${customer.customerName}" disabled></div>
		                                        		</div>
	                                        	 </div>
	                                        	 <div class="row">
		                                        		<div class="col-md-6 col-sm-12 col-xs-12">
		                                        			<div><label>性别 </label></div>
		                                        			<div><input type="text" class="form-control" value="${customer.sex}" disabled></div>
		                                        		</div>
		                                        		<div class="col-md-6 col-sm-12 col-xs-12">
		                                        			<div><label>年龄 </label></div>
		                                        			<div><input type="text" class="form-control" value="${customer.age}" disabled></div>
		                                        		</div>
	                                        	 </div>
	                                        	 <div class="row">
		                                        		<div class="col-md-6 col-sm-12 col-xs-12">
		                                        			<div><label>联系电话 </label></div>
		                                        			<div><input type="text" class="form-control" value="${customer.phone}" disabled></div>
		                                        		</div>
		                                        		<div class="col-md-6 col-sm-12 col-xs-12">
		                                        			<div><label>联系手机 </label></div>
		                                        			<div><input type="text" class="form-control" value="${customer.cellphone}" disabled></div>
		                                        		</div>
	                                        	 </div>
				                                 <div class="row">
		                                        		<div class="col-md-6 col-sm-12 col-xs-12">
		                                        			<div><label>工作单位 </label></div>
		                                        			<div><input type="text" class="form-control" value="${customer.workUnit}" disabled></div>
		                                        		</div>
		                                        		<div class="col-md-6 col-sm-12 col-xs-12">
		                                        			<div><label>科室/部门 </label></div>
		                                        			<div><input type="text" class="form-control" value="${customer.department}" disabled></div>
		                                        		</div>
	                                        	 </div>
	                                        	 <div class="row">
		                                        		<div class="col-md-6 col-sm-12 col-xs-12">
		                                        			<div><label>职位 </label></div>
		                                        			<div><input type="text" class="form-control" value="${customer.position}" disabled></div>
		                                        		</div>
		                                        		<div class="col-md-6 col-sm-12 col-xs-12">
		                                        			<div><label>电子邮件 </label></div>
		                                        			<div><input type="text" class="form-control" value="${customer.email}" disabled></div>
		                                        		</div>
	                                        	 </div>
	                                        	 <div class="row">
		                                        		<div class="col-md-6 col-sm-12 col-xs-12">
		                                        			<div><label>联系地址 </label></div>
		                                        			<div><input type="text" class="form-control" value="${customer.adress}" disabled></div>
		                                        		</div>
		                                        		<div class="col-md-6 col-sm-12 col-xs-12">
		                                        			<div><label>研究方向 </label></div>
		                                        			<div><input type="text" class="form-control" value="${customer.resarchDirection}" disabled></div>
		                                        		</div>
	                                        	 </div>
	                                        	 <div class="row">
		                                        		<div class="col-md-6 col-sm-12 col-xs-12">
		                                        			<div><label>与负责人关系 </label></div>
		                                        			<div><input type="text" class="form-control" value="${customer.relationShip}" disabled></div>
		                                        		</div>
		                                        		<div class="col-md-6 col-sm-12 col-xs-12">
		                                        			<div><label>负责内容 </label></div>
		                                        			<div><input type="text" class="form-control" value="${customer.responsibleArea}" disabled></div>
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