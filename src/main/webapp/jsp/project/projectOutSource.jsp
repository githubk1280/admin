<script type="text/javascript">
function outSourcingController($scope, $http) {
	$scope.poToggle = function() {
		var target = $("#arrowOutsource");
		if (target.attr("class") == ("glyphicon glyphicon-chevron-down")) {
			$http.get("/admin/outsource/ajax/${project.projectId}").success(
				function(data) {
					if (data.success == true) {
						$scope.array = JSON.parse(data.data);
						$scope.experimentOS = $scope.array[0];
						$scope.dataOS = $scope.array[1];
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
		var d = new Date(longTimes);
		var result = "";
		result += d.getFullYear();
		result += "-";
		result += d.getMonth();
		result += "-";
		result += d.getDay() > 10 ? d.getDay() : "0" + d.getDay();
		result += " ";
		result += d.getHours() > 10 ? d.getHours() : "0" + d.getHours();
		result += ":";
		result += d.getMinutes() > 10 ? d.getMinutes() : "0" + d.getMinutes();
		result += ":";
		result += d.getSeconds() > 10 ? d.getSeconds() : "0" + d.getSeconds();
		return result;
	};

	$scope.saveOurSource = function() {
		$http({
            method:'post',
            url:'/admin/outsource/ajax/add',
            data: $scope.progress
		}).success(function (data){
			if(data.success == true){
				alert("状态更新成功!");
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
			<button id="saveOutsource" value="1"
				class="btn btn-default btn-success" style="margin-left: 10px;">修改</button>
			<button id="cancelOutsource" value="2"
				class="btn btn-default btn-success"
				style="margin-left: 10px; display: none">取消</button>
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
						<input id="outsourceProjectID" type="text" class="form-control" ng-model="experimentOS.projectId">
					</div>
				</div>
				<div class="col-md-6 col-sm-12 col-xs-12">
					<div>
						<label>外包单位</label>
					</div>
				</div>
				<div>
					<input type="text" class="form-control" ng-model="experimentOS.outSourceUnit">
				</div>
			</div>
			<div class="row row-margin">
				<div class="col-md-6 col-sm-12 col-xs-12">
					<div>
						<label>联系人</label>
					</div>
					<div>
						<input type="text" class="form-control" ng-model="experimentOS.outSourceUnit">
					</div>
				</div>
				<div class="col-md-6 col-sm-12 col-xs-12">
					<div>
						<label>联系人电话</label>
					</div>
					<div>
						<input type="text" class="form-control" ng-model="experimentOS.outSourceUnit">
					</div>
				</div>
			</div>

			<div class="row row-margin">
				<div class="col-md-6 col-sm-12 col-xs-12">
					<div>
						<label>合同金额</label>
					</div>
					<div>
						<input type="text" class="form-control" ng-model="experimentOS.outSourceUnit">
					</div>
				</div>
				<div class="col-md-6 col-sm-12 col-xs-12">
					<div>
						<label>送样日期</label>
					</div>
					<div>
						<input type="text" class="form-control" ng-model="experimentOS.outSourceUnit">
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
								id="optionsRadios6" value="option6">是 </label> <label><input
								type="radio" name="optionsRadios7" id="optionsRadios7"
								value="option7" checked>否 </label>
						</div>
					</div>
				</div>
				<div class="col-md-6 col-sm-12 col-xs-12">
					<div>
						<label>样本数量</label>
					</div>
					<div>
						<div>
							<input type="text" class="form-control" ng-model="experimentOS.sendSampleCount">
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
						<textarea class="form-control" rows="8"></textarea>
					</div>
				</div>
			</div>
			<div class="row row-margin">
				<div class="col-md-6 col-sm-12 col-xs-12">
					<div>
						<label>地址 </label>
					</div>
					<div>
						<textarea class="form-control" rows="8" ng-model="experimentOS.address"></textarea>
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
						<input type="text" class="form-control" ng-model="dataOS.projectId">
					</div>
				</div>
				<div class="col-md-6 col-sm-12 col-xs-12">
					<div>
						<label>外包单位</label>
					</div>
					<div>
						<input type="text" class="form-control" ng-model="dataOS.outSourceUnit">
					</div>
				</div>
			</div>
			<div class="row row-margin">
				<div class="col-md-6 col-sm-12 col-xs-12">
					<div>
						<label>联系人</label>
					</div>
					<div>
						<input type="text" class="form-control">
					</div>
				</div>
				<div class="col-md-6 col-sm-12 col-xs-12">
					<div>
						<label>联系人电话</label>
					</div>
					<div>
						<input type="text" class="form-control">
					</div>
				</div>
			</div>
			<div class="row row-margin">
				<div class="col-md-6 col-sm-12 col-xs-12">
					<div>
						<label>地址 </label>
					</div>
					<div>
						<textarea class="form-control" rows="8" ng-model="dataOS.outSourceUnit"></textarea>
					</div>
				</div>
			</div>
			<div id="proStatusBtn" class="row"
				style="margin-top: 30px; display: none">
				<div class="col-md-6 col-sm-12 col-xs-12">
					<button id="btnSave" class="btn btn-default btn-primary"
						ng-click="saveProjectStatus()">保存</button>
					<button id="btnCancel" class="btn btn-default btn-primary">取消</button>
				</div>
			</div>
		</div>
	</div>
</div>