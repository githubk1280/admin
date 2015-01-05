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
						<div class="panel panel-default">
							<div class="panel-heading ">
								<h3 class="panel-title">
									<strong>文献</strong>
								</h3>
							</div>
							<div class="panel-body">
								<div class="row">
									<div class="col-md-12">
										<a href="add-redirect" target="_blank">
										<button id="createDocument" data-toggle="modal" id="createNewLiterature"
											data-target="#modalCreateFolder"
											class="btn btn-default btn-primary pull-left"
											style="margin-left: 10px; margin-top: 20px; margin-bottom: 20px">
											创建新的文献</button></a>
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
											<c:choose>
											<c:when test="${lts.size()<1}">
													<tr>
														<td>暂无文献</td>
													</tr>
												</c:when>
											<c:otherwise>
												<c:forEach items="${lts}" var="lte" varStatus="status">
													<tr>
														<td><a href="<%=request.getContextPath()%>/literature/${lte.id}" target="_blank" class="project_link">${lte.title}</a></td>
														<td>${lte.author }</td>
														<td><fmt:formatDate value="${lte.publishDate }"	pattern="yyyy-MM-dd" /></td>
														<td>${lte.location }</td>
														<td>
														<c:choose>
															<c:when test="${lte.abstracts.length()>20}">
																	${lte.abstracts.substring(0,20)}......
															</c:when>
															<c:otherwise>
																${lte.abstracts}
															</c:otherwise>
														</c:choose>
														</td>
														<td><a style="color: blue;" href="download/${lte.id}">下载</a></td>
													</tr>
												</c:forEach>
											</c:otherwise>
											</c:choose>
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