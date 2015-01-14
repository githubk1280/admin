/**
 * 
 */
$(".form_date").datetimepicker({
	language:"zh-CN",
	minView: "month",
    format: "yyyy-mm-dd",
    todayHighlight:true,
    autoclose: true
});



if($("#modifyOutsource").css('display')=="block"){
	$("#panelOutsource input").attr("readonly",true);
	$("#panelOutsource textarea").attr("readonly",true);
	$("#resultReceived1").attr("disabled",true);
	$("#resultReceived2").attr("disabled",true);
	$("#isDelivery1").attr("disabled",true);
	$("#isDelivery2").attr("disabled",true);
	//sendSampleDate
	$( "#sendSampleDate" ).datetimepicker("destroy");
}else{
	$("#panelOutsource input").attr("readonly",false);
	$("#panelOutsource textarea").attr("readonly",false);
	$("#resultReceived1").attr("disabled",false);
	$("#resultReceived2").attr("disabled",false);
	$("#isDelivery1").attr("disabled",false);
	$("#isDelivery2").attr("disabled",false);
	$( "#sendSampleDate" ).datetimepicker({
		lang:'ch',
		timepicker:false,
		onClose:function(){
			var ii = $("#sendSampleDate").val();
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
				$("#sendSampleDate").val(formatDate);
			}
		},
		validateOnBlur:false
	});
}

$("#modifyOutsource").click(function(){
	$("#saveOutsource").css('display','block');
	$("#cancelOutsource").css('display','block');
	$("#modifyOutsource").css('display','none');
	$("#panelOutsource input").attr("readonly",false);
	$("#panelOutsource textarea").attr("readonly",false);
	$("#resultReceived1").attr("disabled",false);
	$("#resultReceived2").attr("disabled",false);
	$("#isDelivery1").attr("disabled",false);
	$("#isDelivery2").attr("disabled",false);
	$("#outsourceProjectID").attr("readonly",true);
	$("#dataProjectID").attr("readonly",true);
	$( "#sendSampleDate" ).datetimepicker({
		lang:'ch',
		timepicker:false,
		onClose:function(){
			var ii = $("#sendSampleDate").val();
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
				$("#sendSampleDate").val(formatDate);
			}
		},
		validateOnBlur:false
	});
});

$("#saveOutsource").click(function(){
	$("#saveOutsource").attr("type","submit");
	var contactPhone = $("#contactPhone").val();
		contactPhone =$.trim(contactPhone);
	var contractAmount = $("#contractAmount").val();
		contractAmount = $.trim(contractAmount);
	var sendSampleDate = $("sendSampleDate").val();
		sendSampleDate = $.trim(sendSampleDate);
	var dataContactPhone = $("#dataContactPhone").val();
		dataContactPhone = $.trim(dataContactPhone);
		
	if(contactPhone.length>0){
		outsource_isPositiveInteger(contactPhone);
	}
	
	if(contractAmount.length>0){
		var tempAmount = $("#contractAmount").val().replace(/,/g,"");
		var flag = outsource_isAmountNumber(tempAmount);
	}
	
	if(sendSampleDate.length>0){
		var flag = outsource_isDateFormat($("#sendSampleDate"));
	}
	
	if(dataContactPhone.length>0){
		outsource_isDataContactPhone_PositiveInteger(dataContactPhone);
	}
	
	var saveOutsourceType = $("#saveOutsource").attr("type");
	if(saveOutsourceType!="button"){
		$("#saveOutsource").css('display','none');
		$("#cancelOutsource").css('display','none');
		$("#modifyOutsource").css('display','block');
		$("#panelOutsource input").attr("readonly",true);
		$("#panelOutsource textarea").attr("readonly",true);
		$("#resultReceived1").attr("disabled",true);
		$("#resultReceived2").attr("disabled",true);
		$("#contactPhoneLbl").hide();
		$("#contractAmountLbl").hide();
		$("#sendSampleDateLbl").hide();
		$("#issendSampleDateLbl").hide();
		$("#dataContactPhoneLbl").hide();
	}
	
});

$("#cancelOutsource").click(function(){
	$("#saveOutsource").css('display','none');
	$("#cancelOutsource").css('display','none');
	$("#modifyOutsource").css('display','block');
	$("#panelOutsource input").attr("readonly",true);
	$("#panelOutsource textarea").attr("readonly",true);
	$("#isDelivery1").attr("disabled",true);
	$("#isDelivery2").attr("disabled",true);
	$("#contactPhoneLbl").hide();
	$("#contractAmountLbl").hide();
	$("#sendSampleDateLbl").hide();
	$("#issendSampleDateLbl").hide();
	$("#dataContactPhoneLbl").hide();
	$( "#sendSampleDate" ).datetimepicker("destroy");
	
});


/***validate positive number***/
function outsource_isPositiveInteger(obj){
	var reg = /^[0-9]*[0-9][0-9]*$/;
	if(!reg.test(obj)){
		$("#contactPhoneLbl").show();
		$("#saveOutsource").attr("type","button");
		return "failed";
	}else{
		$("#contactPhoneLbl").hide();
		return "success";
	};
};

function outsource_isDataContactPhone_PositiveInteger(obj){
	var reg = /^[0-9]*[0-9][0-9]*$/;
	if(!reg.test(obj)){
		$("#dataContactPhoneLbl").show();
		$("#saveOutsource").attr("type","button");
		return "failed";
	}else{
		$("#dataContactPhoneLbl").hide();
		return "success";
	};
};

/***validate number float  dot negative***/
function outsource_isAmountNumber(obj){
	var reg = /^(([0-9]+\.[0-9]*[1-9][0-9]*)|([0-9]*[1-9][0-9]*\.[0-9]+)|([0-9]*[1-9][0-9]*))$/;
	if(!reg.test(obj)){
		$("#contractAmountLbl").show();
		$("#saveOutsource").attr("type","button");
		return "failed";
	}else{
		$("#contractAmountLbl").hide();
		return "success";
	};
};

/**validate date format***/
function outsource_isDateFormat(dateField){
	var dateFieldId = dateField.attr("id");
	var DATE_FORMAT = /^[0-9]{4}-[0-1]?[0-9]{1}-[0-3]?[0-9]{1}$/;
	if(!DATE_FORMAT.test(dateField.val())){
		$("#"+dateFieldId+"FormatLbl").show();
		$("#saveOutsource").attr("type","button");
		return "failed";
	}else{
		$("#"+dateFieldId+"FormatLbl").hide();
		outsource_isDate(dateField);
		return "success";
	};
}

/*****validate date effective or not**/
function outsource_isDate(dateField){
	var regex = new RegExp("^(?:(?:([0-9]{4}(-|\/)(?:(?:0?[1,3-9]|1[0-2])(-|\/)(?:29|30)|((?:0?[13578]|1[02])(-|\/)31)))|([0-9]{4}(-|\/)(?:0?[1-9]|1[0-2])(-|\/)(?:0?[1-9]|1\\d|2[0-8]))|(((?:(\\d\\d(?:0[48]|[2468][048]|[13579][26]))|(?:0[48]00|[2468][048]00|[13579][26]00))(-|\/)0?2(-|\/)29))))$");
	var dateValue = dateField.val();
	var dateFieldId = dateField.attr("id");
	
	if(!regex.test(dateValue)){
		$("#is"+dateFieldId+"Lbl").show();
		$("#saveOutsource").attr("type","button");
	}else{
		$("#is"+dateFieldId+"Lbl").hide();
	}
}

