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
                                  				<div><label>项目编号</label></div>
                                  				<div><p></p></div> 
                                   		</div>		
                                   	<div class="col-md-4  col-sm-12 col-xs-12" ></div>
                                  	</div>
                                 <c:forEach items="${proHis}" var="projectHis" >
                                  	<div class="row row-margin">
                                  		<div class="col-md-4  col-sm-12 col-xs-12" >
                                  			<div><label>日期</label></div>
                                   		<div><p style="color:red;">
                                   				<fmt:formatDate value="${projectHis.progressDate}" pattern="yyyy-MM-dd" />
											  </p>
									    </div> 
                                  		</div>
                                   	<div class="col-md-4 col-sm-12 col-xs-12">
                                   			<div><label>撰写人员</label></div>
                                   			<div><p>${projectHis.employeeName}</p></div> 
                                   			<div><label>当时进度</label></div>
                                   			<div><p style="color:blue">${projectHis.percentage}%</p></div>
                                   			<div><label>进度内容</label></div>
                                   			<div><l>${projectHis.content}</l></div>
                                   	</div>
                                   	<div class="col-md-4  col-sm-12 col-xs-12"></div>
                                  	</div>
                                  	<div class="row row-margin"><hr  align=center width=98% style="border-top:1px solid #178acc"></div>
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


