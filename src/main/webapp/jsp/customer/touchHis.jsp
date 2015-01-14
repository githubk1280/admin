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

<title>客户联系历史记录</title>

<%@ include file="../comm-fragement/main-css"%>

</head>
<body>
<div class="panel-body">
	<div class="panel-group" id="accordion">
                          <div class="panel panel-default">
                              <div class="panel-heading ">
                                  <h3 class="panel-title">
                                      	<strong>客户联系历史记录</strong>	                                            	
                                  </h3>
                              </div>
                              <div id="collapseOne">
                                  <div class="panel-body">
                                  	<div class="row row-margin" style="align:center">
                                  		<div class="col-md-4  col-sm-12 col-xs-12" >
                                  				<div><label>客户姓名</label></div>
                                  				<div><p>${contacts.customerName}</p></div> 
                                   		</div>		
                                   	<div class="col-md-4  col-sm-12 col-xs-12" ></div>
                                  	</div>
                                  	
                                  	<div class="row row-margin">
                                  		<div class="col-md-2 col-sm-12 col-xs-12">
                                  			<div><label>联系时间</label></div>
                                  		</div>
                                   	 <div class="col-md-1 col-sm-12 col-xs-12" style="margin-left:120px">
                                   			<div><label>沟通内容</label></div>
                                   	</div>
                                   	<div class="col-md-1 col-sm-12 col-xs-12" style="margin-left:120px">
                                   			<div><label>联系人</label></div>
                                   	</div>
                                   	<div class="col-md-1 col-sm-12 col-xs-12" style="margin-left:120px">
                                   			<div><label>联系方式</label></div>
                                   	</div>
                                  	</div>
                                  	
                                  	
                                  	<hr  align=center width=100% style="border-top:1px solid #178acc;margin-top:1px">
                                 <c:forEach items="${contacts.crList}" var="touchHis" >
                                  	<div class="row row-margin">
                                  		<div class="col-md-2 col-sm-12 col-xs-12">
	                                   		<div>
	                                   			<fmt:formatDate value="${touchHis.contactTime}" pattern="yyyy-MM-dd hh:mm:ss" />
										    </div>
										</div> 
                                   	 <div class="col-md-1 col-sm-12 col-xs-12" style="margin-left:120px">
                                   			<div><p>${touchHis.contactContent}</p></div> 
                                   	</div>
                                   	<div class="col-md-1 col-sm-12 col-xs-12" style="margin-left:120px">
                                   			<div>${touchHis.contactPerson}</div>
                                   	</div>
                                   	<div class="col-md-1 col-sm-12 col-xs-12" style="margin-left:120px">
                                   			<div><p>${touchHis.contactPhone}</p></div>
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
