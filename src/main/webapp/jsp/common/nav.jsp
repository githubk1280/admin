<!-- Navigation -->
<%@ page language="java" pageEncoding="UTF-8"%>
<script src="<%=request.getContextPath()%>/resources/js/jquery-1.11.0.js"></script>

<nav
	class="navbar navbar-default navbar-static-top  navbar-default-color"
	role="navigation" style="margin-bottom: 0">
	<div class="navbar-header">
		<a class="navbar-brand"><strong class="navbrand-font">生物信息管理系统</strong></a>
	</div>
	<ng-view>
	<div ng-controller="msgController">
	<ul class="nav navbar-top-links  navbar-right" >
		<li id="createUserLi">
            <a href="<%=request.getContextPath()%>/user/add-redirect">
                     <i class="fa fa-sitemap fa-fw"></i>
             </a>
		 </li>
		<li id="messageLi"><a href="<%=request.getContextPath()%>/message/list?p=1"> <i class="fa fa-envelope fa-fw"></i><span
				id="messageBadge" class="badge message-badge-margin">{{msgNum}}</span>
		</a></li>
		<!-- /.dropdown -->
			                
		<!-- /.dropdown -->
		<li class="dropdown"><a class="dropdown-toggle"
			data-toggle="dropdown" href="#"> <i class="fa fa-user fa-fw"></i>
				<i class="fa fa-caret-down"></i>
		</a>
			<ul class="dropdown-menu dropdown-user">
			   <!--  <li><a href="<%=request.getContextPath()%>/user/add-redirect"><i class="fa fa-user fa-fw"></i> 用户信息</a></li>-->
				<li id="modifyPasswordLi"><a href="<%=request.getContextPath()%>/user/modify-redirect"><i class="fa fa-gear fa-fw"></i>修改密码</a></li>
				<li class="divider"></li>
				<li><a href="<%=request.getContextPath()%>/logout" ><i
						class="fa fa-sign-out fa-fw"></i> 退出</a></li>
			</ul> <!-- /.dropdown-user --></li>
	</ul>
	</div>
	</ng-view>
	<!-- navbar tabs -->
	<ul id="tabUl"
		class="nav navbar-nav navbar-default nav-pills navbar-nav-left navbar-default-color">
		<li id="tab1"><a href="<%=request.getContextPath()%>/project/pages/1"><i class="fa fa-tasks fa-fw "></i><strong style="font-size:17px">项目管理</strong></a></li>
		<li id="tab2"><a href="<%=request.getContextPath()%>/doc/load"><i class="fa fa-tasks fa-fw"></i><strong style="font-size:17px">文档管理</strong></a></li>
		<li id="tab3"><a href="<%=request.getContextPath()%>/contract/pages/1"><i class="fa fa-tasks fa-fw"></i><strong style="font-size:17px">财务管理</strong></a></li>
		<li id="tab4"><a href="<%=request.getContextPath()%>/sample/pages/1"><i class="fa fa-tasks fa-fw"></i><strong style="font-size:17px">样品管理</strong></a></li>
		<li id="tab5"><a href="<%=request.getContextPath()%>/literature/list?pageIndex=1"><i class="fa fa-tasks fa-fw"></i><strong style="font-size:17px">文献管理</strong></a></li>
	</ul>



	<!-- navbar tabs -->

	<div class="navbar-default sidebar navbar-default-color "
		role="navigation">

		<div class="sidebar-nav ">
			<ul class="nav" id="sidebarUl">
				<li  style="display:none" id="projectBasicDataLi"><a id="link_pro" href="<%=request.getContextPath()%>/project/pages/1"><i
						class="fa fa-bar-chart-o fa-fw"></i> <strong style="font-size:17px">项目基本信息</strong></a></li>
				<li  style="display:none" id="customerBasicDataLi"><a id="link_customer" href="<%=request.getContextPath()%>/customer/pages/1"><i
						class="fa fa-bar-chart-o fa-fw"></i> <strong style="font-size:17px">客户基本信息</strong></a></li>
				<li  style="display:none" id="outsourceBasicDataLi"><a id="link_outsource" href="<%=request.getContextPath()%>/outsource/pages/1"><i
						class="fa fa-bar-chart-o fa-fw"></i> <strong style="font-size:17px">外包信息</strong></a></li>
				<li  style="display:none" id="assignBasicDataLi"><a id="link_outsource" href="<%=request.getContextPath()%>/project/assign-redirect"><i
						class="fa fa-bar-chart-o fa-fw"></i> <strong style="font-size:17px">分配项目</strong></a></li>
				<li  style="display:none" id="docBasiceDataLi"><a id="link_doc" href="<%=request.getContextPath()%>/doc/pages/1"><i
						class="fa fa-bar-chart-o fa-fw"></i> <strong style="font-size:17px">文档基本信息</strong></a></li>
				<li  style="display:none" id="contractBasicDataLi"><a id="link_contract" href="<%=request.getContextPath()%>/contract/pages/1"><i
						class="fa fa-bar-chart-o fa-fw"></i> <strong style="font-size:17px">财务合同基本信息</strong></a></li>
				<li  style="display:none" id="sampleBasicDataLi"><a id="link_contract" href="<%=request.getContextPath()%>/sample/pages/1"><i
						class="fa fa-bar-chart-o fa-fw"></i> <strong style="font-size:17px">样品基本信息</strong></a></li>
				<li  style="display:none" id="literatureBasicDataLi"><a id="link_literature" href="<%=request.getContextPath()%>/literature/list?pageIndex=1"><i
						class="fa fa-bar-chart-o fa-fw"></i> <strong style="font-size:17px">文献基本信息</strong></a></li>
				<li  style="display:none" id="sideModifyPasswordLi"><a id="link_sideModifyPassword" href="<%=request.getContextPath()%>/user/modify-redirect"><i
						class="fa fa-bar-chart-o fa-fw"></i> <strong style="font-size:17px">修改密码</strong></a></li>
				<li  style="display:none" id="sideCreateUserLi"><a id="link_sideCreateUser" href="<%=request.getContextPath()%>/user/add-redirect"><i
						class="fa fa-bar-chart-o fa-fw"></i> <strong style="font-size:17px">创建新用户</strong></a></li>
<!-- 				<li><a id="link_proStatus" href="#"><i -->
<!-- 						class="fa fa-bar-chart-o fa-fw"></i> <strong>项目进度</strong><span -->
<!-- 						id="projectStatusBadge" class="badge sidebar-badge-margin">1</span></a> -->
<!-- 				</li> -->
				<!--<li><a id="link_customCalling" href="#"><i
						class="fa fa-bar-chart-o fa-fw"></i> <strong>客户联系记录</strong></a></li> -->
			</ul>
		</div>
		<!-- /.sidebar-collapse -->
	</div>
	<!-- /.navbar-static-side -->
</nav>


<input id="role" type="hidden" value="<%=session.getAttribute("role")%>"/>

<script type="text/javascript">
window.onload=function(){
var activeTabUrlStr = window.location.pathname;
	
	if(activeTabUrlStr.indexOf("project")>0){
		$("#tab1").addClass("active");
		$("#tab1").siblings().removeClass();
		$("#projectBasicDataLi").addClass("active");
		$("#projectBasicDataLi").siblings().removeClass(); 
		$("#projectBasicDataLi").css('display','block');
		$("#customerBasicDataLi").css('display','block');
		$("#outsourceBasicDataLi").css('display','block');
		$("#assignBasicDataLi").css('display','block');
		
	}
	
	if(activeTabUrlStr.indexOf("doc")>0){
		$("#tab2").addClass("active");
		$("#tab2").siblings().removeClass();
		$("#docBasiceDataLi").css('display','block');
	}
	
	if(activeTabUrlStr.indexOf("contract")>0){
		$("#tab3").addClass("active");
		$("#tab3").siblings().removeClass();
		$("#contractBasicDataLi").css('display','block');
	}
	if(activeTabUrlStr.indexOf("sample")>0){
		$("#tab4").addClass("active");
		$("#tab4").siblings().removeClass();
		$("#sampleBasicDataLi").css('display','block');
	}
	if(activeTabUrlStr.indexOf("literature")>0){
		$("#tab5").addClass("active");
		$("#tab5").siblings().removeClass();
		$("#literatureBasicDataLi").css('display','block');
	}
	
	if(activeTabUrlStr.indexOf("customer")>0){
		$("#tab1").addClass("active");
		$("#tab1").siblings().removeClass();
		$("#customerBasicDataLi").addClass("active");
		$("#customerBasicDataLi").siblings().removeClass();
		$("#projectBasicDataLi").css('display','block');
		$("#customerBasicDataLi").css('display','block');
		$("#outsourceBasicDataLi").css('display','block');
	}
	if(activeTabUrlStr.indexOf("outsource")>0){
		$("#tab1").addClass("active");
		$("#tab1").siblings().removeClass();
		$("#outsourceBasicDataLi").addClass("active");
		$("#outsourceBasicDataLi").siblings().removeClass();
		$("#projectBasicDataLi").css('display','block');
		$("#customerBasicDataLi").css('display','block');
		$("#outsourceBasicDataLi").css('display','block');
	}
	
	if(activeTabUrlStr.indexOf("user")>0&&activeTabUrlStr.indexOf("modify")>0){
		$("#sideModifyPasswordLi").css('display','block');
		//sideModifyPassword
	}
	if(activeTabUrlStr.indexOf("user")>0&&activeTabUrlStr.indexOf("add")>0){
		$("#sideCreateUserLi").css('display','block');
		//sideModifyPassword
	}
	/*
	*/
		
	if($("#role").val()=="1"){
		$("#createUserLi").css('display','none');
		$("#tab3").css('display','none');
		$("#modifyProBasicData").css('display','none');
		$("#modifyOutsource").css('display','none');
		$("#customerBasicDataLi").css('display','none');
		$("#customerTotalPanel").css('display','none');
		$("#create").css('display','none'); 
		$("#assignBasicDataLi").css('display','none');
		$("#projectBasicDataLi").removeClass("active");
	}
	if($("#role").val()=="3"){
		$("#createUserLi").css('display','none');
		$("#outsourceBasicDataLi").css('display','none');
		$("#customerBasicDataLi").css('display','none');
		$("#tab2").css('display','none');
		$("#tab3").css('display','none');
		$("#tab4").css('display','none');
		$("#tab5").css('display','none');
		//$("#messageLi").css('display','none');
		$("#outsourceTotalPanel").css('display','none');
		$("#customerTotalPanel").css('display','none');
		$("#projectstatusTotalPanel").css('display','none');
		$("#modifyProBasicData").css('display','none');
		$("#create").css('display','none');
		$("#assignBasicDataLi").css('display','none');
		$("#projectBasicDataLi").removeClass("active");
	}
	
	

};
	
</script>
