/**
 * 
 */
$( "#signDate" ).datetimepicker({
			lang:'ch',
			timepicker:false,
			onClose:function(){
				var ii = $("#signDate").val();
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
					$("#signDate").val(formatDate);
				}
			},
			validateOnBlur:false
		});

		$( "#startDate" ).datetimepicker({
			lang:'ch',
			timepicker:false,
			onClose:function(){
				var ii = $("#startDate").val();
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
					$("#startDate").val(formatDate);
				}
			},
			validateOnBlur:false
		});
		
		$( "#endDate" ).datetimepicker({
			lang:'ch',
			timepicker:false,
			onClose:function(){
				var ii = $("#endDate").val();
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
					$("#endDate").val(formatDate);
				}
			},
			validateOnBlur:false
		});
		$( "#advancedPaymentDate" ).datetimepicker({
			lang:'ch',
			timepicker:false,
			onClose:function(){
				var ii = $("#advancedPaymentDate").val();
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
					$("#advancedPaymentDate").val(formatDate);
				}
			},
			validateOnBlur:false
		});
		$( "#balPaymentDate" ).datetimepicker({
			lang:'ch',
			timepicker:false,
			onClose:function(){
				var ii = $("#balPaymentDate").val();
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
					$("#balPaymentDate").val(formatDate);
				}
			},
			validateOnBlur:false
		});

$("#save").click(function(){
	$("#save").attr("type","submit");
	var projectId = $("#projectId").val();
		projectId = $.trim(projectId);
	var signPersonNameB = $("#signPersonNameB").val();
		signPersonNameB = $.trim(signPersonNameB);
	var contractType = $("#contractType").val();
		contractType = $.trim(contractType);
	var contractPaperId = $("#contractPaperId").val();
		contractPaperId = $.trim(contractPaperId);
	var signDate = $("#signDate").val();
		signDate = $.trim(signDate);
	var startDate = $("#startDate").val();
		startDate = $.trim(startDate);
	var endDate = $("#endDate").val();
		endDate = $.trim(endDate);
	var totalAmount = $("#totalAmount").val().replace(/,/g,"");
		totalAmount = $.trim(totalAmount);
		$("#totalAmount").val(totalAmount);
	var advancedAmount = $("#advancedAmount").val().replace(/,/g,"");
		advancedAmount = $.trim(advancedAmount);
		$("#advancedAmount").val(advancedAmount);
	var balancedAmount = $("#balancedAmount").val().replace(/,/g,"");
		balancedAmount = $.trim(balancedAmount);
		$("#balancedAmount").val(balancedAmount);
	
		/*** give judgement non-null****/
		if(projectId.length<1){
			$("#projectIDLbl").show();
			//$("#projectName").focus();
			$("#save").attr("type","button");
		}else{
			$("#projectIDLbl").hide();
		}
		
		if(signPersonNameB.length<1){
			$("#signPersonNameBLbl").show();
			//$("#projectName").focus();
			$("#save").attr("type","button");
		}else{
			$("#signPersonNameBLbl").hide();
		}
		
		if(contractType.length<1){
			$("#contractTypeLbl").show();
			//$("#projectName").focus();
			$("#save").attr("type","button");
		}else{
			$("#contractTypeLbl").hide();
		}
		
		if(contractPaperId.length<1){
			$("#contractPaperIdLbl").show();
			//$("#projectName").focus();
			$("#save").attr("type","button");
		}else{
			$("#contractPaperIdLbl").hide();
		}

		if(signDate.length<1){
			$("#signDateLbl").show();
			//$("#projectName").focus();
			$("#save").attr("type","button");
		}else{
			$("#signDateLbl").hide();
			var flag = isDateFormat($("#signDate"));
		}
		
		if(startDate.length<1){
			$("#startDateLbl").show();
			//$("#projectName").focus();
			$("#save").attr("type","button");
		}else{
			$("#startDateLbl").hide();
			var flag = isDateFormat($("#startDate"));
		}
		
		if(endDate.length<1){
			$("#endDateLbl").show();
			//$("#projectName").focus();
			$("#save").attr("type","button");
		}else{
			$("#endDateLbl").hide();
			var flag = isDateFormat($("#endDate"));
			if(flag=="success"){
				isEndDateComparedStartDate($("#startDate"),$("#endDate"));
			}
		}
		
		if(totalAmount.length<1){
			$("#totalAmountLbl").show();
			//$("#projectName").focus();
			$("#save").attr("type","button");
		}else{
			$("#totalAmountLbl").hide();
			var tempAmount = $("#totalAmount").val().replace(/,/g,"");
			var flag = isTotalAmountNumber(tempAmount);
		}
		
		if(advancedAmount.length<1){
			$("#advancedAmountLbl").show();
			//$("#projectName").focus();
			$("#save").attr("type","button");
		}else{
			$("#advancedAmountLbl").hide();
			var tempAmount = $("#advancedAmount").val().replace(/,/g,"");
			var flag = isAdvancedAmountNumber(tempAmount);
			if(flag=="success"){
				otherAmountComapredContractAmount($("#advancedAmount"));
			}else{
				$("#advancedAmountComparedTotalAmountLbl").hide();
			}
		}
		if(balancedAmount.length<1){
			$("#balancedAmountLbl").show();
			//$("#projectName").focus();
			$("#save").attr("type","button");
		}else{
			$("#balancedAmountLbl").hide();
			var tempAmount = $("#balancedAmount").val().replace(/,/g,"");
			var flag = isBalancedAmountNumber(tempAmount);
			if(flag=="success"){
				otherAmountComapredContractAmount($("#balancedAmount"));
			}else{
				$("#balancedAmountComparedTotalAmountLbl").hide();
			}
		}
	
});


/**validate date format***/
function isDateFormat(dateField){
	var dateFieldId = dateField.attr("id");
	var DATE_FORMAT = /^[0-9]{4}-[0-1]?[0-9]{1}-[0-3]?[0-9]{1}$/;
	if(!DATE_FORMAT.test(dateField.val())){
		$("#"+dateFieldId+"FormatLbl").show();
		$("#save").attr("type","button");
		return "failed";
	}else{
		$("#"+dateFieldId+"FormatLbl").hide();
		isDate(dateField);
		return "success";
	};
}


/*****validate date effective or not**/
function isDate(dateField){
	var regex = new RegExp("^(?:(?:([0-9]{4}(-|\/)(?:(?:0?[1,3-9]|1[0-2])(-|\/)(?:29|30)|((?:0?[13578]|1[02])(-|\/)31)))|([0-9]{4}(-|\/)(?:0?[1-9]|1[0-2])(-|\/)(?:0?[1-9]|1\\d|2[0-8]))|(((?:(\\d\\d(?:0[48]|[2468][048]|[13579][26]))|(?:0[48]00|[2468][048]00|[13579][26]00))(-|\/)0?2(-|\/)29))))$");
	var dateValue = dateField.val();
	var dateFieldId = dateField.attr("id");
	
	if(!regex.test(dateValue)){
		$("#is"+dateFieldId+"Lbl").show();
		$("#save").attr("type","button");
	}else{
		$("#is"+dateFieldId+"Lbl").hide();
	}
}

/**validate endDate>startDate***/
function isEndDateComparedStartDate(startDate,endDate){
	var valueOfStartDate = $.trim(startDate.val());
	var newStartDate = new Date(valueOfStartDate.replace("-","/").replace("-","/"));
	var valueOfEndDate = $.trim(endDate.val());
	var newEndDate = new Date(valueOfEndDate.replace("-","/").replace("-","/"));
	if(newEndDate<=newStartDate){
		$("#dateComparedLbl").show();
		$("#save").attr("type","button");
	}else{
		$("#dateComparedLbl").hide();
	}
};

/***validate number float  dot negative***/
function isTotalAmountNumber(obj){
	var reg = /^(([0-9]+\.[0-9]*[1-9][0-9]*)|([0-9]*[1-9][0-9]*\.[0-9]+)|([0-9]*[1-9][0-9]*))$/;
	if(!reg.test(obj)){
		$("#checkTotalAmountLbl").show();
		$("#save").attr("type","button");
		return "failed";
	}else{
		$("#checkTotalAmountLbl").hide();
		return "success";
	};
};

function isAdvancedAmountNumber(obj){
	var reg = /^(([0-9]+\.[0-9]*[1-9][0-9]*)|([0-9]*[1-9][0-9]*\.[0-9]+)|([0-9]*[1-9][0-9]*))$/;
	if(!reg.test(obj)){
		$("#checkAdvancedAmountLbl").show();
		$("#save").attr("type","button");
		return "failed";
	}else{
		$("#checkAdvancedAmountLbl").hide();
		return "success";
	};
};

function isBalancedAmountNumber(obj){
	var reg = /^(([0-9]+\.[0-9]*[1-9][0-9]*)|([0-9]*[1-9][0-9]*\.[0-9]+)|([0-9]*[1-9][0-9]*))$/;
	if(!reg.test(obj)){
		$("#checkBalancedAmountLbl").show();
		$("#save").attr("type","button");
		return "failed";
	}else{
		$("#checkBalancedAmountLbl").hide();
		return "success";
	};
};

/***validate number float  dot negative***/
function otherAmountComapredContractAmount(obj){
	var contractAmount = $("#totalAmount").val().replace(/,/g,"");
	var tempAmount = obj.val().replace(/,/g,"");
	if(parseInt(tempAmount)>parseInt(contractAmount)){
		var idStr = obj.attr("id");

		if(idStr=="advancedAmount"){
			$("#advancedAmountComparedTotalAmountLbl").show();
		}
		if(idStr="balancedAmount"){
			$("#balancedAmountComparedTotalAmountLbl").show();
		}
		$("#save").attr("type","button");
	}else{
		$("#advancedAmountComparedTotalAmountLbl").hide();
		$("#balancedAmountComparedTotalAmountLbl").hide();
	}
}

/***amount format***/
$("#totalAmount").blur(function(){
	var totalAmount = $("#totalAmount").val().replace(/,/g,"");
	var amount = totalAmount.toString().replace(/(\d)(?=(\d{3})+(?!\d))/g, "$1,");
	$("#totalAmount").val(amount);
});
$("#advancedAmount").blur(function(){
	var advancedAmount = $("#advancedAmount").val().replace(/,/g,"");
	var amount = advancedAmount.toString().replace(/(\d)(?=(\d{3})+(?!\d))/g, "$1,");
	$("#advancedAmount").val(amount);
});
$("#balancedAmount").blur(function(){
	var balancedAmount = $("#balancedAmount").val().replace(/,/g,"");
	var amount = balancedAmount.toString().replace(/(\d)(?=(\d{3})+(?!\d))/g, "$1,");
	$("#balancedAmount").val(amount);
	
});
