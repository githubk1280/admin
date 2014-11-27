/**
 * 
 */

if($("#modifyBtn").css('display')=="inline-block"){
	$("#advancedAmountStatus1").attr("disabled",true);
	$("#advancedAmountStatus2").attr("disabled",true);
	$("#balancedAmountStatus1").attr("disabled",true);
	$("#balancedAmountStatus2").attr("disabled",true);
}

$("#modifyBtn").click(function(){
	$("#save").css('display','block');
	$("#cancelBtn").css('display','block');
	$("#modifyBtn").css('display','none');
	$("#advancedAmount").attr("readonly",false);
	$("#balancedAmount").attr("readonly",false);
	$("#advancedAmountStatus1").attr("disabled",false);
	$("#advancedAmountStatus2").attr("disabled",false);
	$("#balancedAmountStatus1").attr("disabled",false);
	$("#balancedAmountStatus2").attr("disabled",false);

});

$("#cancelBtn").click(function(){
	$("#save").css('display','none');
	$("#cancelBtn").css('display','none');
	$("#modifyBtn").css('display','block');
	$("#advancedAmount").attr("readonly",true);
	$("#balancedAmount").attr("readonly",true);
	$("#advancedAmountStatus1").attr("disabled",true);
	$("#advancedAmountStatus2").attr("disabled",true);
	$("#balancedAmountStatus1").attr("disabled",true);
	$("#balancedAmountStatus2").attr("disabled",true);
	$("#advancedAmountLbl").hide();
	$("#checkAdvancedAmountLbl").hide();
	$("#advancedAmountComparedTotalAmountLbl").hide();
	$("#balancedAmountLbl").hide();
	$("#checkBalancedAmountLbl").hide();
	$("#balancedAmountComparedTotalAmountLbl").hide();
	
});

$("#save").click(function(){
	$("#save").attr("type","submit");
	var totalAmount = $("#totalAmount").val().replace(/,/g,"");
		totalAmount = $.trim(totalAmount);
		$("#totalAmount").val(totalAmount);
	var advancedAmount = $("#advancedAmount").val().replace(/,/g,"");
		advancedAmount = $.trim(advancedAmount);
		$("#advancedAmount").val(advancedAmount);
	var balancedAmount = $("#balancedAmount").val().replace(/,/g,"");
		balancedAmount = $.trim(balancedAmount);
		$("#balancedAmount").val(balancedAmount);
		
		
		if(balancedAmount.length<1){
			$("#balancedAmountLbl").show();
			//$("#projectName").focus();
			$("#save").attr("type","button");
		}else{
			$("#balancedAmountLbl").hide();
			var tempAmount = $("#balancedAmount").val().replace(/,/g,"");
			var flag = isBalancedAmountNumber(tempAmount);
			if(flag=="success"){
				balancedAmountComapredContractAmount();
			}else{
				$("#balancedAmountComparedTotalAmountLbl").hide();
			}
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
				advancedAmountComapredContractAmount();
			}else{
				$("#advancedAmountComparedTotalAmountLbl").hide();
			}
		}
});

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

function advancedAmountComapredContractAmount(){
	var contractAmount = $("#totalAmount").val().replace(/,/g,"");
	var tempAmount = $("#advancedAmount").val().replace(/,/g,"");
	if(parseInt(tempAmount)>parseInt(contractAmount)){
		$("#advancedAmountComparedTotalAmountLbl").show();
		$("#save").attr("type","button");
	}else{
		$("#advancedAmountComparedTotalAmountLbl").hide();
	}
}

function balancedAmountComapredContractAmount(){
	var contractAmount = $("#totalAmount").val().replace(/,/g,"");
	var tempAmount = $("#balancedAmount").val().replace(/,/g,"");
	if(parseInt(tempAmount)>parseInt(contractAmount)){
		$("#balancedAmountComparedTotalAmountLbl").show();
		$("#save").attr("type","button");
	}else{
		$("#balancedAmountComparedTotalAmountLbl").hide();
	}
}

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

