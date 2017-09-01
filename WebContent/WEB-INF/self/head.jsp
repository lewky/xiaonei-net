<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<head>
	<link rel="stylesheet" href="${pageContext.request.contextPath }/css/css/common.css" type="text/css"></link>
	<script type="text/javascript">
		<!-- 
		function changeBG(o){
			o.style.backgroundColor="#5C75AA";
		}
		function changeBG2(o){
			o.style.backgroundColor="";
		}
		//-->
	</script>
</head>
		<div class="head">
			<img src="${pageContext.request.contextPath }/images/front/top1.gif" width="713px" />
			<img src="${pageContext.request.contextPath }/images/front/top2.jpg" width="280px" />
			<a href="${pageContext.request.contextPath }/index.jsp"><img src="${pageContext.request.contextPath }/images/front/xnw3.jpg" style="float: left;" /></a>
			<ul class="home_navi">
			<li onmouseover="changeBG(this)" onmouseout="changeBG2(this)"><a class="top" href="${pageContext.request.contextPath }/profile.do?flag=goHomeUI">首页</a></li>
			<li onmouseover="changeBG(this)" onmouseout="changeBG2(this)"><a class="top" href="${pageContext.request.contextPath }/profile.do?flag=goHomePageUI">个人主页</a></li>
			<li onmouseover="changeBG(this)" onmouseout="changeBG2(this)"><a class="top" href="#">修改</a></li>
			<li onmouseover="changeBG(this)" onmouseout="changeBG2(this)"><a class="top" href="#">好友</a></li>
			<li onmouseover="changeBG(this)" onmouseout="changeBG2(this)"><a class="top" href="#">应用</a></li>
			<li onmouseover="changeBG(this)" onmouseout="changeBG2(this)"><a class="top" href="#">邀请</a></li>
			<li onmouseover="changeBG(this)" onmouseout="changeBG2(this)"><a class="top" href="#">班级</a></li>
			<li onmouseover="changeBG(this)" onmouseout="changeBG2(this)"><a class="top" href="#">站内信</a></li>
			<li>搜索</li>
			<li style="width: 170px;"><input type="text" /><img src="${pageContext.request.contextPath }/images/front/sou.jpg" /></li>
			</ul>
			<ul class="navi">
				<li onmouseover="changeBG(this)" onmouseout="changeBG2(this)">
					<a class="anavi" href="#">账号</a>
				</li>
				<li onmouseover="changeBG(this)" onmouseout="changeBG2(this)">
					<a class="anavi" href="#">隐私</a>
				</li>
				<li onmouseover="changeBG(this)" onmouseout="changeBG2(this)">
					<a class="anavi" href="${pageContext.request.contextPath }/login.do?flag=logout">退出</a>
				</li>
			</ul>
		</div>

