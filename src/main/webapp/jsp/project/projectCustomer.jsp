<div id="customerTotalPanel" class="panel panel-default" ng-controller="projectCustomerController">
	<div class="panel-heading">
		<h3 class="panel-title">
			<strong>客户信息</strong> <a data-toggle="collapse"
				href="#collapseFour" class="panel_a" ng-click="csToggle()"> <span
				id="arrowCustomerInfo" class="glyphicon glyphicon-chevron-down"
				style="color: rgb(0, 0, 0);"></span>
			</a>
			<button id="modifyCustomInfo" value="1"
				class="btn btn-default btn-success" style="margin-right: 10px;float:right; padding:1px 12px"
				type="submit">修改</button>
			<button id="cancelCustomInfo" value="2"
				class="btn btn-default btn-success"
				style="margin-left: 10px; margin-right: 10px;float:right; padding:1px 12px; display: none" ng-click="cancelClick()">取消</button>
			<button id="saveCustomInfo" value="2"
				class="btn btn-default btn-success"
				style="margin-left: 10px; margin-right: 10px;float:right; padding:1px 12px; display: none" type="submit" ng-click="updateCustomer()">保存</button>
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
						<label><input type="radio" id="customerLevel1"  checked>VIP-1 </label> 
						<label><input type="radio" id="customerLevel2" value="option18">VIP-2</label> 
						<label><input type="radio" id="customerLevel3" value="option19">VIP-3</label>
						<label><input type="radio" id="customerLevel4" value="option19">VIP-4</label>
						<label><input type="radio" id="customerLevel5" value="option19">VIP-5</label>
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
						<input id="projectIdForCustomerAdd" type="text" class="form-control" value="${project.projectId }" readonly="true">
					</div>
				</div>
				<div class="col-md-6 col-sm-12 col-xs-12">
					<div>
						<label>姓名 </label>
					</div>
					<div>
						<input type="text" class="form-control" ng-model="customer0.customerName" readonly="true" maxlength="5"/>
					</div>
				</div>
			</div>
			<div class="row">
				<div class="col-md-6 col-sm-12 col-xs-12">
					<div>
						<label>性别 </label>
					</div>
					<div>
						<input type="text" class="form-control" ng-model="customer0.sex" readonly="true" maxlength="1"/>
					</div>
				</div>
				<div class="col-md-6 col-sm-12 col-xs-12">
					<div>
						<label>年龄 </label>
						<label id="principalAgeLbl" class="warning-style">请输入正确的年龄</label>
					</div>
					<div>
						<input id="principalAge" type="text" class="form-control" ng-model="customer0.age" readonly="true" maxlength="3"/>
					</div>
				</div>
			</div>
			<div class="row">
				<div class="col-md-6 col-sm-12 col-xs-12">
					<div>
						<label>联系电话 </label>
						<label id="principalPhoneLbl" class="warning-style">请输入正确的号码</label>
					</div>
					<div>
						<input id="principalPhone" type="text" class="form-control" ng-model="customer0.phone" readonly="true" maxlength="15"/>
					</div>
				</div>
				<div class="col-md-6 col-sm-12 col-xs-12">
					<div>
						<label>联系手机 </label>
						<label id="principalCellPhoneLbl" class="warning-style">请输入正确的号码</label>
					</div>
					<div>
						<input id="principalCellPhone" type="text" class="form-control" ng-model="customer0.cellphone" readonly="true" maxlength="15"/>
					</div>
				</div>
			</div>
			<div class="row">
				<div class="col-md-6 col-sm-12 col-xs-12">
					<div>
						<label>工作单位 </label>
					</div>
					<div>
						<input type="text" class="form-control" ng-model="customer0.workUnit" readonly="true" maxlength="20"/>
					</div>
				</div>
				<div class="col-md-6 col-sm-12 col-xs-12">
					<div>
						<label>科室/部门 </label>
					</div>
					<div>
						<input type="text" class="form-control" ng-model="customer0.department" readonly="true" maxlength="10"/>
					</div>
				</div>
			</div>
			<div class="row">
				<div class="col-md-6 col-sm-12 col-xs-12">
					<div>
						<label>职位 </label>
					</div>
					<div>
						<input type="text" class="form-control" ng-model="customer0.position" readonly="true" maxlength="6"/>
					</div>
				</div>
				<div class="col-md-6 col-sm-12 col-xs-12">
					<div>
						<label>电子邮件 </label>
						<label id="principalMailLbl" class="warning-style">请输入正确的邮箱</label>
					</div>
					<div>
						<input id="principalMail" type="text" class="form-control" ng-model="customer0.email" readonly="true" maxlength="20"/>
					</div>
				</div>
			</div>
			<div class="row">
				<div class="col-md-6 col-sm-12 col-xs-12">
					<div>
						<label>联系地址 </label>
					</div>
					<div>
						<input type="text" class="form-control" ng-model="customer0.adress" readonly="true" maxlength="100"/>
					</div>
				</div>
				<div class="col-md-6 col-sm-12 col-xs-12">
					<div>
						<label>研究方向 </label>
					</div>
					<div>
						<input type="text" class="form-control" ng-model="customer0.resarchDirection" readonly="true" maxlength="10"/>
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
						<input id="firstCustomerProjectId" type="text" class="form-control" value="${project.projectId }" readonly="true">
					</div>
				</div>
				<div class="col-md-6 col-sm-12 col-xs-12">
					<div>
						<label>姓名 </label>
					</div>
					<div>
						<input type="text" class="form-control" ng-model="customer1.customerName" readonly="true" maxlength="5"/>
					</div>
				</div>
			</div>
			<div class="row">
				<div class="col-md-6 col-sm-12 col-xs-12">
					<div>
						<label>性别 </label>
					</div>
					<div>
						<input type="text" class="form-control" ng-model="customer1.sex" readonly="true" maxlength="1"/>
					</div>
				</div>
				<div class="col-md-6 col-sm-12 col-xs-12">
					<div>
						<label>年龄 </label>
						<label id="firstAgeLbl" class="warning-style">请输入正确的年龄</label>
					</div>
					<div>
						<input id="firstAge" type="text" class="form-control" ng-model="customer1.age" readonly="true" maxlength="3"/>
					</div>
				</div>
			</div>
			<div class="row">
				<div class="col-md-6 col-sm-12 col-xs-12">
					<div>
						<label>联系电话 </label>
						<label id="firstPhoneLbl" class="warning-style">请输入正确的号码</label>
					</div>
					<div>
						<input id="firstPhone" type="text" class="form-control" ng-model="customer1.phone" readonly="true" maxlength="15"/>
					</div>
				</div>
				<div class="col-md-6 col-sm-12 col-xs-12">
					<div>
						<label>联系手机 </label>
						<label id="firstCellphoneLbl" class="warning-style">请输入正确的号码</label>
					</div>
					<div>
						<input id="firstCellphone" type="text" class="form-control" ng-model="customer1.cellphone" readonly="true" maxlength="15"/>
					</div>
				</div>
			</div>
			<div class="row">
				<div class="col-md-6 col-sm-12 col-xs-12">
					<div>
						<label>工作单位 </label>
					</div>
					<div>
						<input type="text" class="form-control" ng-model="customer1.workUnit" readonly="true" maxlength="20"/>
					</div>
				</div>
				<div class="col-md-6 col-sm-12 col-xs-12">
					<div>
						<label>科室/部门 </label>
					</div>
					<div>
						<input type="text" class="form-control" ng-model="customer1.department" readonly="true" maxlength="10"/>
					</div>
				</div>
			</div>
			<div class="row">
				<div class="col-md-6 col-sm-12 col-xs-12">
					<div>
						<label>职位 </label>
					</div>
					<div>
						<input type="text" class="form-control" ng-model="customer1.position" readonly="true" maxlength="6"/>
					</div>
				</div>
				<div class="col-md-6 col-sm-12 col-xs-12">
					<div>
						<label>电子邮件 </label>
						<label id="firstMailLbl" class="warning-style">请输入正确的邮箱</label>
					</div>
					<div>
						<input id="firstMail" type="text" class="form-control" ng-model="customer1.email" readonly="true" maxlength="20"/>
					</div>
				</div>
			</div>
			<div class="row">
				<div class="col-md-6 col-sm-12 col-xs-12">
					<div>
						<label>联系地址 </label>
					</div>
					<div>
						<input type="text" class="form-control" ng-model="customer1.adress" readonly="true" maxlength="100"/>
					</div>
				</div>
				<div class="col-md-6 col-sm-12 col-xs-12">
					<div>
						<label>研究方向 </label>
					</div>
					<div>
						<input type="text" class="form-control" ng-model="customer1.resarchDirection" readonly="true" maxlength="10"/>
					</div>
				</div>
			</div>
			<div class="row">
				<div class="col-md-6 col-sm-12 col-xs-12">
					<div>
						<label>与负责人关系 </label>
					</div>
					<div>
						<input type="text" class="form-control" ng-model="customer1.relationShip" readonly="true" maxlength="10"/>
					</div>
				</div>
				<div class="col-md-6 col-sm-12 col-xs-12">
					<div>
						<label>负责内容 </label>
					</div>
					<div>
						<input type="text" class="form-control"  ng-model="customer1.responsibleArea" readonly="true"  maxlength="50"/>
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
						<input id="secondCustomerProjectId" type="text" class="form-control" value="${project.projectId }" readonly="true"/>
					</div>
				</div>
				<div class="col-md-6 col-sm-12 col-xs-12">
					<div>
						<label>姓名 </label>
					</div>
					<div>
						<input type="text" class="form-control" ng-model="customer2.customerName" readonly="true" maxlength="5"/>
					</div>
				</div>
			</div>
			<div class="row">
				<div class="col-md-6 col-sm-12 col-xs-12">
					<div>
						<label>性别 </label>
					</div>
					<div>
						<input type="text" class="form-control" ng-model="customer2.sex" readonly="true" maxlength="1"/>
					</div>
				</div>
				<div class="col-md-6 col-sm-12 col-xs-12">
					<div>
						<label>年龄 </label>
						<label id="secondAgeLbl" class="warning-style">请输入正确的年龄</label>
					</div>
					<div>
						<input id="secondAge" type="text" class="form-control" ng-model="customer2.age" readonly="true" maxlength="3"/>
					</div>
				</div>
			</div>
			<div class="row">
				<div class="col-md-6 col-sm-12 col-xs-12">
					<div>
						<label>联系电话 </label>
						<label id="secondPhoneLbl" class="warning-style">请输入正确的号码</label>
					</div>
					<div>
						<input id="secondPhone" type="text" class="form-control" ng-model="customer2.phone" readonly="true" maxlength="15"/>
					</div>
				</div>
				<div class="col-md-6 col-sm-12 col-xs-12">
					<div>
						<label>联系手机 </label>
						<label id="secondCellphoneLbl" class="warning-style">请输入正确的号码</label>
					</div>
					<div>
						<input id="secondCellphone" type="text" class="form-control" ng-model="customer2.cellphone" readonly="true" maxlength="15"/>
					</div>
				</div>
			</div>
			<div class="row">
				<div class="col-md-6 col-sm-12 col-xs-12">
					<div>
						<label>工作单位 </label>
					</div>
					<div>
						<input type="text" class="form-control" ng-model="customer2.workUnit" readonly="true" maxlength="20"/>
					</div>
				</div>
				<div class="col-md-6 col-sm-12 col-xs-12">
					<div>
						<label>科室/部门 </label>
					</div>
					<div>
						<input type="text" class="form-control" ng-model="customer2.department" readonly="true" maxlength="10"/>
					</div>
				</div>
			</div>
			<div class="row">
				<div class="col-md-6 col-sm-12 col-xs-12">
					<div>
						<label>职位 </label>
					</div>
					<div>
						<input type="text" class="form-control" ng-model="customer2.position" readonly="true" maxlength="6"/>
					</div>
				</div>
				<div class="col-md-6 col-sm-12 col-xs-12">
					<div>
						<label>电子邮件 </label>
						<label id="secondMailLbl" class="warning-style">请输入正确的邮箱</label>
					</div>
					<div>
						<input id="secondMail" type="text" class="form-control" ng-model="customer2.email" readonly="true" maxlength="20"/>
					</div>
				</div>
			</div>
			<div class="row">
				<div class="col-md-6 col-sm-12 col-xs-12">
					<div>
						<label>联系地址 </label>
					</div>
					<div>
						<input type="text" class="form-control" ng-model="customer2.adress" readonly="true"  maxlength="100"/>
					</div>
				</div>
				<div class="col-md-6 col-sm-12 col-xs-12">
					<div>
						<label>研究方向 </label>
					</div>
					<div>
						<input type="text" class="form-control" ng-model="customer2.resarchDirection" readonly="true"  maxlength="10"/>
					</div>
				</div>
			</div>
			<div class="row">
				<div class="col-md-6 col-sm-12 col-xs-12">
					<div>
						<label>与负责人关系 </label>
					</div>
					<div>
						<input type="text" class="form-control" ng-model="customer2.relationShip" readonly="true" maxlength="10"/>
					</div>
				</div>
				<div class="col-md-6 col-sm-12 col-xs-12">
					<div>
						<label>负责内容 </label>
					</div>
					<div>
						<input type="text" class="form-control"  ng-model="customer2.responsibleArea" readonly="true" maxlength="50"/>
					</div>
				</div>
			</div>
			</div>
	</div>
</div>