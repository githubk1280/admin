<script type="text/javascript">
function outSourcingController($scope, $http) {
	$scope.poToggle = function() {
		var target = $("#arrowOutsource");
		if (target.attr("class") == ("glyphicon glyphicon-chevron-down")) {
			var projectId = ${project.projectId};
			$http.get("/admin/outsource/ajax/${project.projectId}").success(
				function(data) {
					if (data.success == true) {
						$scope.pgos = JSON.parse(data.data);
						$scope.pgos.experimentOS.projectId = projectId;
						$scope.pgos.dataOS.projectId = projectId;
						if($scope.pgos.experimentOS.sendSampleDate != null) {
							$scope.pgos.experimentOS.sendSampleDate = $scope
							.getTimeString($scope.pgos.experimentOS.sendSampleDate);
						}
					}
					
				}).error(function(err) {
				alert("获取失败，请重试!");
			});
			target.attr("class", "glyphicon glyphicon-chevron-up");
		} else {
			target.attr("class", "glyphicon glyphicon-chevron-down");
		}
	};

	$scope.getTimeString = function(longTimes) {
		var date = new Date(longTimes);
		var result = "";
		result += date.getFullYear();
		result += "-";
		result += date.getMonth();
		result += "-";
		result += date.getDay() > 10 ? date.getDay() : "0" + date.getDay();
		result += " ";
		
		//return result;
		return (date.getFullYear() + "-" + (date.getMonth()+1) + "-" + date.getDate()).replace(/\b(\d)\b/g, "0$1");
	};

	$scope.saveOutSource = function() {
		$http({
            method:'post',
            url:'/admin/outsource/ajax/saveOrUpdate',
            data: $scope.pgos
		}).success(function (data){
			if(data.success == true){
				//alert("状态更新成功!");
			}
		}).error(function (err){
			alert(err);
		});
	};
}
</script>

<div class="panel panel-default" ng-controller="outSourcingController">
	<div class="panel-heading">
		<h3 class="panel-title">
			<strong>外包信息</strong> <a data-toggle="collapse" href="#collapseThree"
				class="panel_a" ng-click="poToggle()"> <span id="arrowOutsource" class="glyphicon glyphicon-chevron-down" 
					style="color: rgb(0, 0, 0);"></span>
			</a>
			<button id="modifyOutsource"  type="button" class="btn btn-default btn-success" style="margin-left: 10px;">修改</button>
			<button id="cancelOutsource"  type="reset" class="btn btn-default btn-success" style="margin-left: 10px; display: none">取消</button>
			<button id="saveOutsource"  class="btn btn-default btn-success" style="margin-left: 10px; display: none" ng-click="saveOutSource()">保存</button>
		</h3>
	</div>

	<div id="collapseThree" class="panel-collapse collapse" style="">
		<div id="panelOutsource" class="panel-body">
			<div class="row">
				<div class="col-md-12">
					<div class="pull-left page-header">
						<h5>
							<strong>实验外包信息</strong>
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
						<input id="outsourceProjectID" type="text" readonly="true" class="form-control" ng-model="pgos.experimentOS.projectId" value="${project.projectId }">
					</div>
				</div>
				<div class="col-md-6 col-sm-12 col-xs-12">
					<div>
						<label>外包单位</label>
					</div>
					<div>
						<input type="text" maxlength="20" class="form-control" ng-model="pgos.experimentOS.outSourceUnit">
					</div>
				</div>
			</div>
			<div class="row row-margin">
				<div class="col-md-6 col-sm-12 col-xs-12">
					<div>
						<label>联系人</label>
					</div>
					<div>
						<input type="text" maxlength="5" class="form-control" ng-model="pgos.experimentOS.contactPerson">
					</div>
				</div>
				<div class="col-md-6 col-sm-12 col-xs-12">
					<div>
						<label>联系人电话</label>
					</div>
					<div>
						<input type="text" maxlength="15" class="form-control" ng-model="pgos.experimentOS.contactPhone">
					</div>
				</div>
			</div>

			<div class="row row-margin">
				<div class="col-md-6 col-sm-12 col-xs-12">
					<div>
						<label>合同金额</label>
					</div>
					<div>
						<input type="text" maxlength="10" class="form-control" ng-model="pgos.experimentOS.contractAmount">
					</div>
				</div>
				<div class="col-md-6 col-sm-12 col-xs-12">
					<div>
						<label>送样日期</label>
					</div>
					<div>
						<input type="text"  maxlength="10" class="form-control form_date" ng-model="pgos.experimentOS.sendSampleDate"> 
					</div>
				</div>
			</div>
			<div class="row row-margin">
				<div class="col-md-6 col-sm-12 col-xs-12">
					<div>
						<label>结果是否收到</label>
					</div>
					<div>
						<div class="pull-left">
							<label><input type="radio" name="optionsRadios6"
								id="resultReceived1" value="1" ng-model="pgos.experimentOS.exprResultRecived">是 </label> <label><input
								id="resultReceived2" type="radio" name="optionsRadios7" id="optionsRadios7"
								value="2" ng-model="pgos.experimentOS.exprResultRecived">否 </label>
						</div>
					</div>
				</div>
				<div class="col-md-6 col-sm-12 col-xs-12">
					<div>
						<label>样本数量</label>
					</div>
					<div>
						<div>
							<input type="text"  maxlength="10" class="form-control" ng-model="pgos.experimentOS.sendSampleCount">
						</div>
					</div>
				</div>
			</div>
			<div class="row row-margin">
				<div class="col-md-6 col-sm-12 col-xs-12">
					<div>
						<label>合同信息</label>
					</div>
					<div>
						<textarea class="form-control" rows="8" ng-model="pgos.experimentOS.contactInfo"></textarea>
					</div>
				</div>
			</div>
			<div class="row row-margin">
				<div class="col-md-6 col-sm-12 col-xs-12">
					<div>
						<label>地址 </label>
					</div>
					<div>
						<textarea class="form-control" rows="8" ng-model="pgos.experimentOS.address"></textarea>
					</div>
				</div>
			</div>
			<div class="row">
				<div class="col-md-12">
					<div class="pull-left page-header">
						<h5>
							<strong>数据分析外包信息</strong>
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
						<input id="dataProjectID" type="text" readonly="true" class="form-control" ng-model="pgos.dataOS.projectId" value="${project.projectId}" >
					</div>
				</div>
				<div class="col-md-6 col-sm-12 col-xs-12">
					<div>
						<label>外包单位</label>
					</div>
					<div>
						<input type="text"  maxlength="20" class="form-control" ng-model="pgos.dataOS.outSourceUnit">
					</div>
				</div>
			</div>
			<div class="row row-margin">
				<div class="col-md-6 col-sm-12 col-xs-12">
					<div>
						<label>联系人</label>
					</div>
					<div>
						<input type="text" maxlength="5" class="form-control" ng-model="pgos.dataOS.contactPerson">
					</div>
				</div>
				<div class="col-md-6 col-sm-12 col-xs-12">
					<div>
						<label>联系人电话</label>
					</div>
					<div>
						<input type="text" maxlength="15" class="form-control" ng-model="pgos.dataOS.contactPhone">
					</div>
				</div>
			</div>
			<div class="row row-margin">
				<div class="col-md-6 col-sm-12 col-xs-12">
					<div>
						<label>地址 </label>
					</div>
					<div>
						<textarea class="form-control" rows="8" ng-model="pgos.dataOS.address"></textarea>
					</div>
				</div>
			</div>
		</div>
	</div>
</div>