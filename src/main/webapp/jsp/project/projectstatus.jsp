<!----------------------------------------project status start ------------------------->
<div id="projectstatusTotalPanel" class="panel panel-default" ng-controller="projectStatusController">
	<div class="panel-heading">
		<h3 class="panel-title">
			<strong>项目进度</strong> <a data-toggle="collapse" href="#collapseTwo"
				class="panel_a" ng-click="psToggle()"> <span id="arrowProStatus"
				class="glyphicon glyphicon-chevron-down"
				style="color: rgb(0, 0, 0);"></span>
			</a>
			<!--  <button id="saveProStatus" value="1" class="btn btn-default btn-success" style="margin-left:10px;">修改</button>
	                                            	<button id="cancelProStatus" value="2" class="btn btn-default btn-success" style="margin-left:10px;display:none">取消</button>-->
		</h3>

	</div>
	<div id="collapseTwo" class="panel-collapse collapse">
		<div id="panelProStatus" class="panel-body">
			<div class="row row-margin">
				<div class="col-md-3 col-sm-12 col-xs-12">
					<div>
					<!-- ng-click="viewProHis()" -->
						<a id="link_proHis" href="<%=request.getContextPath()%>/status/proStatusHistory/${project.projectId}"  target="_blank" ><label
							id="proStatusHis" class="a-color">项目进度历史 </label></a>
					</div>
				</div>
				<div class="col-md-3 col-sm-12 col-xs-12">
					<div>
						<a id="link_newStatus"><label id="newStatus" class="a-color"
							style="margin-left: -20px;">更新项目进度 </label></a>
					</div>
				</div>
			</div>
			<div class="row row-margin">
				<div class="col-md-4 col-sm-12 col-xs-12">
					<div>
						<label>项目编号</label>
					</div>
					<div>
						<input id="" type="text" class="form-control"
							ng-model="progress.projectId" value="${project.projectId }" readonly>
					</div>
				</div>
			</div>
			<div class="row row-margin">
				<div class="col-md-4 col-sm-12 col-xs-12">
					<div>
						<label>项目当前进度 </label> 
					</div>
					<div id="loadingPs" style="display:none">
							<img alt="loading" src="../resources/image/loading.gif">
					</div>
					<div class="progress"> 
						<div id="progressBarStyle" class="progress-bar " role="progressbar"
							aria-valuenow="60" aria-valuemin="0" aria-valuemax="100"
							style="width: {{progress.percentage}}%">
							<span class="sr-only">{{progress.percentage}}% Complete</span>{{progress.percentage}}%
						</div>
					</div>
				</div>
			</div>
			<!-- add new pro status start  -->
			<div id="proStatusDate" class="row row-margin"
				style="align: center; display: none">
				<div class="col-md-4  col-sm-12 col-xs-12">
					<!-- 
					<div>
						<label>进度日期</label>
						<label id="proStatusDateLbl" class="warning-style">该字段不允许为空</label>
						<label id="proStatusDateFormatLbl" class="warning-style">日期格式不正确</label>
						<label id="isproStatusDateLbl" class="warning-style">您输入的日期不存在</label>
					</div>
					 -->
					<div>
						<input id="inputProStatusDate" type="hidden" class="form-control" maxlength="19"
							ng-model="progress.progressDate">
					</div>
				</div>
			</div>
			<div id="proStatusUpdate" class="row row-margin"
				style="display: none">
				<div class="col-md-6 col-sm-12 col-xs-12">
					<div>
						<label>需要修改进度</label>
					</div>
					<div>
						<label><input id="radioProStatus1" type="radio"
							name="percentage" value="30" ng-model="progress.percentage">30%
						</label> <label><input id="radioProStatus2" type="radio"
							name="percentage" value="60" ng-model="progress.percentage">60%
						</label> <label><input id="radioProStatus3" type="radio"
							name="optionsRadios6" value="90" ng-model="progress.percentage">90%
						</label> <label><input id="radioProStatus4" type="radio"
							name="percentage" value="100" ng-model="progress.percentage">100%
						</label>
					</div>
				</div>
			</div>
			<div id="proStatusContent" class="row row-margin"
				style="display: none">
				<div class="col-md-6 col-sm-12 col-xs-12">
					<div>
						<label>进度内容 </label>
						<label id="proStatusContentLbl" class="warning-style">该字段不允许为空</label>
					</div>
					<div>
						<textarea id="inpuProStatusContent" class="form-control" rows="8" ng-model="progress.content"
							cols="4" ></textarea>
					</div>
				</div>
			</div>
			<div class="row row-margin">
				<div class="col-md-6 col-sm-12 col-xs-12">
					<button id="saveProjectStatus" class="btn btn-default btn-primary pull-left" ng-click="saveProjectStatus()" 
					        style="display:none;" type="submit">保存</button>
					<button id="cancelProjectStatus" class="btn btn-default btn-primary pull-left" type="button"  ng-click="cancelProjectStatus()" 
					        style="display:none;margin-left:10px">取消</button>
				</div>
			</div>
			
			<!-- add new pro status end  -->

		</div>
	</div>
</div>
<!----------------------------------------project status end ------------------------->

<script type="text/javascript">
	$("#radioProStatus1").click(function(){
		$("#progressBarStyle").removeClass().addClass("progress-bar progress-bar-danger");
	});
	$("#radioProStatus2").click(function(){
		$("#progressBarStyle").removeClass().addClass("progress-bar progress-bar-warning");
	});
	$("#radioProStatus3").click(function(){
		$("#progressBarStyle").removeClass().addClass("progress-bar progress-bar-primary");
	});
	$("#radioProStatus4").click(function(){
		$("#progressBarStyle").removeClass().addClass("progress-bar progress-bar-success");
	});
	
	$(document).ready(function(){
			$("#saveProjectStatus").click(function(){
				var inpuProStatusContent = $("#inpuProStatusContent").val();
					inpuProStatusContent = $.trim(inpuProStatusContent);
				$("#saveProjectStatus").attr("type","submit");
				if(inpuProStatusContent.length<1){
					$("#proStatusLbl").show();
					//$("#projectName").focus();
					$("#saveProjectStatus").attr("type","button");
				}else{
					$("#proStatusLbl").hide();
				}
			});
	});

</script>