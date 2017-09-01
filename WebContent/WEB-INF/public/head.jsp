<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>头部页面</title>
<link rel="stylesheet" href="${pageContext.request.contextPath }/css/head.css" type="text/css">
<link rel="stylesheet" href="${pageContext.request.contextPath }/css/common.css" type="text/css">
<script type="text/javascript">
	<!-- 
	//改变背景颜色
	function changeBg(element){
		element.style.backgroundColor="#5c75aa";
	}
	
	//还原背景颜色
	function changeBg2(element){
		element.style.backgroundColor="";
	}
	//-->
</script>
</head>
<body>
	<div class="head">
		<img class="img_left" alt="" src="${pageContext.request.contextPath }/images/front/top1.gif">
		<img class="img_right" alt="" src="${pageContext.request.contextPath }/images/front/top2.jpg">
		<a href="${pageContext.request.contextPath }/index.jsp"><img alt="" src="${pageContext.request.contextPath }/images/front/xnw3.jpg"></a>
		<ul class="nav">
			<li onmouseover="changeBg(this)" onmouseout="changeBg2(this)"><div><a class="anavi" href="${pageContext.request.contextPath }/register.do?flag=regUI">&nbsp;&nbsp;注册&nbsp;&nbsp;</a></div></li>
			<li onmouseover="changeBg(this)" onmouseout="changeBg2(this)"><a class="anavi" href="#">&nbsp;&nbsp;设为首页&nbsp;&nbsp;</a></li>
			<li onmouseover="changeBg(this)" onmouseout="changeBg2(this)"><a class="anavi" href="#">&nbsp;&nbsp;加入收藏&nbsp;&nbsp;</a></li>
			<li onmouseover="changeBg(this)" onmouseout="changeBg2(this)"><a class="anavi" href="#">&nbsp;&nbsp;帮助&nbsp;&nbsp;</a></li>
		</ul>
	</div>
</body>
</html>