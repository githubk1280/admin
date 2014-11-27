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
            <form role="form">
                <div class="col-lg-12">
                    <h2 class="page-header form-group input-group">
                    	<strong>财务合同基本信息</strong>
                    	<button class="btn btn-default btn-primary" id="create"
								style="margin-left: 10px;">创建合同</button>
                    	<input type="text" class="form-control" style="width:26%;" placeholder="请输入项目编号">
	                    <span class="input-group-btn">
	                        <button class="btn btn-default btn-primary" type="button"><i class="fa fa-search"></i></button>
	                    </span>
                    </h2>
                </div>
            </form>
                <!-- /.col-lg-12 -->
            </div>
            <div class="row">
				<div class="table-responsive">
            <table class="table table-hover">
              <thead>
                <tr>
                  <th>合同编号</th>
                  <th>项目编号</th>
                  <th>合同状态</th>
                  <th>合同签订人</th>
                  <th>签订日期</th>
                  <th>合同金额</th>
                </tr>
              </thead>
              <tbody>
              	<c:forEach items="${contracts}" var="contract" varStatus="status">
              		<tr>
						<td><a href="${contract.contractId}" target="_blank" class="project_link">${contract.contractId}</a></td>
						<td>${contract.projectId}</td>
						<td>${contract.contractType}</td>
						<td>${contract.signPersonNameB}</td>
						<td><fmt:formatDate value="${contract.signDate}"
											pattern="yyyy-MM-dd" /></td>
						<td>${contract.totalAmount}</td>
              		</tr>
              	</c:forEach>
              </tbody>
            </table>
            <c:if test="${projects.size()>10}">
						<%@ include file="../common/pagnation.jsp"%>
			</c:if>
 </div>
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

		});
	</script>


</body>

</html>