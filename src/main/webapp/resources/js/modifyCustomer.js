/**
 * 
 */

/****button switch of project basic data start***/
if($("#modifyCustomInfo").css('display')=="inline-block"){
	$("#panelCustomerInfo input").attr("readonly",true);
	$("#panelCustomerInfo textarea").attr("readonly",true);
	$("#customerLevel1").attr("disabled",true);
	$("#customerLevel2").attr("disabled",true);
	$("#customerLevel3").attr("disabled",true);
	
}else{
	$("#panelCustomerInfo input").attr("readonly",false);
	$("#panelCustomerInfo textarea").attr("readonly",false);
}

$("#modifyCustomInfo").click(function(){
	$("#saveCustomInfo").css('display','block');
	$("#cancelCustomInfo").css('display','block');
	$("#modifyCustomInfo").css('display','none');
	$("#panelCustomerInfo input").attr("readonly",false);
	$("#panelCustomerInfo textarea").attr("readonly",false);
	$("#customerLevel1").attr("disabled",false);
	$("#customerLevel2").attr("disabled",false);
	$("#customerLevel3").attr("disabled",false);
	$("#projectIdForCustomerAdd").attr("readonly",true);
	$("#firstCustomerProjectId").attr("readonly",true);
	$("#secondCustomerProjectId").attr("readonly",true);
	
});


$("#cancelCustomInfo").click(function(){
	$("#saveCustomInfo").css('display','none');
	$("#modifyCustomInfo").css('display','block');
	$("#cancelCustomInfo").css('display','none');
	$("#panelCustomerInfo input").attr("readonly",true);
	$("#panelCustomerInfo textarea").attr("readonly",true);
	$("#customerLevel1").attr("disabled",true);
	$("#customerLevel2").attr("disabled",true);
	$("#customerLevel3").attr("disabled",true);
	
	//$("#projectNameLbl").hide();
	
});

$("#saveCustomInfo").click(function(){
	
	$("#saveCustomInfo").attr("type","submit");
	var principalAge = $("#principalAge").val();
		principalAge = $.trim(principalAge);
	var principalPhone = $("#principalPhone").val();
		principalPhone = $.trim(principalPhone);
	var principalCellPhone = $("#principalCellPhone").val();
		principalCellPhone = $.trim(principalCellPhone);
	var principalMail = $("#principalMail").val();
		principalMail = $.trim(principalMail);
	if(principalAge.length>0){
		customerInfo_isPositiveInteger($("#principalAge"));
		
	}
	
	if(principalPhone.length>0){
		customerInfo_isPositiveInteger($("#principalPhone"));
	}
	
	if(principalCellPhone.length>0){
		customerInfo_isPositiveInteger($("#principalCellPhone"));
	}
	
	if(principalMail.length>0){
		isEmail($("#principalMail"));
	}
	
	var firstAge = $("#firstAge").val();
		firstAge = $.trim(firstAge);
	var firstPhone = $("#firstPhone").val();
		firstPhone = $.trim(firstPhone);
	var firstCellphone = $("#firstCellphone").val();
		firstCellphone = $.trim(firstCellphone);
	var firstMail = $("#firstMail").val();
		firstMail = $.trim(firstMail);
	if(firstAge.length>0){
		customerInfo_isPositiveInteger($("#firstAge"));
	}
	
	if(firstPhone.length>0){
		customerInfo_isPositiveInteger($("#firstPhone"));
	}
	
	if(firstCellphone.length>0){
		customerInfo_isPositiveInteger($("#firstCellphone"));
	}
	
	if(firstMail.length>0){
		isEmail($("#firstMail"));
	}
	
	var secondAge = $("#secondAge").val();
		secondAge = $.trim(secondAge);
	var secondPhone = $("#secondPhone").val();
		secondPhone = $.trim(secondPhone);
	var secondCellphone = $("#secondCellphone").val();
		secondCellphone = $.trim(secondCellphone);
	var secondMail = $("#secondMail").val();
		secondMail = $.trim(secondMail);
	if(secondAge.length>0){
		customerInfo_isPositiveInteger($("#secondAge"));
	}
	
	if(secondPhone.length>0){
		customerInfo_isPositiveInteger($("#secondPhone"));
	}
	
	if(secondCellphone.length>0){
		customerInfo_isPositiveInteger($("#secondCellphone"));
	}
	
	if(secondMail.length>0){
		isEmail($("#secondMail"));
	}
	
	
	var saveCustomInfo = $("#saveCustomInfo").attr("type");
	if(saveCustomInfo!="button"){
		$("#modifyCustomInfo").css('display','block');
		$("#saveCustomInfo").css('display','none');
		$("#cancelCustomInfo").css('display','none');
		$("#panelCustomerInfo input").attr("readonly",true);
    	$("#panelCustomerInfo textarea").attr("readonly",true);	
    	$("#customerLevel1").attr("disabled",true);
    	$("#customerLevel2").attr("disabled",true);
    	$("#customerLevel3").attr("disabled",true);
    	$("#principalAgeLbl").hide();
    	$("#principalPhoneLbl").hide();
    	$("#principalCellPhoneLbl").hide();
    	$("#principalMailLbl").hide();
    	$("#firstAgeLbl").hide();
    	$("#firstPhoneLbl").hide();
    	$("#firstCellphoneLbl").hide();
    	$("#firstMailLbl").hide();
    	$("#secondAgeLbl").hide();
    	$("#secondPhoneLbl").hide();
    	$("#secondCellphoneLbl").hide();
    	$("#secondMailLbl").hide();
	}
	
});

$("#cancelCustomInfo").click(function(){
	$("#saveCustomInfo").css('display','none');
	$("#modifyCustomInfo").css('display','block');
	$("#cancelCustomInfo").css('display','none');
	$("#panelCustomerInfo input").attr("readonly",true);
	$("#panelCustomerInfo textarea").attr("readonly",true);
	$("#customerLevel1").attr("disabled",true);
	$("#customerLevel2").attr("disabled",true);
	$("#customerLevel3").attr("disabled",true);
	$("#principalAgeLbl").hide();
	$("#principalPhoneLbl").hide();
	$("#principalCellPhoneLbl").hide();
	$("#principalMailLbl").hide();
	$("#firstAgeLbl").hide();
	$("#firstPhoneLbl").hide();
	$("#firstCellphoneLbl").hide();
	$("#firstMailLbl").hide();
	$("#secondAgeLbl").hide();
	$("#secondPhoneLbl").hide();
	$("#secondCellphoneLbl").hide();
	$("#secondMailLbl").hide();
	
});

/***validate positive number***/
function customerInfo_isPositiveInteger(obj){
	var reg = /^[0-9]*[0-9][0-9]*$/;
	if(obj.attr("id")=="principalAge"){
		if(!reg.test(obj.val())){
			$("#principalAgeLbl").show();
			$("#saveCustomInfo").attr("type","button");
			//return "failed";
		}else{
			$("#principalAgeLbl").hide();
			//return "success";
		};
	}
	if(obj.attr("id")=="principalPhone"){
		if(!reg.test(obj.val())){
			$("#principalPhoneLbl").show();
			$("#saveCustomInfo").attr("type","button");
			//return "failed";
		}else{
			$("#principalPhoneLbl").hide();
			//return "success";
		};
	}
	if(obj.attr("id")=="principalCellPhone"){
		if(!reg.test(obj.val())){
			$("#principalCellPhoneLbl").show();
			$("#saveCustomInfo").attr("type","button");
			//return "failed";
		}else{
			$("#principalCellPhoneLbl").hide();
			//return "success";
		};
	}
	
	if(obj.attr("id")=="firstAge"){
		if(!reg.test(obj.val())){
			$("#firstAgeLbl").show();
			$("#saveCustomInfo").attr("type","button");
			//return "failed";
		}else{
			$("#firstAgeLbl").hide();
			//return "success";
		};
	}
	
	if(obj.attr("id")=="firstPhone"){
		if(!reg.test(obj.val())){
			$("#firstPhoneLbl").show();
			$("#saveCustomInfo").attr("type","button");
			//return "failed";
		}else{
			$("#firstPhoneLbl").hide();
			//return "success";
		};
	}
	
	if(obj.attr("id")=="firstCellphone"){
		if(!reg.test(obj.val())){
			$("#firstCellphoneLbl").show();
			$("#saveCustomInfo").attr("type","button");
			//return "failed";
		}else{
			$("#firstCellphoneLbl").hide();
			//return "success";
		};
	}
	
	if(obj.attr("id")=="secondAge"){
		if(!reg.test(obj.val())){
			$("#secondAgeLbl").show();
			$("#saveCustomInfo").attr("type","button");
			//return "failed";
		}else{
			$("#secondAgeLbl").hide();
			//return "success";
		};
	}
	
	if(obj.attr("id")=="secondPhone"){
		if(!reg.test(obj.val())){
			$("#secondPhoneLbl").show();
			$("#saveCustomInfo").attr("type","button");
			//return "failed";
		}else{
			$("#secondPhoneLbl").hide();
			//return "success";
		};
	}
	
	if(obj.attr("id")=="secondCellphone"){
		if(!reg.test(obj.val())){
			$("#secondCellphoneLbl").show();
			$("#saveCustomInfo").attr("type","button");
			//return "failed";
		}else{
			$("#secondCellphoneLbl").hide();
			//return "success";
		};
	}
	
};

function isEmail(obj){ 
	var reg = /^([a-zA-Z0-9_-])+@([a-zA-Z0-9_-])+(.[a-zA-Z0-9_-])+/; 
	if(obj.attr("id")=="principalMail"){
		if(!reg.test(obj.val())){
			$("#principalMailLbl").show();
			$("#saveCustomInfo").attr("type","button");
		}else{
			$("#principalMailLbl").hide();
		}
	}
	if(obj.attr("id")=="firstMail"){
		if(!reg.test(obj.val())){
			$("#firstMailLbl").show();
			$("#saveCustomInfo").attr("type","button");
		}else{
			$("#firstMailLbl").hide();
		}
	}
	if(obj.attr("id")=="secondMail"){
		if(!reg.test(obj.val())){
			$("#secondMailLbl").show();
			$("#saveCustomInfo").attr("type","button");
		}else{
			$("#secondMailLbl").hide();
		}
	}
	
} 
