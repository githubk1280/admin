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
				<form action="add" method="post" enctype="multipart/form-data">
					<!-- .panel-heading -->
					<div class="panel-body">
					<div class="panel-group" id="accordion">
						<div class="panel panel-default">
						
							<div class="panel-heading">
								<h3 class="panel-title">
									<strong>创建新的文献</strong>
								</h3>
							</div>

							<div id="collapseThree" class="panel-collapse collapse in"
								style="">
								<div class="panel-body">
									<div class="row">
										<div class="col-md-12">
											<input type="file" name="file"
												class="btn btn-default btn-primary pull-left"
												style="margin-left: 10px; margin-top: 20px; margin-bottom: 20px" />
										</div>
									</div>
									<div class="row">
										<div class="col-md-6 col-sm-12 col-xs-12">
											<div>
												<label>标题</label>
											</div>
											<div>
												<input type="text" class="form-control" name="title">
											</div>
										</div>
										<div class="col-md-6 col-sm-12 col-xs-12">
											<div>
												<label>作者</label>
											</div>
											<div>
												<input type="text" class="form-control" name="author">
											</div>
										</div>
									</div>
									<div class="row row-margin">
										<div class="col-md-6 col-sm-12 col-xs-12">
											<div>
												<label>发布时间</label>
											</div>
											<div>
												<input type="text" class="form-control" name="publishDate">
											</div>
										</div>
										<div class="col-md-6 col-sm-12 col-xs-12">
											<div>
												<label>地点</label>
											</div>
											<div>
												<input type="text" class="form-control" name="location">
											</div>
										</div>
									</div>
									<div class="row row-margin">
										<div class="col-md-6 col-sm-12 col-xs-12">
											<div>
												<label>摘要</label>
											</div>
											<div>
											<!--<input type="text" class="form-control"> -->
											<textarea rows="6" cols="20" class="form-control" name="abstracts"></textarea>
											</div>
										</div>
									</div>
									<div class="row row-margin">
										<div class="col-md-6 col-sm-12 col-xs-12">
											<button id="saveLiterature"
												class="btn btn-default btn-primary" type="submit">保存</button>
											<button id="cancelLiterature"
												class="btn btn-default btn-primary" type="reset">取消</button>
										</div>
									</div>
								</div>
							</div>
							
						</div>
						</div>
					</div>
</form>
					<!-- .panel-body -->
				</div>
				<!-- /.panel -->
			</div>
		</div>
	</div>

	<!-- /#wrapper -->
	<%@ include file="../common/modal.jsp"%>

	<%@ include file="../comm-fragement/main-js"%>
	<script type="text/javascript">
		$("#cancelLiterature").click(function(){
			window.location.replace("http://"+window.location.host+"/admin/literature/list?pageIndex=1");			
			return false;
		});
	</script>

</body>

</html>