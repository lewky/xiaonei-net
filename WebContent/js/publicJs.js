//这里我们的一个js 函数库

function changeStatus(obj) {
	if (obj.value == 'worker') {
		$(".gra_spe").hide();
		$(".worker_sep").show();
	} else if (obj.value == 'graduate') {
		// jquery根据class去寻找控件集合
		$(".gra_spe").show();
		$(".worker_sep").hide();
	}
}

function hideNameTip() {
	$("#nameTip").hide();
}

function showNameTip() {
	$("#nameTip").show();
}

// 更换验证码
function changeImg() {
	var path = $("#pageContext").val();
	$("#codeImg").attr("src", path + "/VerificationCodeServlet?" + new Date().getTime());
}

$(function() {
	// 同意协议后才可以进行注册
	$("#agreeReg").click(function() {
		if ($("#agreeReg").is(":checked")) {
			$(".button1").removeAttr("disabled");
		} else {
			$(".button1").attr("disabled", "disabled");
		}
	});

	// 登陆验证
	$("#login").click(function() {
		loginCheck();
	});

});

// 登陆验证方法
function loginCheck() {
	// 邮箱或密码不为空才可以提交表单
	if ($("#loginEmail").val() == "" || $("#loginPwd").val() == "") {
		alert("邮箱或密码不能为空！");
	} else {
		$("#logForm").submit();
	}
}

// 添加键盘监听事件
$(document).keydown(function(event) {
	if (event.which == 13) {
		loginCheck();
	}
});