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



if($("#modifyOutsource").css('display')=="inline-block"){
	$("#panelOutsource input").attr("readonly",true);
	$("#panelOutsource textarea").attr("readonly",true);
	$("#resultReceived1").attr("disabled",true);
	$("#resultReceived2").attr("disabled",true);
	
}else{
	$("#panelOutsource input").attr("readonly",false);
	$("#panelOutsource textarea").attr("readonly",false);
	$("#resultReceived1").attr("disabled",false);
	$("#resultReceived2").attr("disabled",false);
}

$("#modifyOutsource").click(function(){
	$("#saveOutsource").css('display','block');
	$("#cancelOutsource").css('display','block');
	$("#modifyOutsource").css('display','none');
	$("#panelOutsource input").attr("readonly",false);
	$("#panelOutsource textarea").attr("readonly",false);
	$("#resultReceived1").attr("disabled",false);
	$("#resultReceived2").attr("disabled",false);
	$("#outsourceProjectID").attr("readonly",true);
	$("#dataProjectID").attr("readonly",true);
	
});

$("#saveOutsource").click(function(){
	$("#saveOutsource").css('display','none');
	$("#cancelOutsource").css('display','none');
	$("#modifyOutsource").css('display','block');
	$("#panelOutsource input").attr("readonly",true);
	$("#panelOutsource textarea").attr("readonly",true);
	$("#resultReceived1").attr("disabled",true);
	$("#resultReceived2").attr("disabled",true);
	
});

$("#cancelOutsource").click(function(){
	$("#saveOutsource").css('display','none');
	$("#cancelOutsource").css('display','none');
	$("#modifyOutsource").css('display','block');
	$("#panelOutsource input").attr("readonly",true);
	$("#panelOutsource textarea").attr("readonly",true);
	$("#resultReceived1").attr("disabled",true);
	$("#resultReceived2").attr("disabled",true);
	
});