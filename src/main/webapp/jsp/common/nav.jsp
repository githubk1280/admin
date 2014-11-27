<!-- Navigation -->
<nav
	class="navbar navbar-default navbar-static-top  navbar-default-color"
	role="navigation" style="margin-bottom: 0">
	<div class="navbar-header">
		<a class="navbar-brand"><strong class="navbrand-font">生物信息管理系统</strong></a>
	</div>
	<ng-view>
	<div ng-controller="msgController">
	<ul class="nav navbar-top-links  navbar-right" >
		<li>
                 <a href="<%=request.getContextPath()%>/user/add-redirect">
                     <i class="fa fa-sitemap fa-fw"></i>
                 </a>
		 </li>
		<li><a href="#"> <i class="fa fa-envelope fa-fw"></i><span
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
				<li><a href="<%=request.getContextPath()%>/user/modify-redirect"><i class="fa fa-gear fa-fw"></i>修改密码</a></li>
				<li class="divider"></li>
				<li><a href="<%=request.getContextPath()%>/logout" ><i
						class="fa fa-sign-out fa-fw"></i> 退出</a></li>
			</ul> <!-- /.dropdown-user --></li>
	</ul>
	</ng-view>
	</div>
	<!-- navbar tabs -->
	<ul
		class="nav navbar-nav navbar-default nav-pills navbar-nav-left navbar-default-color">
		<li id="tab1"><a href="<%=request.getContextPath()%>/project/list"><i
				class="fa fa-tasks fa-fw "></i><strong>项目管理</strong></a></li>
		<li id="tab2"><a href="#"><i class="fa fa-tasks fa-fw"></i><strong>文档管理</strong></a></li>
		<li id="tab3"><a href="<%=request.getContextPath()%>/contract/list"><i class="fa fa-tasks fa-fw"></i><strong>财务管理</strong></a></li>
		<li id="tab4"><a href="<%=request.getContextPath()%>/sample/list"><i class="fa fa-tasks fa-fw"></i><strong>样品管理</strong></a></li>
		<li id="tab5"><a href="#"><i class="fa fa-tasks fa-fw"></i><strong>文献管理</strong></a></li>
	</ul>



	<!-- navbar tabs -->

	<div class="navbar-default sidebar navbar-default-color "
		role="navigation">

		<div class="sidebar-nav ">
			<ul class="nav" id="side-menu">
				<li><a id="link_pro" href="<%=request.getContextPath()%>/project/list"><i
						class="fa fa-bar-chart-o fa-fw"></i> <strong>项目基本信息</strong></a></li>
				<li><a id="link_customer" href="<%=request.getContextPath()%>/customer/list"><i
						class="fa fa-bar-chart-o fa-fw"></i> <strong>客户基本信息</strong></a></li>
				<li><a id="link_outsource" href="<%=request.getContextPath()%>/outsource/list"><i
						class="fa fa-bar-chart-o fa-fw"></i> <strong>外包信息</strong></a></li>
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



<script type="text/javascript">

	
</script>