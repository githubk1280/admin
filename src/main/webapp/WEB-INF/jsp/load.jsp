<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>  
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>index</title>
<!-- Bootstrap core CSS -->
<link href="<spring:url value="/resources/css/bootstrap.min.css"/>" rel="stylesheet">
<!-- Bootstrap theme -->
<link href="<spring:url value="/resources/css/bootstrap-theme.min.css"/>" rel="stylesheet">
<!-- Custom styles for this template -->
<link href="<spring:url value="/resources/css/theme.css"/>" rel="stylesheet">

</head>
<body>
	<table border="2">
		<tr>
			<td>${project.projectId }</td>
			<td>${project.projectName }</td>
		</tr>
	</table>
</body>
</html>