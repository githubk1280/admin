<!----------------------------------------project status start ------------------------->
							<div class="panel panel-default" ng-controller="projectStatusController">
								<div class="panel-heading">
									<h3 class="panel-title">
										<strong>项目进度</strong> <a data-toggle="collapse"
											href="#collapseTwo" class="panel_a" ng-click="psToggle()"> <span
											id="arrowProStatus" class="glyphicon glyphicon-chevron-down"
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
													<a href="../page/proStatusHistory.html" target="_blank"><label
														id="proStatusHis" class="a-color">项目进度历史 </label></a>
												</div>
											</div>
											<div class="col-md-3 col-sm-12 col-xs-12">
												<div>
													<a id="link_newStatus"><label id="newStatus"
														class="a-color" style="margin-left: -20px;">添加新的进度记录
													</label></a>
												</div>
											</div>
										</div>
										<div class="row row-margin">
											<div class="col-md-6 col-sm-12 col-xs-12">
												<div>
													<label>项目编号</label>
												</div>
												<div>
													<input id="" type="text" class="form-control" ng-model="progress.projectId" value="${project.projectId }">
												</div>
											</div>
										</div>
										<div class="row row-margin">
											<div class="col-md-6 col-sm-12 col-xs-12">
												<div>
													<label>项目当前进度 </label>
												</div>
												<div class="progress">
													<div class="progress-bar progress-bar-danger"
														role="progressbar" aria-valuenow="60" aria-valuemin="0"
														aria-valuemax="100" style="width: {{progress.percentage}}%;">
														<span class="sr-only">{{progress.percentage}}% Complete</span>{{progress.percentage}}%
													</div>
												</div>
											</div>
										</div>
										<!-- add new pro status start  -->
										<div id="proStatusDate" class="row row-margin"
											style="align: center; display: none">
											<div class="col-md-6  col-sm-12 col-xs-12">
												<div>
													<label>进度日期</label>
												</div>
												<div>
													<input id="inputProStatusDate" type="text"
														class="form-control" ng-model="progress.progressDate">
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
														name="percentage" value="60" ng-model="progress.percentage">60% </label> <label><input
														id="radioProStatus3" type="radio" name="optionsRadios6"
														value="90" ng-model="progress.percentage">90% </label> <label><input
														id="radioProStatus4" type="radio" name="percentage"
														value="100" ng-model="progress.percentage">100% </label>
												</div>
											</div>
										</div>
										<div id="proStatusContent" class="row row-margin"
											style="display: none">
											<div class="col-md-6 col-sm-12 col-xs-12">
												<div>
													<label>进度内容 </label>
												</div>
												<div>
													<textarea id="inpuProStatusContent" class="form-control"
														rows="8" cols="4" ng-model="progress.content"></textarea>
												</div>
											</div>
										</div>
										<div id="proStatusBtn" class="row"
											style="margin-top: 30px; display: none">
											<div class="col-md-6 col-sm-12 col-xs-12">
												<button id="btnSave" class="btn btn-default btn-primary" ng-click="saveProjectStatus()">保存</button>
												<button id="btnCancel" class="btn btn-default btn-primary">取消</button>
											</div>
										</div>
										<!-- add new pro status end  -->

									</div>
								</div>
							</div>
							<!----------------------------------------project status end ------------------------->