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
										<c:choose>
											<c:when test="${messages.size()<1}">
												<tr>
													<td>暂无消息</td>
												</tr>
											</c:when>
											<c:otherwise>
												<c:forEach items="${messages}" var="msg" varStatus="status">
													<div class="row row-margin">
														<div class="col-md-4 col-sm-12 col-xs-12">
															<c:if test="${msg.status==0 }">
															<div class="alert alert-danger"
																style="padding: 0px; margin-bottom: 10px">
																1 封未读信息
															</c:if>
															<c:if test="${msg.status==1 }">
															<div class="alert alert-success"
																style="padding: 0px; margin-bottom: 10px">
																已读信息
															</c:if>
															 <label style=""><fmt:formatDate
																		value="${msg.sendTime}" pattern="yyyy-MM-dd" /></label> <a
																	href="javascript:void()" id="${msg.messageId}"><i
																	style="position: float; z-index: 1; right: 20px; bottom: 20px; margin-left: 40px"
																	class="glyphicon glyphicon-envelope"></i></a>
															</div>
															<div class="collapse well" style="">${msg.msgText}</div>
														</div>
														<div class="col-md-8  col-sm-12 col-xs-12"></div>
														<hr align=center width=98%
															style="border-top: 1px solid #178acc; margin-top: 20px">
													</div>
												</c:forEach>
											</c:otherwise>
										</c:choose>
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
		$(document).ready(function() {
			$(".row a").each(function() {
				$(this).click(function() {
					$(this).parent().next("div").toggleClass("in");
					$(this).parent("div").attr("class", "alert alert-success");
					updateStatus(this.id);
				});
			});
		});
		
		function updateStatus(id){
			$.ajax({
		        url: "/admin/message/ajax/status/" + id,
		        method: "post",
		        success: function(data) {
		        }
			});
		}
	</script>

</body>

</html>