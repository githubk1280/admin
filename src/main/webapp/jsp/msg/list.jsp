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
							<strong>消息列表</strong> <input type="text" class="form-control"
								placeholder="请输入日期"> <span class="input-group-btn">
								<button class="btn btn-default btn-primary" type="button">
									<i class="fa fa-search"></i>
								</button>
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
								<th>时间</th>
								<th>消息内容</th>
							</tr>
						</thead>
						<tbody>
							<tr>
								<td>2010-01-01</td>
								<td>
									<p style="color: red">进度信息</p> <textarea rows="8" cols="80"
										disabled>asdfasdfasdfasdf</textarea>
								</td>
							</tr>
							<tr>
								<td>2010-01-01</td>
								<td><textarea rows="8" cols="80">asdfasdfasdfasdfasdfasdfasdfasdfasdfasdfasdfasdfasdfaffffffffffffffffffffffffffffffffffffffffasdfasdfasdfasdfasdfasdfasdfasdfasdfasdfasdfasdfasdfasdfasdfasdfsss</textarea></td>
							</tr>
							<tr>
								<td>1003</td>
								<td><textarea rows="8" cols="80">asdfasdfasdfasdfasdfasdfasdfasdfasdfaffffffffffffffffffffffffffffffffffffffffasdfasdfasdfasdfasdfasdfasdfasdfasdfasdfasdfasdfasdfasdfasdfasdfsss</textarea></td>
							</tr>
							<tr>
								<td>1004</td>
								<td><textarea rows="8" cols="80">asdfasdfasdfasdf</textarea></td>
							</tr>
							<tr>
								<td>1005</td>
								<td><textarea rows="8" cols="80">asdfasdfasdfasdf</textarea></td>
							</tr>
							<tr>
								<td>1006</td>
								<td><textarea rows="8" cols="80">asdfasdfasdfasdf</textarea></td>
							</tr>
							<tr>
								<td>1007</td>
								<td><textarea rows="8" cols="80">asdfasdfasdfasdf</textarea></td>
							</tr>
							<tr>
								<td>1008</td>
								<td><textarea rows="8" cols="80">asdfasdfasdfasdf</textarea></td>
							</tr>
							<tr>
								<td>1009</td>
								<td><textarea rows="8" cols="80">asdfasdfasdfasdf</textarea></td>
							</tr>
							<tr>
								<td>1010</td>
								<td>Robin</td>
							</tr>
						</tbody>
					</table>
					<div class="pull-right">
						<ul class="pagination">
							<li><a id="paging" href="#"><strong>上一页</strong></a></li>
							<li class="active"><a href="#">1</a></li>
							<li><a href="#">2</a></li>
							<li><a href="#">3</a></li>
							<li><a href="#">4</a></li>
							<li><a href="#">5</a></li>
							<li><a id="paging" href="#"><strong>下一页</strong></a></li>
						</ul>
					</div>
				</div>
			</div>
			<!-- /#page-wrapper -->
		</div>
	</div>

	<!-- /#wrapper -->
	<%@ include file="../common/modal.jsp"%>

	<%@ include file="../comm-fragement/main-js"%>
	<script type="text/javascript">
	</script>

</body>

</html>