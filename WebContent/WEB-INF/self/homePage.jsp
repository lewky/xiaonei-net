<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
	<head>
		<link rel="stylesheet" href="${pageContext.request.contextPath }/css/css/homePage.css" type="text/css"></link>
		<link rel="stylesheet" href="${pageContext.request.contextPath }/css/css/common.css" type="text/css"></link>
		<script type="text/javascript" src="${pageContext.request.contextPath }/js/common.js"></script>
		<script type="text/javascript">
		<!--
		function opSelf(){
			//显示我的相册和日志
			document.getElementById("mylog").style.display="";
			document.getElementById("myalbum").style.display="";
			//隐藏个人信息
			document.getElementById("myinfo").style.display="none";
			document.getElementById("tdSelf").style.backgroundColor="#FFFFFF";
			document.getElementById("tdInfo").style.backgroundColor="#D8DFEA";
			
			document.getElementById("tdSelf").style.borderBottomColor="#FFFFFF";
			document.getElementById("tdSelf2").style.borderTopColor="#FFFFFF";
			document.getElementById("tdInfo").style.borderBottomColor="#D8DFEA";
			document.getElementById("tdInfo2").style.borderTopColor="#D8DFEA";
			document.getElementById("aSelf").style.color="black";
			document.getElementById("aInfo").style.color="#3B5888";
		}
		function opInfo(){
			//隐藏我的相册和日志
			document.getElementById("mylog").style.display="none";
			document.getElementById("myalbum").style.display="none";
			//显示个人信息
			document.getElementById("myinfo").style.display="";
			document.getElementById("tdSelf").style.backgroundColor="#D8DFEA";
			document.getElementById("tdInfo").style.backgroundColor="#FFFFFF";
			
			document.getElementById("tdSelf").style.borderBottomColor="#D8DFEA";
			document.getElementById("tdSelf2").style.borderTopColor="#D8DFEA";
			document.getElementById("tdInfo").style.borderBottomColor="#FFFFFF";
			document.getElementById("tdInfo2").style.borderTopColor="#FFFFFF";
			
			
			document.getElementById("aSelf").style.color="#3B5888";
			document.getElementById("aInfo").style.color="black";
		}
		
		/*对相册的图片进行特效*/
		function chgImg(o){
			o.style.borderColor="#3B5888";
			$("a"+o.id).style.borderColor="#D8DFEA";
		}

		function chgImg2(o){
			o.style.borderColor="#D8DFEA";
			$("a"+o.id).style.borderColor="#FFFFFF";
		}
		//-->
		</script>
		<style type="text/css">
/*feed链接*/
a.feed:link {
	font-size: 14px;
	color: #3B5888;
	text-decoration: none;
}

a.feed:visited {
	font-size: 14px;
	color: #3B5888;
	text-decoration: none;
}

a.feed:hover {
	font-size: 14px;
	color: #3B5888;
	text-decoration: none;
}

a.feed:active {
	font-size: 14px;
	color: #3B5888;
	text-decoration: none;
}

.feedsp {
	background-color: #D8DFEA;
	font-weight: bold;
	padding: 3px;
	border-top: 2px solid #D8DFEA;
	border-bottom: 2px solid #D8DFEA;
	border-right: 2px solid #FFFFFF;
	border-left: 2px solid #D8DFEA;
}
</style>
	</head>
	<body>

		<jsp:include page="head.jsp"></jsp:include>
		<div class="homePage">
			<div class="homePage_intro">

				<table>
					<tr>
						<td>
							<c:if test="${loginUser.photo == 'default.gif'}">
								<img src="${pageContext.request.contextPath }/images/userhead/default.gif" width="150px" height="150px" />
							</c:if>
							<c:if test="${loginUser.photo != 'default.gif'}">
								<img src="${pageContext.request.contextPath }/images/${loginUser.id}/head/${loginUser.photo}" width="150px" height="150px" />
							</c:if>
						</td>
					</tr>
					<tr>
						<td onmouseover="chgTblusers(this)"
							onmouseover="chgTblusers2(this)" id="editphoto">
							&nbsp;
							<a href="${pageContext.request.contextPath }/profile.do?flag=uploadPhotoUI" class="xh" id="editphotoa">更改我的头像</a>
						</td>
					</tr>
					<tr>
						<td onmouseover="chgTblusers(this)"
							onmouseover="chgTblusers2(this)" id="edit">
							&nbsp;
							<a href="/self/basicInfo.jsp" class="xh" id="edita">编辑我的资料</a>
						</td>
					</tr>
					<tr>
						<td onmouseover="chgTblusers(this)"
							onmouseover="chgTblusers2(this)" id="dress">
							&nbsp;
							<a href="#" class="xh" id=dressa>装扮主页</a>
						</td>
					</tr>
					<tr>
						<td>
							&nbsp;
						</td>
					</tr>
					<tr>
						<td>
							&nbsp;
							<font class="word3">所在网络：</font>清华大学代填
						</td>
					</tr>
					<tr>
						<!-- 如果有生日，则显示 -->
						<td>
							&nbsp;
							<font class="word3">生日：</font>1999-11-11
						</td>
					</tr>
					<tr>
						<!-- 如果有家乡，则显示 -->
						<td>
							&nbsp;
							<font class="word3">家乡：</font> 北京 丰台区
						</td>
					</tr>
					<tr>
						<td>
							&nbsp;
						</td>
					</tr>
				</table>

				<div class="allkinds">
					<img src="${pageContext.request.contextPath }/images/front/profileleft.jpg" />
				</div>
			</div>
			<!-- 各种信息 -->
			<div class="profile">
				<!-- 当前信息 -->
				<div class="curInfo">
					&nbsp;
					<font class="word2">三少爷 </font>&nbsp;
					<img src="${pageContext.request.contextPath }/images/front/star.gif" />
					&nbsp;
					<font class="word4">有（4）人看过</font>&nbsp;
					<font class="word3">什么也没做做 </font>&nbsp;
					<a href="#" class="xh">编辑</a>
				</div>
				<!-- 选择你的操作 -->
				<div class="opers">
					<table align="center" border="0" width="100%" cellspacing="1"
						cellpadding="5">
						<tr>
							<td>
								&nbsp;
							</td>
							<td class="feedsp" id="tdSelf"
								style="background-color: #FFFFFF; border-bottom-color: #FFFFFF; border-spacing: 5px"
								align="center">
								<a href="javascript:void(0);" class="feed" style="color: black;"
									onclick="opSelf()" id="aSelf">个人主页</a>
							</td>
							<td class="feedsp" id="tdInfo" align="center">
								<a href="javascript:void(0);" class="feed" onclick="opInfo()"
									id="aInfo">资料</a>
							</td>
							<td class="feedsp" align="center">
								<a href="/blog.do?type=blog&oid=xx&pageNo=1&year=0&month=0"
									class="feed">日志</a>
							</td>
							<td class="feedsp" align="center">
								<a href="${pageContext.request.contextPath }/album.do?flag=myAlbumUI" class="feed">相册</a>
							</td>
							<td class="feedsp" align="center">
								<a href="#" class="feed">应用</a>
							</td>
							<td width="40%">
								&nbsp;
							</td>
						</tr>
						<tr>
							<td style="border-top: 1px #D8DFEA solid;">
								&nbsp;
							</td>
							<td id="tdSelf2" style="border-top: 1px #FFFFFF solid;">
								&nbsp;
							</td>
							<td id="tdInfo2" style="border-top: 1px #D8DFEA solid;">
								&nbsp;
							</td>
							<td style="border-top: 1px #D8DFEA solid;">
								&nbsp;
							</td>
							<td style="border-top: 1px #D8DFEA solid;">
								&nbsp;
							</td>
							<td style="border-top: 1px #D8DFEA solid;">
								&nbsp;
							</td>
							<td style="border-top: 1px #D8DFEA solid;">
								&nbsp;
							</td>
						</tr>
					</table>
				</div>
				<!-- 选择你的操作 end -->
				<!-- 相册 album start-->
				<div id="myalbum" class="album">
					<table>
						<tr>
							<td align="left" colspan="3">
								<font class="STYLE3">相册</font>
								<a href="/album.do?type=album&oid=xx&pageNo=1" class="xh">（5）</a>
							</td>
							<td align="right">
								<a href="album.do?type=album&oid=xx&pageNo=1" class="xh">查看全部相册</a>
							</td>
						</tr>
						<tr>
							<td>
								<a href="album.do?type=oneAlbum&oid=xx&pageNo=1&aid=xx"
									style="border: 1px #D8DFEA solid;" onmouseover="chgImg(this)"
									onmouseout="chgImg2(this)" id="a100"> <img
										src="${pageContext.request.contextPath }/images/photos/t4.jpg" width="100px" height="75px"
										style="border: 5px #FFFFFF solid;" id="aa100" /> </a>
								<br />
								<b> <a
									href="album.do?type=oneAlbum&oid=|oid|&pageNo=1&aid=|al.getAlId()|"
									class="xh" style="font-weight: bold;">我的相册名</a> </b>
								<br />
								<span class="word4">更新于2010年06月08日</span>
							</td>
							<!-- 这里循环显示最多四个最新更新的相册即可 -->
							<td>
								<a href="album.do?type=oneAlbum&oid=xx&pageNo=1&aid=xx"
									style="border: 1px #D8DFEA solid;" onmouseover="chgImg(this)"
									onmouseout="chgImg2(this)" id="a100"> <img
										src="${pageContext.request.contextPath }/images/photos/t4.jpg" width="100px" height="75px"
										style="border: 5px #FFFFFF solid;" id="aa100" /> </a>
								<br />
								<b> <a
									href="album.do?type=oneAlbum&oid=|oid|&pageNo=1&aid=|al.getAlId()|"
									class="xh" style="font-weight: bold;">我的相册名</a> </b>
								<br />
								<span class="word4">更新于2010年06月08日</span>
							</td>
							<td>
								<a href="album.do?type=oneAlbum&oid=xx&pageNo=1&aid=xx"
									style="border: 1px #D8DFEA solid;" onmouseover="chgImg(this)"
									onmouseout="chgImg2(this)" id="a100"> <img
										src="${pageContext.request.contextPath }/images/photos/t4.jpg" width="100px" height="75px"
										style="border: 5px #FFFFFF solid;" id="aa100" /> </a>
								<br />
								<b> <a
									href="album.do?type=oneAlbum&oid=|oid|&pageNo=1&aid=|al.getAlId()|"
									class="xh" style="font-weight: bold;">我的相册名</a> </b>
								<br />
								<span class="word4">更新于2010年06月08日</span>
							</td>
							<td>
								<a href="album.do?type=oneAlbum&oid=xx&pageNo=1&aid=xx"
									style="border: 1px #D8DFEA solid;" onmouseover="chgImg(this)"
									onmouseout="chgImg2(this)" id="a100"> <img
										src="${pageContext.request.contextPath }/images/photos/t4.jpg" width="100px" height="75px"
										style="border: 5px #FFFFFF solid;" id="aa100" /> </a>
								<br />
								<b> <a
									href="album.do?type=oneAlbum&oid=|oid|&pageNo=1&aid=|al.getAlId()|"
									class="xh" style="font-weight: bold;">我的相册名</a> </b>
								<br />
								<span class="word4">更新于2010年06月08日</span>
							</td>
						</tr>
					</table>
				</div>
				<!-- 相册 album end-->

				<!-- 日志  start-->
				<div id="mylog" class="log">
					<table>
						<tr>
							<td colspan="2">
								<span class="STYLE3">日志</span>
								<a href="" class="xh">(日志篇数)</a>
							</td>
							<td align="right">
								<a href="/blog.do?type=blog&oid=xx&pageNo=1&year=0&month=0"
									class="xh">查看全部日志</a>
							</td>
						</tr>
						<tr>
							<td style="border-bottom: 1px #D8DFEA solid;">
								<img src="${pageContext.request.contextPath }/images/front/blog.gif " />
							</td>
							<td style="border-bottom: 1px #D8DFEA solid;">
								<a href="blog.do?type=read&oid=xx>&aid=xx&pageNo=1" class="xh"
									style="font-weight: bold;">日志的标题</a>
							</td>
							<td align="right" style="border-bottom: 1px #D8DFEA solid;">
								<span class="word4">日志发表的日期2008-11-11</span>
							</td>
						</tr>
						<tr>
							<td style="border-bottom: 1px #D8DFEA solid;">
								<img src="${pageContext.request.contextPath }/images/front/blog.gif " />
							</td>
							<td style="border-bottom: 1px #D8DFEA solid;">
								<a href="blog.do?type=read&oid=xx>&aid=xx&pageNo=1" class="xh"
									style="font-weight: bold;">日志的标题</a>
							</td>
							<td align="right" style="border-bottom: 1px #D8DFEA solid;">
								<span class="word4">日志发表的日期2008-11-11</span>
							</td>
						</tr>
						<tr>
							<td style="border-bottom: 1px #D8DFEA solid;">
								<img src="${pageContext.request.contextPath }/images/front/blog.gif " />
							</td>
							<td style="border-bottom: 1px #D8DFEA solid;">
								<a href="blog.do?type=read&oid=xx>&aid=xx&pageNo=1" class="xh"
									style="font-weight: bold;">日志的标题</a>
							</td>
							<td align="right" style="border-bottom: 1px #D8DFEA solid;">
								<span class="word4">日志发表的日期2008-11-11</span>
							</td>
						</tr>
					</table>
				</div>
				<!--日志 end-->

				<!-- 个人的详细信息，内容比较多，刚开始的时候是不显示 -->
				<div id="myinfo" class="person_info" style="display: none;">
					<table width="100%" border="0" cellspacing="1" cellpadding="1">
						<tr>
							<td width="15%">
								<font class="STYLE3">基本信息</font>
							</td>
							<td>
								&nbsp;
							</td>
						</tr>
						<tr>
							<td>
								<font class="word4">网络：</font>
							</td>
							<td>
								&nbsp;
							</td>
						</tr>

						<tr>
							<td>
								<font class="word4">性别：</font>
							</td>
							<td>
								男
							</td>
						</tr>

						<!-- 如果填写了生日，则显示 -->
						<tr>
							<td>
								<font class="word4">生日：</font>
							</td>
							<td>
								1999-11-11
							</td>
						</tr>
						<!-- 如果有家乡，则显示 -->
						<tr>
							<td>
								<font class="word4">家乡：</font>
							</td>
							<td>
								北京 丰台区
							</td>
						</tr>

					</table>
					<!-- 基本信息 end -->
					<!-- 个人的兴趣爱好 -->
					<table width="100%" border="0" cellspacing="1" cellpadding="1">
						<tr>
							<td width="15%">
								<font class="STYLE3">个人信息</font>
							</td>
							<td>
								&nbsp;
							</td>
						</tr>
						<!-- 如果有兴趣爱好 -->
						<tr>
							<td>
								<font class="word4">兴趣爱好：</font>
							</td>
							<td>
								胡侃, 瞎掰, 电玩, 武侠, 历史, 体育,电 脑, 曲艺, 做梦, 思考
							</td>
						</tr>
						<!-- 如果有喜欢的书籍 -->
						<tr>
							<td>
								<font class="word4">喜欢书籍：</font>
							</td>
							<td>
								笑傲江湖,小李飞刀,三国演义,孙子兵法与三十六计
							</td>
						</tr>
						<!-- 如果有喜欢的音乐 -->
						<tr>
							<td>
								<font class="word4">喜欢音乐：</font>
							</td>
							<td>
								go west, on your mark, 英雄的黎明, 故乡的原风景, Beat JP, My Time To Be A
								Star
							</td>
						</tr>
						<!-- 如果有喜欢的电影 -->
						<tr>
							<td>
								<font class="word4">喜欢电影：</font>
							</td>
							<td>
								勇敢的心, 阿甘正传, 后天, 邵氏电影
							</td>
						</tr>
						<!-- 如果有喜欢的卡通 -->
						<tr>
							<td>
								<font class="word4">喜欢动漫：</font>
							</td>
							<td>
								圣斗士, 柯南, 太空堡垒I, 变形金刚, 足球小将, 灌篮高手, 机器猫, 高智能方程式赛车, 天空战记, 羚羊号历险记
							</td>
						</tr>
						<!-- 如果有喜欢的运动 -->
						<tr>
							<td>
								<font class="word4">喜欢运动：</font>
							</td>
							<td>
								足球, 乒乓球, 篮球, 看球
							</td>
						</tr>
						<!-- 如果有喜欢的游戏 -->
						<tr>
							<td>
								<font class="word4">玩的游戏：</font>
							</td>
							<td>
								WE10, 星际争霸, 无冬之夜2,上 古卷轴4,暗黑破坏神2,魔兽世界
							</td>
						</tr>
						<!-- 如果有加入的社团 -->
						<tr>
							<td>
								<font class="word4">加入社团：</font>
							</td>
							<td>
								清华合唱团
							</td>
						</tr>
					</table>
					<!-- 兴趣爱好结束 -->
					<!-- 联系方式 -->
					<table width="100%" border="0" cellspacing="1" cellpadding="1">
						<tr>
							<td width="15%">
								<font class="STYLE3">联系方式</font>
							</td>
							<td>
								&nbsp;
							</td>
						</tr>
						<!-- 如果有qq -->
						<tr>
							<td width="15%">
								<font class="word4">QQ：</font>
							</td>
							<td>
								888888
							</td>
						</tr>
						<!-- 如果有msn -->
						<tr>
							<td>
								<font class="word4">MSN：</font>
							</td>
							<td>
								hanshunping@sohu.com
							</td>
						</tr>
						<!-- 如果有手机 -->
						<tr>
							<td>
								<font class="word4">手机号：</font>
							</td>
							<td>
								111111111111
							</td>
						</tr>
						<!-- 如果有固定电话 -->
						<tr>
							<td>
								<font class="word4">固定电话：</font>
							</td>
							<td>
								12345678
							</td>
						</tr>
						<!-- 如果有个人网站 -->
						<tr>
							<td>
								<font class="word4">个人网站：</font>
							</td>
							<td>
								http://shunping.sohu.com
							</td>
						</tr>
					</table>
					<!-- 联系方式 end -->
					<!-- 学校信息 -->
					<table width="100%" border="0" cellspacing="1" cellpadding="1">
						<tr>
							<td width="15%">
								<font class="STYLE3">学校信息</font>
							</td>
							<td>
								&nbsp;
							</td>
						</tr>

						<tr>
							<td>
								<font class="word4">大学：</font>
							</td>
							<td>
								&nbsp;
							</td>
						</tr>
						<tr>
							<td>
								<font class="word4">高中：</font>
							</td>
							<td>
								&nbsp;
							</td>
						</tr>
						<tr>
							<td>
								<font class="word4">技校：</font>
							</td>
							<td>
								xx技校
							</td>
						</tr>
						<tr>
							<td>
								<font class="word4">初中：</font>
							</td>
							<td>
								xx初中
							</td>
						</tr>
						<tr>
							<td>
								<font class="word4">小学：</font>
							</td>
							<td>
								xx小学
							</td>
						</tr>
					</table>
					<!-- 学校信息结束 -->
					<!-- 公司信息开始 -->
					<!-- 公司信息结束 -->
					<!-- 加入班级信息开始 -->
					<!-- 加入班级信息 end -->
				</div>

				<!-- 留言本 start -->
				<div class="guessbook">
					<table>
						<tr>
							<td>
								<span class="STYLE3">留言板</span>
							</td>
							<td align="right">
								<a href="profile.do?type=gossip&oid=xxx&pageNo=1" class="xh">所有留言</a>
							</td>
						</tr>
						<tr>
							<td colspan="2">
								<textarea style="width: 500px; font-size: 12px" id="cont"></textarea>
							</td>
						</tr>
						<tr>
							<td>
								<input class="sub" value="留言" type="button"
									onclick="addGossip()" style="width: 60px" />
								<font class="word3">（每条最多2000字）</font>
							</td>
							<td></td>
						</tr>
					</table>
				</div>
				<!-- 留言本 结束 -->
				<!-- 留言的内容，最多显示10条即可 -->
				<div class="mess_con">
					<table>
						<tr>
							<td rowspan="2" width="8%">
								<a href="profile.do?type=feed&oid=xx"> <img
										src="${pageContext.request.contextPath }/images/userhead/u1.gif" width="50px" height="50px" /> </a>
							</td>
							<td>
								<a href="profile.do?type=feed&oid=xx" class="xh">三少爷用户名</a>
								(首都医科大学)&nbsp;
								<font class="word3">留言日期2001-11-11 17:44</font>
							</td>
							<td>
								<a href="javascript:void(0);" class="xh" id="xx"
									onclick="delgossip(this)">删除</a>
							</td>
						</tr>
						<tr>
							<td rowspan="2">
								留言具体内容!!!
							</td>
						</tr>
					</table>
				</div>
				<!-- 留言内容 end -->
				<!-- 留言的内容，最多显示10条即可 -->
				<div class="mess_con">
					<table>
						<tr>
							<td rowspan="2" width="8%">
								<a href="profile.do?type=feed&oid=xx"> <img
										src="${pageContext.request.contextPath }/images/userhead/u1.gif" width="50px" height="50px" /> </a>
							</td>
							<td>
								<a href="profile.do?type=feed&oid=xx" class="xh">三少爷用户名</a>
								(首都医科大学)&nbsp;
								<font class="word3">留言日期2001-11-11 17:44</font>
							</td>
							<td>
								<a href="javascript:void(0);" class="xh" id="xx"
									onclick="delgossip(this)">删除</a>
							</td>
						</tr>
						<tr>
							<td rowspan="2">
								留言具体内容!!!
							</td>
						</tr>
					</table>
				</div>
				<p style="float: right; margin: 15px 10px 0 auto">
					<a href="#">查看全部留言</a>
				</p>
			</div>
			<div class="friend_last">
				<!-- 特别好友列表 -->
				<div class="special_friend">
					<table>
						<tr>
							<td style="line-height: 27px">
								<font class="STYLE3">特别好友</font>
							</td>
							<td>

							</td>
							<td align="right">
								<a href="friend.do?type=hot" class="xh">编辑</a>
							</td>
						</tr>
						<tr>
							<td>
								<a href="profile.do?type=feed&oid=xxx"> <img
										src="${pageContext.request.contextPath }/images/userhead/u1.gif" width="50px" height="50px" />
								</a>
							</td>
							<td>
								<a href="profile.do?type=feed&oid=xx" class="xh">香香</a>
							</td>
							<td>
								<font class="word4">好兄弟讲义气!</font>
							</td>
						</tr>
					</table>
				</div>
				<!-- 特别好友列表 end -->
				<!-- 最近来访人 -->
				<div class="last_visit">
					<table>
						<tr>
							<td align="left" style="line-height: 27px" colspan="3">
								<font class="STYLE3">最近来访</font>
							</td>
							
						</tr>
						<tr>
							<td>
								<a href="profile.do?type=feed&oid=xxx"> <img
										src="${pageContext.request.contextPath }/images/userhead/u1.gif" width="50px" height="50px" />
								</a>
								<a href="profile.do?type=feed&oid=xx" class="xh">香香</a>
							</td>
							<td>
								<a href="profile.do?type=feed&oid=xxx"> <img
										src="${pageContext.request.contextPath }/images/userhead/u1.gif" width="50px" height="50px" />
								</a>
								<a href="profile.do?type=feed&oid=xx" class="xh">香香</a>
							</td>
							<td>
							<a href="profile.do?type=feed&oid=xxx"> <img
										src="${pageContext.request.contextPath }/images/userhead/u1.gif" width="50px" height="50px" />
								</a>
								<a href="profile.do?type=feed&oid=xx" class="xh">香香</a>
							
							</td>
						</tr>
					</table>
				</div>
				<!-- 最近来访 end -->
				<!-- 好友 start -->
				<!-- 最近来访人 -->
				<div class="good_friend">
					<table>
						<tr>
							<td align="left" style="line-height: 27px" colspan="3">
								<font class="STYLE3">好友(11)</font>
							</td>
							
						</tr>
						<tr>
							<td>
								<a href="profile.do?type=feed&oid=xxx"> <img
										src="${pageContext.request.contextPath }/images/userhead/u1.gif" width="50px" height="50px" />
								</a>
								<a href="profile.do?type=feed&oid=xx" class="xh">香香</a>
							</td>
							<td>
								<a href="profile.do?type=feed&oid=xxx"> <img
										src="${pageContext.request.contextPath }/images/userhead/u1.gif" width="50px" height="50px" />
								</a>
								<a href="profile.do?type=feed&oid=xx" class="xh">香香</a>
							</td>
							<td>
							<a href="profile.do?type=feed&oid=xxx"> <img
										src="${pageContext.request.contextPath }/images/userhead/u1.gif" width="50px" height="50px" />
								</a>
								<a href="profile.do?type=feed&oid=xx" class="xh">香香</a>
							
							</td>
						</tr>
					</table>
				</div>
				<!-- 好友 end -->
			</div>
		</div>
		<!-- 引入foot.jsp -->
		<jsp:include page="../public/foot.jsp"></jsp:include>
	</body>
</html>
