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
                    <h2 class="page-header form-group input-group"><strong>样本基本信息</strong>
                    <button id="create" class="btn btn-default btn-primary" style="margin-left: 10px;">创建新的样本</button>
                    	<input type="text" class="form-control" style="width:26%;" placeholder="请输入项目编号">
	                    <span class="input-group-btn">
	                        <button class="btn btn-default btn-primary" type="button"><i class="fa fa-search" style="font-size:130%"></i></button>
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
                  <th>样本编号</th>
                  <th>项目编号</th>
                  <th>项目负责人</th>
                  <th>收样日期</th>
                  <th>存放位置</th>
                </tr>
              </thead>
              <tbody>
              	<c:forEach items="${samples}" var="sample" varStatus="status">
              		<tr>
						<td><a href="${sample.sampleId}" target="_blank" class="project_link">${sample.sampleId}</a></td>
						<td>${sample.projectId}</td>
						<td>${sample.projectPrincripal}</td>
						<td><fmt:formatDate value="${sample.reciveDate}"
											pattern="yyyy-MM-dd" /></td>
						<td>${sample.diskLocation}</td>
              		</tr>
              	</c:forEach>
              </tbody>
            </table>
            <c:if test="${samples.size()>10}">
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

			
			$("#create").click(function() {
				window.location.replace("http://"+window.location.host+"/admin/sample/add-redirect");
				return false;
			});

		});
	</script>


</body>

</html>