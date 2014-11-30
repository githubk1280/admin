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
		<div id="page-wrapper">
			<div class="row">
				<div class="col-lg-12">
					<!-- <div class="panel panel-default panel-primary"> -->

					<div class="panel-body">
						<div class="panel panel-default panel-info">
							<div class="panel-heading ">
								<h3 class="panel-title">
									<strong>文献</strong>
								</h3>
							</div>
							<div class="panel-body">
								<div class="row">
									<div class="col-md-12">
										<button id="createDocument" data-toggle="modal"
											data-target="#modalCreateFolder"
											class="btn btn-default btn-primary pull-left"
											style="margin-left: 10px; margin-top: 20px; margin-bottom: 20px">创建新的文献</button>
									</div>
								</div>
								<div class="table-responsive">
									<table class="table table-hover">
										<thead>
											<tr>
												<th>标题</th>
												<th>作者</th>
												<th>发布时间</th>
												<th>地点</th>
												<th>摘要</th>
												<th></th>
											</tr>
										</thead>
										<tbody id="folderTableBody">
											<tr>
												<td>项目方案</td>
												<td>所有者</td>
												<td></td>
												<td></td>
												<td></td>
												<td><a style="color: blue;">下载</a></td>
											</tr>
											<tr>
												<td>项目合同</td>
												<td>所有者</td>
												<td></td>
												<td></td>
												<td></td>
												<td id="tddddd"><a style="color: blue;">下载</a></td>
											</tr>

										</tbody>
									</table>
								</div>
								<div class="row row-margin">
									<div class="col-md-4 col-sm-12 col-xs-12"></div>
									<div class="col-md-4 col-sm-12 col-xs-12"></div>
								</div>
							</div>
						</div>
					</div>
					<!--  </div>-->
				</div>
			</div>

		</div>
	</div>

	<!-- /#wrapper -->
	<%@ include file="../common/modal.jsp"%>

	<%@ include file="../comm-fragement/main-js"%>
	<script type="text/javascript">
		
	</script>

</body>

</html>