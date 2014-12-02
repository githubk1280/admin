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
						<div class="panel-group" id="accordion">
							<div class="panel panel-default">
								<div class="panel-heading ">
									<h3 class="panel-title">
										<strong>消息列表</strong>
									</h3>
								</div>
								<div id="collapseOne">
									<div class="panel-body">
										<div class="row row-margin">
											<div class="col-md-4 col-sm-12 col-xs-12">

												<div class="alert alert-danger">
													这是一条未读的信息 <label style="">2011-11-11</label> <i
														style="position: float; z-index: 1; right: 20px; bottom: 20px"
														class="fa fa-bar-chart-o fa-fw"></i>
												</div>
												<div class="collapse" style="">
													<l id="l">消息content</l>
												</div>
											</div>
											<div class="col-md-8  col-sm-12 col-xs-12"></div>
											<hr align=center width=98%
												style="border-top: 1px solid #178acc">
										</div>
										<div class="row row-margin">
											<div class="col-md-4 col-sm-12 col-xs-12">
												<div class="alert alert-danger">
													这是一条未读的信息 <label>2011-11-11</label><i
														class="fa fa-bar-chart-o fa-fw"></i>
												</div>
												<div class="collapse" style="margin-left: 10px">
													<l>消息content</l>
												</div>
											</div>
											<div class="col-md-8  col-sm-12 col-xs-12"></div>
											<hr align=center width=98%
												style="border-top: 1px solid #178acc">
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
	<script type="text/javascript">
    $(document).ready(function(){
    	$("div i").each(function(){
    		$(this).click(function(){
    			$(this).parent().next("div").toggleClass("in");
    			$(this).parent("div").attr("class","alert alert-success");
    		});
    	});
    	
    });
    </script>

</body>

</html>