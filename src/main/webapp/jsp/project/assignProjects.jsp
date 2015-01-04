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

<body>
	<div id="wrapper">
		<%@ include file="../common/nav.jsp"%>
		<div id="page-wrapper" class="detailPage">
			<div class="row">
				<div class="col-lg-12">
					<!-- .panel-heading -->
					<div class="panel-body">
						<!----------------------------------------project basic data start ------------------------->
						<div class="panel-group" id="accordion">
							<div class="panel panel-default">
								<div class="panel-heading ">
									<h3 class="panel-title">
										<strong>分配项目页面</strong>
									</h3>
								</div>
								<div id="collapseOne" class="panel-collapse collapse in">
									<div class="panel-body">
										<form:form action="assign" method="post" commandName="projectEmployee">
											<div class="row">
												<div class="col-md-6 col-sm-12 col-xs-12">
													<div>
														<label>请选择项目</label>
													</div>
													<div>
														<form:select class="form-control" path="projectId">
															<option>---请选择---</option>
															<c:forEach items="${projects}" var="project" varStatus="status">
																<option value="${project.projectId}">${project.projectId} &nbsp; ${project.projectName}</option>
															</c:forEach>
														</form:select>
													</div>
												</div>
												<div class="col-md-6 col-sm-12 col-xs-12">
													<div>
														<label>请选择员工</label>
													</div>
													<div>
														<form:select class="form-control" path="employeeId">
															<option>---请选择---</option>
															<c:forEach items="${employees}" var="employee" varStatus="status">
																<option value="${employee.employeeId}">${employee.name}</option>
															</c:forEach>
														</form:select>
													</div>
												</div>
											</div>
											<div class="row row-margin">
												<div class="col-md-6 col-sm-12 col-xs-12">
													<div>
														<label>分配内容</label>
													</div>
													<div>
														<form:textarea path="assignContent" id="assignContent" class="form-control" rows="6" style="width:80%"/>
													</div>
												</div>
											</div>
											<div class="row row-margin" style="margin-top:30px ;">
												<div class="col-md-12 col-sm-12 col-xs-12">
													<button id="assignSubmit" class="btn btn-default btn-primary" type="submit">保存</button>
													<button id="assignReset" class="btn btn-default btn-primary" type="reset">重置</button>
												</div>
											</div>
										</form:form>
									</div>
								</div>
							</div>
						</div>
						<!-------------------------------------------project basic data end ------------------------------------------>
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
	<%@ include file="../comm-fragement/addProjecVal-js"%>
	<script type="text/javascript">
		$(document).ready(function() {
			$("#cancelProBasicData").click(function() {
				window.location.replace("http://"+window.location.host+"/admin/project/pages/1");			
				return false;
			});
	});
	</script>

</body>

</html>