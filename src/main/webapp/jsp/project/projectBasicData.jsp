<div id="page-wrapper">
	<div class="row">
		<form role="form">
			<div class="col-lg-12">
				<h2 class="page-header form-group input-group">
					<strong>项目基本信息</strong> <input type="text" class="form-control"
						placeholder="请输入项目编号"> <span class="input-group-btn">
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
						<th>项目编号</th>
						<th>项目名称</th>
						<th>项目类型</th>
						<th>研究方向</th>
						<th>开始日期</th>
						<th>结束日期</th>
						<th>项目进度</th>
						<th>优先级</th>
					</tr>
				</thead>
				<tbody>
					<c:forEach items="${projects}" var="project" varStatus="status">
						<tr>
							<td>${project.projectId}</td>
							<td>${project.projectName}</td>
							<td>意向/实施</td>
							<td>${project.researchDirection}</td>
							<td><fmt:formatDate value="${project.startDate}"
									pattern="yyyy-MM-dd" />
							</td>
							<td><fmt:formatDate
									value="${project.endDate}" pattern="yyyy-MM-dd" /></td>
							<td>
								<div class="progress">
									<div
										class="progress-bar 
											<c:if test="${(status.index+1)*20<=30}">progress-bar-warning</c:if>
											<c:if test="${(status.index+1)*20>60}">progress-bar-danger</c:if>"
										role="progressbar" aria-valuenow="60" aria-valuemin="0"
										aria-valuemax="100" style="width: ${(status.index+1)*20}%;">
										<span class="sr-only">${(status.index+1)*20}% Complete</span>${(status.index+1)*20}%
									</div>
								</div>
							</td>
							<td><span class="glyphicon glyphicon-ok"
								style="color: rgb(0, 211, 0);"></span> ${project.priority}</td>
							<td><a href="../page/projectDetailData.html" target="_blank"><i
									class="fa fa-bar-chart-o fa-fw" style="color: rgb(0, 0, 0);"></i></a></td>
						</tr>
					</c:forEach>
				</tbody>
			</table>
			<div class="pull-right">
				<ul class="pagination">
					<li><a href="#"><strong>上一页</strong></a></li>
					<li class="active"><a href="#">1</a></li>
					<li><a href="#">2</a></li>
					<li><a href="#">3</a></li>
					<li><a href="#">4</a></li>
					<li><a href="#">5</a></li>
					<li><a href="#"><strong>下一页</strong></a></li>
				</ul>
			</div>
		</div>
	</div>
	<!-- /#page-wrapper -->
</div>