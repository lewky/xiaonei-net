var xmlrequest;
function createXMLHttpRequest() {

	// 检查浏览器是否支持 XMLHttpRequest对象
	if (window.XMLHttpRequest) {
		// IE7+, Firefox, Chrome, Opera, Safari 浏览器执行代码
		xmlrequest = new XMLHttpRequest();
	} else {
		// IE6, IE5 浏览器执行代码
		xmlrequest = new ActiveXObject("Microsoft.XMLHTTP");
	}

}

//响应用户点击国家
function setCoUnis(o) {
	createXMLHttpRequest();
	if (xmlrequest) {
		// 获取当前页面的路径
		var pageContext = $("#pageContext").val();
		// 准备发送请求
		var req = pageContext + "/ChangeInfo?cid=" + o.id;
		// 打开请求
		xmlrequest.open("get", req, true);
		// 指定处理结果的函数
		xmlrequest.onreadystatechange = getCoUnis;
		// 发送请求
		xmlrequest.send(req);
	}
}

function getCoUnis() {
	if (xmlrequest.readyState == 4) {
		if (xmlrequest.status == 200) {
			var pros = xmlrequest.responseXML.getElementsByTagName("province");
			var con = "<table width='100%'><tr>";
			if (pros.length > 0) {
				for ( var i = 1; i <= pros.length; i++) {
					con += "<td><a onclick='setProUnis(this)' href='javascript:void(0);' id='" + pros[i - 1].childNodes[0].textContent 
							 + "' class='xh'>" + pros[i - 1].childNodes[1].textContent + "</a><span>&nbsp;</span><input type='hidden' id='coId' value='" + pros[i - 1].childNodes[2].textContent + "'></td>";
					if (i % 15 == 0) {
						con += "</tr><tr>";
					}
				}
				con += "</tr></table>";
			} else {
				con = "&nbsp;<a class='xh'>暂未添加省市</a></tr></table>";
			}
			document.getElementById("proTbl").innerHTML = con;

			var unis = xmlrequest.responseXML.getElementsByTagName("uni");
			var con2 = "<table width='100%'><tr><td>";
			for ( var i = 1; i <= unis.length; i++) {
				con2 += "<div class='uniTableDiv'><a onclick='showMyUni(this)' href='javascript:void(0);' id='" + unis[i - 1].childNodes[0].textContent + "' class='xh'>"
						+ unis[i - 1].childNodes[1].textContent + "</a></div>";
				if (i % 3 == 0) {
					con2 += "<br>";
				}
			}
			con2 += "</td></tr></table>";
			document.getElementById("uniTbl").innerHTML = con2;
		}
	}
}

// 响应用户点击省市
function setProUnis(o) {

	createXMLHttpRequest();
	if (xmlrequest) {
		// 获取当前页面的路径
		var pageContext = $("#pageContext").val();
		// 获取国家id
		var coId = $("#coId").val();
		// 准备发送请求
		var req = pageContext + "/ChangeInfo?proid=" + o.id + "&cid=" + coId;
		// 打开请求
		xmlrequest.open("get", req, true);
		// 指定处理结果的函数
		xmlrequest.onreadystatechange = getProUnis;
		// 发送请求
		xmlrequest.send();
	}
}

function getProUnis() {
	// 完成
	if (xmlrequest.readyState == 4) {
		// 成功返回!
		if (xmlrequest.status == 200) {
			// 表示获取unis,并拼接成一个新的大学表格
			var unis = xmlrequest.responseXML.getElementsByTagName("uni");
			var con = "<table width='100%'><tr><td>";
			for ( var i = 1; i <= unis.length; i++) {
				con += "<div class='uniTableDiv'><a onclick='showMyUni(this)' href='javascript:void(0);' id='" + unis[i - 1].childNodes[0].textContent + "' class='xh'>"
						+ unis[i - 1].childNodes[1].textContent + "</a></div>";
				if (i % 3 == 0) {
					con += "<br>";
				}
			}
			con += "</td></tr></table>";
			// 替换成最新的表格
			document.getElementById("uniTbl").innerHTML = con;
		}
	}
}

function showMyUni(o) {
	// 取出被点击的大学的名称
	$("#university").val(o.innerText);
	// 把选择大学的框框关闭
	$("#uniDiv").css("display", "none");
	// 取出被点击的大学的id
	$("#uuniversity").val(o.id);
}

function showUniTbl() {
	$('#uniDiv').show();
}

function closeUniTbl() {
	$('#uniDiv').hide();
}
