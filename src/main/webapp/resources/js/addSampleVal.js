/**
 * 
 */

//reciveDate
//reportDate

$( "#reciveDate" ).datetimepicker({
	lang:'ch',
	timepicker:false,
	onClose:function(){
		var ii = $("#reciveDate").val();
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
			$("#reciveDate").val(formatDate);
		}
	},
	validateOnBlur:false
});

$( "#reportDate" ).datetimepicker({
	lang:'ch',
	timepicker:false,
	onClose:function(){
		var ii = $("#reportDate").val();
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
			$("#reportDate").val(formatDate);
		}
	},
	validateOnBlur:false
});

$("#save").click(function(){
	$("#save").attr("type","submit");
	var projectId = $("#projectIdSelect").val();
		projectId = $.trim(projectId);
	var sourceUnit = $("#sourceUnit").val();
		sourceUnit = $.trim(sourceUnit);
	var samplePrincripal = $("#samplePrincripal").val();
		samplePrincripal = $.trim(samplePrincripal);
	//var projectPrincripal = $("#projectPrincripal").val();
		//projectPrincripal = $.trim(projectPrincripal);
	var sampleCount = $("#sampleCount").val();
		sampleCount = $.trim(sampleCount);
	var deliveryNum = $("#deliveryNum").val();
		deliveryNum = $.trim(deliveryNum);
	var reciveDate = $("#reciveDate").val();
		reciveDate = $.trim(reciveDate);
	var reportDate = $("#reportDate").val();
		reportDate = $.trim(reportDate);
	var location = $("#location").val();
		location = $.trim(location);
	
		/*** give judgement non-null****/
		if(projectId.length<1){
			$("#projectIdLbl").show();
			//$("#projectName").focus();
			$("#save").attr("type","button");
		}else{
			$("#projectIdLbl").hide();
		}
		if(sourceUnit.length<1){
			$("#sourceUnitLbl").show();
			//$("#projectName").focus();
			$("#save").attr("type","button");
		}else{
			$("#sourceUnitLbl").hide();
		}
		
		if(samplePrincripal.length<1){
			$("#samplePrincripalLbl").show();
			//$("#projectName").focus();
			$("#save").attr("type","button");
		}else{
			$("#samplePrincripalLbl").hide();
		}
		/*
		if(projectPrincripal.length<1){
			$("#projectPrincripalLbl").show();
			//$("#projectName").focus();
			$("#save").attr("type","button");
		}else{
			$("#projectPrincripalLbl").hide();
		}
		*/
		if(sampleAmount.length<1){
			$("#sampleAmountLbl").show();
			//$("#projectName").focus();
			$("#save").attr("type","button");
		}else{
			$("#sampleAmountLbl").hide();
			var flag = isPositiveInteger($("#sampleAmount").val());
			if(flag=="failed"){
				//$("#sampleCount").focus();
			}
		}
		if(deliveryNum.length<1){
			$("#deliveryNumLbl").show();
			//$("#projectName").focus();
			$("#save").attr("type","button");
		}else{
			$("#deliveryNumLbl").hide();
		}
		if(reciveDate.length<1){
			$("#reciveDateLbl").show();
			//$("#projectName").focus();
			$("#save").attr("type","button");
		}else{
			$("#reciveDateLbl").hide();
			var flag = isDateFormat($("#reciveDate"));
		}
		if(reportDate.length<1){
			$("#reportDateLbl").show();
			//$("#projectName").focus();
			$("#save").attr("type","button");
		}else{
			$("#reportDateLbl").hide();
			var flag = isDateFormat($("#reportDate"));
		}
		if(location.length<1){
			$("#locationLbl").show();
			//$("#projectName").focus();
			$("#save").attr("type","button");
		}else{
			$("#locationLbl").hide();
		}
});


/***validate positive number***/
function isPositiveInteger(obj){
	var reg = /^[0-9]*[0-9][0-9]*$/;
	if(!reg.test(obj)){
		$("#checkSampleAmountLbl").show();
		$("#save").attr("type","button");
		return "failed";
	}else{
		$("#checkSampleAmountLbl").hide();
		return "success";
	};
};



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
};

/*****validate date effective or not**/
function isDate(dateField){
	var regex = new RegExp("^(?:(?:([0-9]{4}(-|\/)(?:(?:0?[1,3-9]|1[0-2])(-|\/)(?:29|30)|((?:0?[13578]|1[02])(-|\/)31)))|([0-9]{4}(-|\/)(?:0?[1-9]|1[0-2])(-|\/)(?:0?[1-9]|1\\d|2[0-8]))|(((?:(\\d\\d(?:0[48]|[2468][048]|[13579][26]))|(?:0[48]00|[2468][048]00|[13579][26]00))(-|\/)0?2(-|\/)29))))$");
	var dateValue = dateField.val();
	var dateFieldId = dateField.attr("id");
	
	if(!regex.test(dateValue)){
		$("#is"+dateFieldId+"Lbl").show();
		$("#saveProBasicData").attr("type","button");
	}else{
		$("#is"+dateFieldId+"Lbl").hide();
	}
}