/**
 * 

$('#startDate').datetimepicker({
	lang:'ch',
	DateMode:'dmComboBox'
});

 */
$(".form_date").datetimepicker({
	language:"zh-CN",
	minView: "month",
    format: "yyyy-mm-dd",
    todayHighlight:true,
    autoclose: true
});

$("#saveProBasicData").click(function(){
	$("#saveProBasicData").attr("type","submit");
	var proBasicProjectID = $("#proBasicProjectID").val();
//		proBasicProjectID = $(proBasicProjectID);
	//proBasicProjectID
	var projectName = $("#projectName").val();
		projectName = $.trim(projectName);
	var projectType = $("#projectType").val();
		projectType = $.trim(projectType);
	var startDate = $("#startDate").val();
		startDate = $.trim(startDate);
	var endDate = $("#endDate").val();
		endDate = $.trim(endDate);
	var potentialExpenditure = $("#potentialExpenditure").val().replace(/,/g,"");
		potentialExpenditure = $.trim(potentialExpenditure);
		$("#potentialExpenditure").val(potentialExpenditure);
	var sampleCount = $("#sampleCount").val();
		sampleCount = $.trim(sampleCount);
	var platformDemand = $("#platformDemand").val();
		platformDemand = $.trim(platformDemand);
	var researchDirection = $("#researchDirection").val();
		researchDirection = $.trim(researchDirection);
	var projectContent = $("#projectContent").val();
		projectContent = $.trim(projectContent);
	var projectNote = $("#projectNote").val();
		projectNote = $.trim(projectNote);
	/*** give judgement non-null****/
	if(proBasicProjectID.length<1){
		$("#proBasicProjectIDLbl").show();
		//$("#projectName").focus();
		$("#saveProBasicData").attr("type","button");
	}else{
		$("#proBasicProjectIDLbl").hide();
	}
		
	if(projectName.length<1){
		$("#projectNameLbl").show();
		//$("#projectName").focus();
		$("#saveProBasicData").attr("type","button");
	}else{
		$("#projectNameLbl").hide();
	}
	
	if(projectType.length<1){
		$("#projectTypeLbl").show();
		//$("#projectType").focus();
		$("#saveProBasicData").attr("type","button");
	}else{
		$("#projectTypeLbl").hide();
	}
	
	if(startDate.length<1){
		$("#startDateLbl").show();
		//$("#startDate").focus();
		$("#saveProBasicData").attr("type","button");
	}else{
		$("#startDateLbl").hide();
		var flag = isDateFormat($("#startDate"));
		if(flag=="failed"){
			$("#startDate").focus();
		}
	}
	
	if(endDate.length<1){
		$("#endDateLbl").show();
		//$("#endDate").focus();
		$("#saveProBasicData").attr("type","button");
	}else{
		$("#endDateLbl").hide();
		var flag = isDateFormat($("#endDate"));
		if(flag=="success"){
			isEndDateComparedStartDate($("#startDate"),$("#endDate"));
		}else{
			//$("#endDate").focus();
		}
	}
	
	if(potentialExpenditure.length<1){
		$("#potentialExpenditureLbl").show();
		//$("#potentialExpenditure").focus();
		$("#saveProBasicData").attr("type","button");
	}else{
		$("#potentialExpenditureLbl").hide();
		var tempAmount = $("#potentialExpenditure").val().replace(/,/g,"");
		var flag = isAmountNumber(tempAmount);
		if(flag=="failed"){
			//$("#potentialExpenditure").focus();
		}
	}
	
	if(sampleCount.length<1){
		$("#sampleCountLbl").show();
		//$("#sampleCount").focus();
		$("#saveProBasicData").attr("type","button");
	}else{
		$("#sampleCountLbl").hide();
		var flag = isPositiveInteger($("#sampleCount").val());
		if(flag=="failed"){
			//$("#sampleCount").focus();
		}
	}
	
	if(platformDemand.length<1){
		$("#platformDemandLbl").show();
		//$("#platformDemand").focus();
		$("#saveProBasicData").attr("type","button");
	}else{
		$("#platformDemandLbl").hide();
	}
	
	if(researchDirection.length<1){
		$("#researchDirectionLbl").show();
		//$("#researchDirection").focus();
		$("#saveProBasicData").attr("type","button");
	}else{
		$("#researchDirectionLbl").hide();
	}
	
	if(projectContent.length<1){
		$("#projectContentLbl").show();
		//$("#projectContent").focus();
		$("#saveProBasicData").attr("type","button");
	}else{
		$("#projectContentLbl").hide();
	};
	
	var saveProBasicDataType = $("#saveProBasicData").attr("type");
	if(!saveProBasicDataType=="button"){
		$("#modifyProBasicData").css('display','block');
		$("#saveProBasicData").css('display','none');
		$("#cancelProBasicData").css('display','none');
		$("#panelProBasicData input").attr("readonly",true);
    	$("#panelProBasicData textarea").attr("readonly",true);	
	}
	
});

/****format amount field*****/
$("#potentialExpenditure").blur(function(){
	var potentialExpenditure = $("#potentialExpenditure").val().replace(/,/g,"");
	var amount = potentialExpenditure.toString().replace(/(\d)(?=(\d{3})+(?!\d))/g, "$1,");
	$("#potentialExpenditure").val(amount);
});


/***validate number float  dot negative***/
function isAmountNumber(obj){
	var reg = /^(([0-9]+\.[0-9]*[1-9][0-9]*)|([0-9]*[1-9][0-9]*\.[0-9]+)|([0-9]*[1-9][0-9]*))$/;
	if(!reg.test(obj)){
		$("#checkAmountLbl").show();
		$("#saveProBasicData").attr("type","button");
		return "failed";
	}else{
		$("#checkAmountLbl").hide();
		return "success";
	};
};

/***validate positive number***/
function isPositiveInteger(obj){
	var reg = /^[0-9]*[0-9][0-9]*$/;
	if(!reg.test(obj)){
		$("#checkSampleAmountLbl").show();
		$("#saveProBasicData").attr("type","button");
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
		$("#saveProBasicData").attr("type","button");
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
		$("#saveProBasicData").attr("type","button");
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
		$("#saveProBasicData").attr("type","button");
	}else{
		$("#dateComparedLbl").hide();
	}
};