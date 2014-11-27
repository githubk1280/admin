<div class="panel panel-default" ng-controller="projectCustomerController">
	<div class="panel-heading">
		<h3 class="panel-title">
			<strong>客户信息</strong> <a data-toggle="collapse"
				href="#collapseFour" class="panel_a" ng-click="csToggle()"> <span
				id="arrowCustomerInfo" class="glyphicon glyphicon-chevron-down"
				style="color: rgb(0, 0, 0);"></span>
			</a>
			<button id="saveCustomInfo" value="1"
				class="btn btn-default btn-success" style="margin-left: 10px;"
				type="submit" ng-click="updateCustomer()">修改</button>
			<button id="cancelCustomInfo" value="2"
				class="btn btn-default btn-success"
				style="margin-left: 10px; display: none">取消</button>
		</h3>
	</div>
	<div id="collapseFour" class="panel-collapse collapse" style="">
		<div id="panelCustomerInfo" class="panel-body">
			<div class="row">
				<div class="col-md-6">
					<div>
						<label>客户级别</label>
					</div>
					<div class="pull-left">
						<label><input type="radio" name="optionsRadios17"
							id="optionsRadios17" value="option17" checked>高 </label> <label><input
							type="radio" name="optionsRadios18" id="optionsRadios18"
							value="option18">中 </label> <label><input type="radio"
							name="optionsRadios19" id="optionsRadios19" value="option19">低
						</label>
					</div>
				</div>
			</div>
			<div class="row">
				<div class="col-md-12">
					<div class="pull-left page-header">
						<h5>
							<strong>项目主要负责人</strong>
						</h5>
					</div>
				</div>
			</div>
			<div class="row">
				<div class="col-md-6 col-sm-12 col-xs-12">
					<div>
						<label>项目编号 </label>
					</div>
					<div>
						<input type="text" class="form-control" value="${project.projectId }">
					</div>
				</div>
				<div class="col-md-6 col-sm-12 col-xs-12">
					<div>
						<label>姓名 </label>
					</div>
					<div>
						<input type="text" class="form-control" ng-model="customer0.customerName"/>
					</div>
				</div>
			</div>
			<div class="row">
				<div class="col-md-6 col-sm-12 col-xs-12">
					<div>
						<label>性别 </label>
					</div>
					<div>
						<input type="text" class="form-control" ng-model="customer0.sex"/>
					</div>
				</div>
				<div class="col-md-6 col-sm-12 col-xs-12">
					<div>
						<label>年龄 </label>
					</div>
					<div>
						<input type="text" class="form-control" ng-model="customer0.age"/>
					</div>
				</div>
			</div>
			<div class="row">
				<div class="col-md-6 col-sm-12 col-xs-12">
					<div>
						<label>联系电话 </label>
					</div>
					<div>
						<input type="text" class="form-control" ng-model="customer0.phone"/>
					</div>
				</div>
				<div class="col-md-6 col-sm-12 col-xs-12">
					<div>
						<label>联系手机 </label>
					</div>
					<div>
						<input type="text" class="form-control" ng-model="customer0.cellphone"/>
					</div>
				</div>
			</div>
			<div class="row">
				<div class="col-md-6 col-sm-12 col-xs-12">
					<div>
						<label>工作单位 </label>
					</div>
					<div>
						<input type="text" class="form-control" ng-model="customer0.workUnit"/>
					</div>
				</div>
				<div class="col-md-6 col-sm-12 col-xs-12">
					<div>
						<label>科室/部门 </label>
					</div>
					<div>
						<input type="text" class="form-control" ng-model="customer0.department"/>
					</div>
				</div>
			</div>
			<div class="row">
				<div class="col-md-6 col-sm-12 col-xs-12">
					<div>
						<label>职位 </label>
					</div>
					<div>
						<input type="text" class="form-control" ng-model="customer0.position"/>
					</div>
				</div>
				<div class="col-md-6 col-sm-12 col-xs-12">
					<div>
						<label>电子邮件 </label>
					</div>
					<div>
						<input type="text" class="form-control" ng-model="customer0.email"/>
					</div>
				</div>
			</div>
			<div class="row">
				<div class="col-md-6 col-sm-12 col-xs-12">
					<div>
						<label>联系地址 </label>
					</div>
					<div>
						<input type="text" class="form-control" ng-model="customer0.adress"/>
					</div>
				</div>
				<div class="col-md-6 col-sm-12 col-xs-12">
					<div>
						<label>研究方向 </label>
					</div>
					<div>
						<input type="text" class="form-control" ng-model="customer0.resarchDirection"/>
					</div>
				</div>
			</div>
			<div class="row">
				<div class="col-md-6 col-sm-12 col-xs-12">
					<div>
						<label>与负责人关系 </label>
					</div>
					<div>
						<input type="text" class="form-control" ng-model="customer0.relationShip"/>
					</div>
				</div>
				<div class="col-md-6 col-sm-12 col-xs-12">
					<div>
						<label>负责内容 </label>
					</div>
					<div>
						<input type="text" class="form-control"  ng-model="customer0.responsibleArea">
					</div>
				</div>
			</div>


			<div class="row">
				<div class="col-md-12">
					<div class="pull-left  page-header">
						<h5>
							<strong>项目第一联系人</strong>
						</h5>
					</div>
				</div>
			</div>
			<div class="row">
				<div class="col-md-6 col-sm-12 col-xs-12">
					<div>
						<label>项目编号 </label>
					</div>
					<div>
						<input type="text" class="form-control" value="${project.projectId }">
					</div>
				</div>
				<div class="col-md-6 col-sm-12 col-xs-12">
					<div>
						<label>姓名 </label>
					</div>
					<div>
						<input type="text" class="form-control" ng-model="customer1.customerName"/>
					</div>
				</div>
			</div>
			<div class="row">
				<div class="col-md-6 col-sm-12 col-xs-12">
					<div>
						<label>性别 </label>
					</div>
					<div>
						<input type="text" class="form-control" ng-model="customer1.sex"/>
					</div>
				</div>
				<div class="col-md-6 col-sm-12 col-xs-12">
					<div>
						<label>年龄 </label>
					</div>
					<div>
						<input type="text" class="form-control" ng-model="customer1.age"/>
					</div>
				</div>
			</div>
			<div class="row">
				<div class="col-md-6 col-sm-12 col-xs-12">
					<div>
						<label>联系电话 </label>
					</div>
					<div>
						<input type="text" class="form-control" ng-model="customer1.phone"/>
					</div>
				</div>
				<div class="col-md-6 col-sm-12 col-xs-12">
					<div>
						<label>联系手机 </label>
					</div>
					<div>
						<input type="text" class="form-control" ng-model="customer1.cellphone"/>
					</div>
				</div>
			</div>
			<div class="row">
				<div class="col-md-6 col-sm-12 col-xs-12">
					<div>
						<label>工作单位 </label>
					</div>
					<div>
						<input type="text" class="form-control" ng-model="customer1.workUnit"/>
					</div>
				</div>
				<div class="col-md-6 col-sm-12 col-xs-12">
					<div>
						<label>科室/部门 </label>
					</div>
					<div>
						<input type="text" class="form-control" ng-model="customer1.department"/>
					</div>
				</div>
			</div>
			<div class="row">
				<div class="col-md-6 col-sm-12 col-xs-12">
					<div>
						<label>职位 </label>
					</div>
					<div>
						<input type="text" class="form-control" ng-model="customer1.position"/>
					</div>
				</div>
				<div class="col-md-6 col-sm-12 col-xs-12">
					<div>
						<label>电子邮件 </label>
					</div>
					<div>
						<input type="text" class="form-control" ng-model="customer1.email"/>
					</div>
				</div>
			</div>
			<div class="row">
				<div class="col-md-6 col-sm-12 col-xs-12">
					<div>
						<label>联系地址 </label>
					</div>
					<div>
						<input type="text" class="form-control" ng-model="customer1.adress"/>
					</div>
				</div>
				<div class="col-md-6 col-sm-12 col-xs-12">
					<div>
						<label>研究方向 </label>
					</div>
					<div>
						<input type="text" class="form-control" ng-model="customer1.resarchDirection"/>
					</div>
				</div>
			</div>
			<div class="row">
				<div class="col-md-6 col-sm-12 col-xs-12">
					<div>
						<label>与负责人关系 </label>
					</div>
					<div>
						<input type="text" class="form-control" ng-model="customer1.relationShip"/>
					</div>
				</div>
				<div class="col-md-6 col-sm-12 col-xs-12">
					<div>
						<label>负责内容 </label>
					</div>
					<div>
						<input type="text" class="form-control"  ng-model="customer1.responsibleArea">
					</div>
				</div>
			</div>
			
			
			<!-- start  -->
			<div class="row">
				<div class="col-md-12">
					<div class="pull-left page-header">
						<h5>
							<strong>项目第二联系人</strong>
						</h5>
					</div>
				</div>
			</div>
			<div class="row">
				<div class="col-md-6 col-sm-12 col-xs-12">
					<div>
						<label>项目编号 </label>
					</div>
					<div>
						<input type="text" class="form-control" value="${project.projectId }">
					</div>
				</div>
				<div class="col-md-6 col-sm-12 col-xs-12">
					<div>
						<label>姓名 </label>
					</div>
					<div>
						<input type="text" class="form-control" ng-model="customer2.customerName"/>
					</div>
				</div>
			</div>
			<div class="row">
				<div class="col-md-6 col-sm-12 col-xs-12">
					<div>
						<label>性别 </label>
					</div>
					<div>
						<input type="text" class="form-control" ng-model="customer2.sex"/>
					</div>
				</div>
				<div class="col-md-6 col-sm-12 col-xs-12">
					<div>
						<label>年龄 </label>
					</div>
					<div>
						<input type="text" class="form-control" ng-model="customer2.age"/>
					</div>
				</div>
			</div>
			<div class="row">
				<div class="col-md-6 col-sm-12 col-xs-12">
					<div>
						<label>联系电话 </label>
					</div>
					<div>
						<input type="text" class="form-control" ng-model="customer2.phone"/>
					</div>
				</div>
				<div class="col-md-6 col-sm-12 col-xs-12">
					<div>
						<label>联系手机 </label>
					</div>
					<div>
						<input type="text" class="form-control" ng-model="customer2.cellphone"/>
					</div>
				</div>
			</div>
			<div class="row">
				<div class="col-md-6 col-sm-12 col-xs-12">
					<div>
						<label>工作单位 </label>
					</div>
					<div>
						<input type="text" class="form-control" ng-model="customer2.workUnit"/>
					</div>
				</div>
				<div class="col-md-6 col-sm-12 col-xs-12">
					<div>
						<label>科室/部门 </label>
					</div>
					<div>
						<input type="text" class="form-control" ng-model="customer2.department"/>
					</div>
				</div>
			</div>
			<div class="row">
				<div class="col-md-6 col-sm-12 col-xs-12">
					<div>
						<label>职位 </label>
					</div>
					<div>
						<input type="text" class="form-control" ng-model="customer2.position"/>
					</div>
				</div>
				<div class="col-md-6 col-sm-12 col-xs-12">
					<div>
						<label>电子邮件 </label>
					</div>
					<div>
						<input type="text" class="form-control" ng-model="customer2.email"/>
					</div>
				</div>
			</div>
			<div class="row">
				<div class="col-md-6 col-sm-12 col-xs-12">
					<div>
						<label>联系地址 </label>
					</div>
					<div>
						<input type="text" class="form-control" ng-model="customer2.adress"/>
					</div>
				</div>
				<div class="col-md-6 col-sm-12 col-xs-12">
					<div>
						<label>研究方向 </label>
					</div>
					<div>
						<input type="text" class="form-control" ng-model="customer2.resarchDirection"/>
					</div>
				</div>
			</div>
			<div class="row">
				<div class="col-md-6 col-sm-12 col-xs-12">
					<div>
						<label>与负责人关系 </label>
					</div>
					<div>
						<input type="text" class="form-control" ng-model="customer2.relationShip"/>
					</div>
				</div>
				<div class="col-md-6 col-sm-12 col-xs-12">
					<div>
						<label>负责内容 </label>
					</div>
					<div>
						<input type="text" class="form-control"  ng-model="customer2.responsibleArea">
					</div>
				</div>
			</div>

		</div>
	</div>
</div>