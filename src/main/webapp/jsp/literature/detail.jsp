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
					<form:form action="update" method="post" commandName="lte">
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
										<div class="panel-body" id="panelLiterature">
											<div class="row">
												<div class="col-md-4 col-sm-12 col-xs-12">
													<div>
														<label>标题</label>
														<label id="titleLbl" class="warning-style">该字段不允许为空</label>
													</div>
													<div>
														<form:hidden path="id"/>
														<form:input id="title" path="title" type="text" class="form-control input-style" readonly="true" maxlength="10"/>
													</div>
												</div>
												<div class="col-md-4 col-sm-12 col-xs-12">
													<div>
														<label>作者</label>
													</div>
													<div>
														<form:input path="author" type="text" class="form-control input-style" readonly="true" maxlength="10"/>
													</div>
												</div>
												<div class="col-md-4 col-sm-12 col-xs-12">
													<div>
														<label>发布时间</label>
													</div>
													<div>
														<fmt:formatDate value="${lte.publishDate}" var="dateString" pattern="yyyy-MM-dd" />
														<form:input id="publishDate" path="publishDate" type="text" class="form-control input-style" value="${dateString }" readonly="true" maxlength="10"/>
													</div>
												</div>
											</div>
											<div class="row row-margin">
												<div class="col-md-4 col-sm-12 col-xs-12">
													<div>
														<label>地点</label>
													</div>
													<div>
														<form:input path="location" type="text" class="form-control input-style" readonly="true" maxlength="10"/>
													</div>
												</div>
												<div class="col-md-4 col-sm-12 col-xs-12">
													<div>
														<label>文章研究内容和方向</label>
													</div>
													<div>
														<form:input path="direction" type="text" class="form-control input-style" readonly="true" maxlength="10"/>
													</div>
												</div>
												<div class="col-md-4 col-sm-12 col-xs-12">
													<div>
														<label>文章背景</label>
													</div>
													<div>
														<form:input path="background" type="text" class="form-control input-style" readonly="true" maxlength="10"/>
													</div>
												</div>
											</div>
											<div class="row row-margin">
												<div class="col-md-4 col-sm-12 col-xs-12">
													<div>
														<label>技术路线</label>
													</div>
													<div>
														<form:input path="technicalWay" type="text" class="form-control input-style" readonly="true" maxlength="10"/>
													</div>
												</div>
												<div class="col-md-4 col-sm-12 col-xs-12">
													<div>
														<label>技术平台</label>
													</div>
													<div>
														<form:input path="technicalPlatform" type="text" class="form-control input-style" readonly="true" maxlength="10"/>
													</div>
												</div>
												<div class="col-md-4 col-sm-12 col-xs-12">
													<div>
														<label>文章结论</label>
													</div>
													<div>
														<form:input path="conclusion" type="text" class="form-control input-style" readonly="true" maxlength="10"/>
													</div>
												</div>
											</div>
											<div class="row row-margin">
												<div class="col-md-4 col-sm-12 col-xs-12">
													<div>
														<label>文章亮点</label>
													</div>
													<div>
														<form:input path="lightPoint" type="text" class="form-control input-style" readonly="true" maxlength="10"/>
													</div>
												</div>
												<div class="col-md-4 col-sm-12 col-xs-12">
													<div>
														<label>对于科研项目的启示</label>
													</div>
													<div>
														<form:input path="researchEnlightenment" type="text" class="form-control input-style" readonly="true" maxlength="10"/>
													</div>
												</div>
												<div class="col-md-4 col-sm-12 col-xs-12">
													<div>
														<label>对于产品研发的启示</label>
													</div>
													<div>
														<form:input path="productEnlightenment" type="text" class="form-control input-style" readonly="true" maxlength="10"/>
													</div>
												</div>
											</div>
											<div class="row row-margin">
												<div class="col-md-4 col-sm-12 col-xs-12">
													<div>
														<label>对于技术平台建设的启示</label>
													</div>
													<div>
														<form:input path="platformEnlightenment" type="text" class="form-control input-style" readonly="true" maxlength="10"/>
													</div>
												</div>
												<div class="col-md-4 col-sm-12 col-xs-12">
													<div>
														<label>备注信息</label>
													</div>
													<div>
														<form:input path="comments" type="text" class="form-control input-style" readonly="true" maxlength="10"/>
													</div>
												</div>
												<div class="col-md-4 col-sm-12 col-xs-12">
													<div>
														<label>相关问题与解答</label>
													</div>
													<div>
														<form:input path="problem" type="text" class="form-control input-style"  readonly="true" maxlength="10"/>
													</div>
												</div>
											</div>
											<div class="row row-margin">
												<div class="col-md-4 col-sm-12 col-xs-12">
													<div>
														<label>附件研究热点</label>
													</div>
													<div>
														<form:input path="attachedHotSpot" type="text" class="form-control input-style" readonly="true" maxlength="10"/>
													</div>
												</div>
											</div>
											<div class="row row-margin">
												<div class="col-md-6 col-sm-12 col-xs-12">
													<div>
														<label>摘要</label>
													</div>
													<div>
														<form:textarea path="abstracts" type="text" class="form-control input-style" readonly="true" maxlength="80"/>
													</div>
												</div>
											</div>
											<!-- 
											<div class="row row-margin">
												<div class="col-md-6 col-sm-12 col-xs-12">
													<button id="saveLiterature"
														class="btn btn-default btn-primary" type="submit">保存</button>
												</div>
											</div>
											  -->
										</div>
									</div>

								</div>
							</div>
						</div>
					</form:form>
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
	$(document).ready(function(){
		$("#modifyLiterature").click(function(){
			$("#saveLiterature").css('display','block');
			$("#cancelLiterature").css('display','block');
			$("#modifyLiterature").css('display','none');
			$("#panelLiterature input").attr("readonly",false);
			$("#panelLiterature textarea").attr("readonly",false);
			$( "#publishDate" ).datetimepicker({
				lang:'ch',
				timepicker:false,
				onClose:function(){
					var ii = $("#publishDate").val();
					if(ii!=""){
						var date = new Date(ii);
						var year = date.getFullYear();
						var month = date.getMonth() + 1; 
						if(month<10){
							month = "0" + month;
						}
						var day = date.getDate();
						if(day<10){
							day = "0" + day;
						}
						formatDate = year + "-" + month + "-" + day;
						$("#publishDate").val(formatDate);
					}
				},
				validateOnBlur:false
			});
		});
		$("#cancelLiterature").click(function(){
			$("#saveLiterature").css('display','none');
			$("#cancelLiterature").css('display','none');
			$("#modifyLiterature").css('display','block');
			$("#panelLiterature input").attr("readonly",true);
			$("#panelLiterature textarea").attr("readonly",true);
			$( "#publishDate" ).datetimepicker("destroy");
		});
		$("#saveLiterature").click(function(){
			$("#saveLiterature").attr("type","submit");
			var title = $("#title").val();
				title = $.trim(title);
			if(title.length<1){
				$("#titleLbl").show();
				//$("#projectName").focus();
				$("#saveLiterature").attr("type","button");
			}else{
				$("#titleLbl").hide();
			}
		var saveLiteratureType = $("#saveLiterature").attr("type");
		if(!saveLiteratureType=="button"){
			$("#saveLiterature").css('display','none');
			$("#cancelLiterature").css('display','none');
			$("#modifyLiterature").css('display','block');
			$("#panelLiterature input").attr("readonly",true);
			$("#panelLiterature textarea").attr("readonly",true);
			$( "#publishDate" ).datetimepicker("destroy");
		}
	});
});
	</script>

</body>

</html>