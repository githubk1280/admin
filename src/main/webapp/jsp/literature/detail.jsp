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
				<form action="" method="post" >
					<!-- .panel-heading -->
					<div class="panel-body">
					<div class="panel-group" id="accordion">
						<div class="panel panel-default">
							<div class="panel-heading">
								<h3 class="panel-title">
									<strong>文献基本信息</strong>
									<button id="modifyLiterature" class="btn btn-default btn-success" 
										 style="margin-right: 10px;float:right; padding:1px 12px" type="button">修改</button>
										<button id="cancelLiterature" class="btn btn-default btn-success" 
										 style="margin-left: 10px; margin-right: 10px;float:right; padding:1px 12px; display: none" type="reset">取消</button>
										<button id="saveLiterature" value="1"
										  class="btn btn-default btn-success"
										  style="margin-left: 10px; margin-right: 10px;float:right; padding:1px 12px;display:none" type="submit">保存</button>
								</h3>
							</div>

							<div id="collapseThree" class="panel-collapse collapse in"
								style="">
								<div class="panel-body">
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
											<div>
												<label>文章研究内容和方向</label>
											</div>
											<div>
												<input type="text" class="form-control" name="articleDirection">
											</div>
										</div>
										<div class="col-md-6 col-sm-12 col-xs-12">
											<div>
												<label>文章背景</label>
											</div>
											<div>
												<input type="text" class="form-control" name="articleBg">
											</div>
										</div>
									</div>
									<div class="row row-margin">
										<div class="col-md-6 col-sm-12 col-xs-12">
											<div>
												<label>技术路线</label>
											</div>
											<div>
												<input type="text" class="form-control" name="tecPath">
											</div>
										</div>
										<div class="col-md-6 col-sm-12 col-xs-12">
											<div>
												<label>技术平台</label>
											</div>
											<div>
												<input type="text" class="form-control" name="tecPlatform">
											</div>
										</div>
									</div>
									<div class="row row-margin">
										<div class="col-md-6 col-sm-12 col-xs-12">
											<div>
												<label>文章结论</label>
											</div>
											<div>
												<input type="text" class="form-control" name="articleRes">
											</div>
										</div>
										<div class="col-md-6 col-sm-12 col-xs-12">
											<div>
												<label>文章亮点</label>
											</div>
											<div>
												<input type="text" class="form-control" name="articleLight">
											</div>
										</div>
									</div>
									<div class="row row-margin">
										<div class="col-md-6 col-sm-12 col-xs-12">
											<div>
												<label>对于科研项目的启示</label>
											</div>
											<div>
												<input type="text" class="form-control" name="tipForResearch">
											</div>
										</div>
										<div class="col-md-6 col-sm-12 col-xs-12">
											<div>
												<label>对于产品研发的启示</label>
											</div>
											<div>
												<input type="text" class="form-control" name="tipForProduct">
											</div>
										</div>
									</div>
									<div class="row row-margin">
										<div class="col-md-6 col-sm-12 col-xs-12">
											<div>
												<label>对于技术平台建设的启示</label>
											</div>
											<div>
												<input type="text" class="form-control" name="tipForTec">
											</div>
										</div>
										<div class="col-md-6 col-sm-12 col-xs-12">
											<div>
												<label>备注信息</label>
											</div>
											<div>
												<input type="text" class="form-control" name="comments">
											</div>
										</div>
									</div>
									<div class="row row-margin">
										<div class="col-md-6 col-sm-12 col-xs-12">
											<div>
												<label>相关问题与解答</label>
											</div>
											<div>
												<input type="text" class="form-control" name="qa">
											</div>
										</div>
										<div class="col-md-6 col-sm-12 col-xs-12">
											<div>
												<label>附件研究热点</label>
											</div>
											<div>
												<input type="text" class="form-control" name="hotPoint">
											</div>
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
		
	</script>

</body>

</html>