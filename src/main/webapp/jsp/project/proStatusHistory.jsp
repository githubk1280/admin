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

<title>项目进度历史</title>

<%@ include file="../comm-fragement/main-css"%>

</head>
<body>
<div class="panel-body">
	<div class="panel-group" id="accordion">
                          <div class="panel panel-default">
                              <div class="panel-heading ">
                                  <h3 class="panel-title">
                                      	<strong>项目进度历史记录</strong>	                                            	
                                  </h3>
                              </div>
                              <div id="collapseOne">
                                  <div class="panel-body">
                                  	<div class="row row-margin" style="align:center">
                                  		<div class="col-md-4  col-sm-12 col-xs-12" >
                                  				<span style="font-size: 20px; background-color: rgb(245, 245, 245);">项目编号 <b>${proHis.projectId}</b></span>
                                   		</div>		
                                   	<div class="col-md-4  col-sm-12 col-xs-12" ></div>
                                  	</div>
                                 <div class="row row-margin">
                                  		<div class="col-md-1 col-sm-12 col-xs-12">
                                  			<div><label>日期</label></div>
										</div> 
                                   	 <div class="col-md-1 col-sm-12 col-xs-12" style="margin-left:120px">
                                   			<div><label>撰写人员</label></div>
                                   	</div>
                                   	<div class="col-md-1 col-sm-12 col-xs-12" style="margin-left:120px">
                                   			<div><label>当时进度</label></div>
                                   	</div>
                                   	<div class="col-md-1 col-sm-12 col-xs-12" style="margin-left:120px">
                                   			<div><label>进度内容</label></div>
                                   	</div>
                                  	</div>
                                  	<hr  align=center width=100% style="border-top:1px solid #178acc;margin-top:1px">
                                 <c:forEach items="${proHis.ppList}" var="projectHis" >
                                  	<div class="row row-margin">
                                  		<div class="col-md-1 col-sm-12 col-xs-12">
	                                   		<div><p style="color:red;">
	                                   				<fmt:formatDate value="${projectHis.progressDate}" pattern="yyyy-MM-dd hh:mm:ss" />
												  </p>
										    </div>
										</div> 
                                   	 <div class="col-md-1 col-sm-12 col-xs-12" style="margin-left:120px">
                                   			<div><p>${projectHis.employeeName}</p></div> 
                                   	</div>
                                   	<div class="col-md-1 col-sm-12 col-xs-12" style="margin-left:120px">
                                   			<div><p style="color:blue">${projectHis.percentage}%</p></div>
                                   	</div>
                                   	<div class="col-md-1 col-sm-12 col-xs-12" style="margin-left:120px">
                                   			<div><l>${projectHis.content}</l></div>
                                   	</div>
                                  	</div>
                                  	<hr  align=center width=100% style="border-top:1px solid #178acc;margin-top:1px">
                                 </c:forEach>
                                  	
				 				 </div> 
                            </div>
                     </div>
             </div>
</div>
</body>
<script type="text/javascript">
</script>
</html>


