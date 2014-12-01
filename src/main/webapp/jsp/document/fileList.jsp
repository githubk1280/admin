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
					<div class="panel-body">
						<div class="panel panel-default">
							<div class="panel-heading ">
								<h3 class="panel-title">
									<strong>${parent.fileName} 文件列表</strong>
								</h3>
							</div>
							<div class="panel-body">
								<div class="row">
									<div class="col-md-12">
										<form action="/admin/doc/upload/${parent.fileId}" method="post" enctype="multipart/form-data">
											<input id="fileInput" type="file" name="file" class="btn btn-default btn-primary pull-left"
											style="margin-left: 10px; margin-top: 20px; margin-bottom: 20px" /> 
											<button id="uploadFile" type="submit"
												class="btn btn-default btn-primary pull-left"
												style="margin-left: 10px; margin-top: 20px; margin-bottom: 20px">上传文件</button>
										</form>
									</div>
								</div>
								<div class="table-responsive">
									<table class="table table-hover">
										<thead>
											<tr>
												<th>文件</th>
												<th>下载文件</th>
												<th>删除文件</th>
											</tr>
										</thead>
										<tbody id="folderTableBody">
											<c:choose>
												<c:when test="${docs.size()<1}">
													<tr>
														<td>文件夹下暂无文件</td>
													</tr>
												</c:when>
												<c:otherwise>
													<c:forEach items="${docs}" var="doc" varStatus="status">
														<tr>
															<td><i class="glyphicon glyphicon-file"></i>${doc.fileName}</td>
															<td><a style="color: #333;margin-left:20px" class="glyphicon glyphicon-download-alt" href="/admin/doc/download/${doc.fileId}"
																class="project_link"></a></td>
															<td> 
															<a style="color: #333;margin-left:20px"class="glyphicon glyphicon-trash" href="javascript:void(0);"
													 			onclick="delModel(${doc.fileId})"></a></td>
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
				</div>
			</div>

		</div>
	</div>

	<!-- modal box -->
	<div class="modal fade modal-box" id="modalCreateFolder" tabindex="0"
		role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
		<div class="modal-dialog" style="margin: 300px auto">
			<div class="modal-content" style="top:-100px">
				<div class="modal-body" align="center">
					删除此文件？
				</div>
				<div class="modal-footer">
					<button type="button" class="btn btn-primary" data-dismiss="modal">取消</button>
					<a href="#"><button id="modalBtn" type="button"
							class="btn btn-primary" data-dismiss="modal">确认</button></a>
				</div>
			</div>
		</div>
	</div>
	<!-- modal box -->
	<!-- confirm modal box -->
	<div class="modal fade modal-box" id="confirmModal" tabindex="0"
		role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
		<div class="modal-dialog" style="margin: 300px auto">
			<div class="modal-content" style="top:-100px"> 
				<div class="modal-body" align="center">
					<h3>确认删除文件？</h3>
				</div>
				<div class="modal-footer">
					<button type="button" class="btn btn-primary" data-dismiss="modal">取消</button>
					<a href="#" ><button type="button" id="confirmModalBtn"
							class="btn btn-primary" data-dismiss="modal">确认</button></a>
				</div>
			</div>
		</div>
	</div>
	<!--confirm end modal box -->
	<!-- confirm modal box -->
	<div class="modal fade modal-box" id="uploadFileModal" tabindex="0"
		role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
		<div class="modal-dialog" style="margin: 300px auto">
			<div class="modal-content" style="top:-100px"> 
				<div class="modal-body" align="center">
					<h3>请选择文件</h3>
				</div>
				<div class="modal-footer">
					<a href="#" ><button type="button" id="confirmModalBtn"
							class="btn btn-primary" data-dismiss="modal">确认</button></a>
				</div>
			</div>
		</div>
	</div>
	<!--confirm end modal box -->
	<!-- /#wrapper -->
	<%@ include file="../common/modal.jsp"%>

	<%@ include file="../comm-fragement/main-js"%>
	<script type="text/javascript">
	$(document).ready(function() {
		//$("#uploadFile").attr("type","submit");
		$("#uploadFile").click(function(){
			if($("#fileInput").val().length<3){				
				$("#uploadFile").attr("type","button");
				//$("#uploadFileModal");
				$('#uploadFileModal').modal('show')
			}else{
				$("#uploadFile").attr("type","submit");
			}
		});
	});
	
	
	
	$("#modalBtn").click(function() {
	    var folderName = $('#folderName').val();
	    if (!folderName) {
	        alert("请输入文件夹名");
	    }
	    $.ajax({
	        url: "/admin/doc/ajax/createFolder/" + folderName,
	        method: "post",
	        success: function(data) {
	        	var response = JSON.parse(data);
	        	if(response.success){
	        		$("tr").last().after("<tr><td><i class='fa fa-bar-chart-o fa-fw'></i><a href='#' class='project_link'>" + $("#folderName").val() + "</a></td><td ><a style='color:blue;'>删除</a></td></tr>");
	        	}else{
	        		alert(response.data);
	        	}
	            
	        },
	        error: function(err) {
	            alert("创建失败,请重试! errorCode = " + err.status);
	        }
	    });
	    //clear
	});
	function delModel(fId){
		$('#confirmModal').modal('show').on('shown',showDelModel(fId));
    };
    function showDelModel(fId){
		$("#confirmModalBtn").attr('onclick','del('+fId+')');
	}
    function del(id) {
	    $.ajax({
	        url: "/admin/doc/ajax/delete/" + id,
	        method: "post",
	        success: function(data) {
	        	var response = JSON.parse(data);
	        	if(response.success){
	        		location.reload(true);
	        	}else{
	        		alert(response.data);
	        	};
	            
	        },
	        error: function(err) {
	            alert("删除失败,请重试! errorCode = " + err.status);
	        }
	    });
	 };
	</script>

</body>

</html>