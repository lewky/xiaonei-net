<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
	<head>
		<link rel="stylesheet" href="${pageContext.request.contextPath }/css/css/home.css" type="text/css"></link>
		<link rel="stylesheet" href="${pageContext.request.contextPath }/css/css/common.css" type="text/css"></link>
		<script type="text/javascript">
		<!--
		
		function showDoing(){
		 document.getElementById("doing").style.display="";
		}
		
		function hiddenDoing(){
		 document.getElementById("doing").style.display="none";
		}
		
		//-->
		</script>
	</head>
	<body>

		<jsp:include page="/WEB-INF/self/head.jsp"></jsp:include>
		<div class="home_main">
			<div class="types">
				<div class="types_tab">
					<table>
						<tr>
							<td class="word2" colspan="3" align="left">
								&nbsp;应用
							</td>
						</tr>
						<tr>
							<td width="20%">
								<img src="${pageContext.request.contextPath }/images/front/blog.gif" />
							</td>
							<td>
								<a class="yy" href="#">日志</a>
							</td>
							<td>
								<a href="#" class="xh" style="color: #808080">发表</a>
							</td>
						</tr>
						<tr>
							<td>
								<img src="${pageContext.request.contextPath }/images/front/photo.gif" />
							</td>
							<td>
								<a href="${pageContext.request.contextPath }/album.do?flag=myAlbumUI" class="yy">相册</a>
							</td>
							<td>
								<a href="#" class="xh" style="color: #808080">上传</a>
							</td>
						</tr>
						<tr>
							<td>
								<img src="${pageContext.request.contextPath }/images/front/group.gif" />
							</td>
							<td>
								<a href="" class="yy">群组</a>
							</td>
							<td>

							</td>
						</tr>
						<tr>
							<td>
								<img src="${pageContext.request.contextPath }/images/front/share.gif" />
							</td>
							<td>
								<a href="" class="yy">分享</a>
							</td>
							<td>

							</td>
						</tr>
						<tr>
							<td>
								<img src="${pageContext.request.contextPath }/images/front/gift.gif" />
							</td>
							<td>
								<a href="" class="yy">礼物</a>
							</td>
							<td>

							</td>
						</tr>
						<tr>
							<td>
								<img src="${pageContext.request.contextPath }/images/front/toupiao.gif" />
							</td>
							<td>
								<a href="" class="yy">投票</a>
							</td>
							<td>

							</td>
						</tr>
					</table>
				</div>
				<div class="home_ad">
					<img src="${pageContext.request.contextPath }/images/front/homeleft.jpg" />
				</div>
			</div>
			<div class="content">
				<div class="profile">
					<table>
						<tr>
							<td rowspan="3" width="193px">
								<c:if test="${loginUser.photo == 'default.gif'}">
									<img src="${pageContext.request.contextPath }/images/userhead/default.gif" width="150px" height="150px" />
								</c:if>
								<c:if test="${loginUser.photo != 'default.gif'}">
									<img src="${pageContext.request.contextPath }/images/${loginUser.id}/head/${loginUser.photo}" width="150px" height="150px" />
								</c:if>
							</td>
							<td colspan="4" class="word2">
								三少爷
							</td>
						</tr>
						<tr>
							<td colspan="4">
								<span class="word4" id="sudo">目前什么都没做!</span>
								<a class="xh" href="javascript:void(0);" onclick="showDoing()">
									编辑</a>
							</td>
						</tr>
						<tr>
							<td width="83">
								<img src="${pageContext.request.contextPath }/images/front/status.gif" />
								<a class="xh" href="javascript:void(0);" onclick="showDoing()">改状态</a>
							</td>
							<td width="83">
								<img src="${pageContext.request.contextPath }/images/front/blog.gif" />
								<a class="xh" href="writeBlog.jsp">写日志</a>
							</td>
							<td width="83">
								<img src="${pageContext.request.contextPath }/images/front/photo.gif" />
								<a class="xh" href="${pageContext.request.contextPath }/album.do?flag=addAlbumUI">传照片</a>
							</td>
							<td width="83">
								<img src="${pageContext.request.contextPath }/images/front/share.gif" />
								<a class="xh" href="">分享</a>
							</td>
						</tr>
						<tr id="doing" style="display: none;">
							<td colspan="5">
								<input type="text" value="doing some thing.." id="udo" size="30" />
								<input type="submit" value="提交" style="width: 60px" class="sub"
									onclick="fdoing()" />
								<input type="button" value="取消" onclick="hiddenDoing()"
									class="button2" />
							</td>
						</tr>
					</table>
				</div>
				<!-- 留言和回复 -->
				<div class="mes_response">
					<table>
						<tr>
							<td class="word2">
								新留言及回复(2)
							</td>
							<td width="30px">
								<a href="" class="xh">更多</a>
							</td>
						</tr>
						<tr>
							<td>
								<img src="${pageContext.request.contextPath }/images/front/wall_post.gif" />
								<span class="word4">小明 在 体育 回复你</span>
							</td>
							<td>
								<a href="javascript:void(0);" class="xh" onclick="readgt(this)"
									id="留言id号代填"
									onmouseover="this.style.color='#FFFFFF';this.style.backgroundColor='#3B5888'"
									onmouseout="this.style.color='#B1BDD6';this.style.backgroundColor='#FFFFFF'"
									style="color: #B1BDD6; font-weight: bold; text-decoration: none">×</a>
							</td>
						</tr>
						<tr>
							<td>
								<img src="${pageContext.request.contextPath }/images/front/wall_post.gif" />
								<span class="word4">小明 在 体育 回复你</span>
							</td>
							<td>
								<a href="javascript:void(0);" class="xh" onclick="readgt(this)"
									id="留言id号代填"
									onmouseover="this.style.color='#FFFFFF';this.style.backgroundColor='#3B5888'"
									onmouseout="this.style.color='#B1BDD6';this.style.backgroundColor='#FFFFFF'"
									style="color: #B1BDD6; font-weight: bold; text-decoration: none">×</a>
							</td>
						</tr>
						<tr>
							<td>
								<img src="${pageContext.request.contextPath }/images/front/wall_post.gif" />
								<span class="word4">小明 在 体育 回复你</span>
							</td>
							<td>
								<a href="javascript:void(0);" class="xh" onclick="readgt(this)"
									id="留言id号代填"
									onmouseover="this.style.color='#FFFFFF';this.style.backgroundColor='#3B5888'"
									onmouseout="this.style.color='#B1BDD6';this.style.backgroundColor='#FFFFFF'"
									style="color: #B1BDD6; font-weight: bold; text-decoration: none">×</a>
							</td>
						</tr>

					</table>
				</div>
				<!-- 留言和回复 end -->
				<!-- 新鲜事情 start -->
				<div class="new_thing">
					<table>
						<tr>
							<td class="word2">
								新鲜事情()
							</td>
						</tr>
						<tr>
							<td>
								新鲜事情()
							</td>
						</tr>
					</table>
				</div>
				<!-- 新鲜事情 end -->
				<!-- 人气之星 start-->
				<div class="popular">
					<table>
						<tr>
							<td class="STYLE3" align="left" colspan="9">
								首都医科大学 人气之星
							</td>
						</tr>
						<tr>
							<td>
								<a><img src="${pageContext.request.contextPath }/images/userhead/u1.gif" width="55px"
										height="55px" /> </a>
								<a href="profile.do?type=feed&oid=xx" class="xh">三少爷</a>
							</td>
							<td>
								<a><img src="${pageContext.request.contextPath }/images/userhead/u1.gif" width="55px"
										height="55px" /> </a>
								<a href="profile.do?type=feed&oid=xx" class="xh">三少爷</a>
							</td>
							<td>
								<a><img src="${pageContext.request.contextPath }/images/userhead/u1.gif" width="55px"
										height="55px" /> </a>
								<a href="profile.do?type=feed&oid=xx" class="xh">三少爷你</a>
							</td>
							<td>
								<a><img src="${pageContext.request.contextPath }/images/userhead/u1.gif" width="55px"
										height="55px" /> </a>
								<a href="profile.do?type=feed&oid=xx" class="xh">三少爷</a>
							</td>
							<td>
								<a><img src="${pageContext.request.contextPath }/images/userhead/u1.gif" width="55px"
										height="55px" /> </a>
								<a href="profile.do?type=feed&oid=xx" class="xh">三少爷</a>
							</td>
							<td>
								<a><img src="${pageContext.request.contextPath }/images/userhead/u1.gif" width="55px"
										height="55px" /> </a>
								<a href="profile.do?type=feed&oid=xx" class="xh">三少爷</a>
							</td>
							<td>

							</td>
							<td>

							</td>
							<td>

							</td>
						</tr>
					</table>
				</div>
				<!-- 人气之星 end -->

				<!-- 新人 start-->
				<div class="freshman">
					<table>
						<tr>
							<td class="STYLE3" align="left" colspan="9">
								首都医科大学 新人
							</td>
						</tr>
						<tr>
							<td>
								<a><img src="${pageContext.request.contextPath }/images/userhead/u1.gif" width="55px"
										height="55px" /> </a>
								<a href="profile.do?type=feed&oid=xx" class="xh">三少爷</a>
							</td>
							<td>
								<a><img src="${pageContext.request.contextPath }/images/userhead/u1.gif" width="55px"
										height="55px" /> </a>
								<a href="profile.do?type=feed&oid=xx" class="xh">三少爷</a>
							</td>
							<td>
								<a><img src="${pageContext.request.contextPath }/images/userhead/u1.gif" width="55px"
										height="55px" /> </a>
								<a href="profile.do?type=feed&oid=xx" class="xh">三少爷你</a>
							</td>
							<td>
								<a><img src="${pageContext.request.contextPath }/images/userhead/u1.gif" width="55px"
										height="55px" /> </a>
								<a href="profile.do?type=feed&oid=xx" class="xh">三少爷</a>
							</td>
							<td>
								<a><img src="${pageContext.request.contextPath }/images/userhead/u1.gif" width="55px"
										height="55px" /> </a>
								<a href="profile.do?type=feed&oid=xx" class="xh">三少爷</a>
							</td>
							<td>
								<a><img src="${pageContext.request.contextPath }/images/userhead/u1.gif" width="55px"
										height="55px" /> </a>
								<a href="profile.do?type=feed&oid=xx" class="xh">三少爷</a>
							</td>
							<td>

							</td>
							<td>

							</td>
							<td>

							</td>
						</tr>
					</table>
				</div>
			</div>

			<div class="linkman">
				<!-- 最近来访，最多选取六个即可  start-->
				<div class="linkman_last">
					<table>
						<tr>
							<td style="line-height: 25px" colspan="2">
								<span class="STYLE3">最近来访</span>
								<font class="word3">(12)</font>
							</td>
							<td style="line-height: 25px;" align="right">
								<a href="/self/myfoot.jsp" class="xh">更多>></a>
							</td>
						</tr>
						<tr>
							<td>
								<a href="profile.do?type=feed&oid=xx"> <img
										src="${pageContext.request.contextPath }/images/userhead/u14.gif" width="55px" height="55px" /> </a>
								<!-- 如果该人在线，则显示 -->
								<img src="${pageContext.request.contextPath }/images/front/online.gif" />
								<a href="profile.do?type=feed&oid=xx" class="xh">三少爷</a>
								<span class="word3">11月11日<!-- 这是该人加入时间 -->
								</span>
							</td>
							<td>
								<a href="profile.do?type=feed&oid=xx"> <img
										src="${pageContext.request.contextPath }/images/userhead/u14.gif" width="55px" height="55px" /> </a>
								<!-- 如果该人在线，则显示 -->
								<img src="${pageContext.request.contextPath }/images/front/online.gif" />
								<a href="profile.do?type=feed&oid=xx" class="xh">三少爷</a>
								<span class="word3">11月11日<!-- 这是该人加入时间 -->
								</span>
							</td>
							<td>
								<a href="profile.do?type=feed&oid=xx"> <img
										src="${pageContext.request.contextPath }/images/userhead/u14.gif" width="55px" height="55px" /> </a>
								<!-- 如果该人在线，则显示 -->
								<img src="${pageContext.request.contextPath }/images/front/online.gif" />
								<a href="profile.do?type=feed&oid=xx" class="xh">三少爷</a>
								<span class="word3">11月11日<!-- 这是该人加入时间 -->
								</span>
							</td>
						</tr>
						<tr>
							<td>
								<a href="profile.do?type=feed&oid=xx"> <img
										src="${pageContext.request.contextPath }/images/userhead/u14.gif" width="55px" height="55px" /> </a>
								<!-- 如果该人在线，则显示 -->
								<img src="${pageContext.request.contextPath }/images/front/online.gif" />
								<a href="profile.do?type=feed&oid=xx" class="xh">三少爷</a>
								<span class="word3">11月11日<!-- 这是该人加入时间 -->
								</span>
							</td>
							<td>
								<a href="profile.do?type=feed&oid=xx"> <img
										src="${pageContext.request.contextPath }/images/userhead/u14.gif" width="55px" height="55px" /> </a>
								<!-- 如果该人在线，则显示 -->
								<img src="${pageContext.request.contextPath }/images/front/online.gif" />
								<a href="profile.do?type=feed&oid=xx" class="xh">三少爷</a>
								<span class="word3">11月11日<!-- 这是该人加入时间 -->
								</span>
							</td>
							<td>
								<a href="profile.do?type=feed&oid=xx"> <img
										src="${pageContext.request.contextPath }/images/userhead/u14.gif" width="55px" height="55px" /> </a>
								<!-- 如果该人在线，则显示 -->
								<img src="${pageContext.request.contextPath }/images/front/online.gif" />
								<a href="profile.do?type=feed&oid=xx" class="xh">三少爷</a>
								<span class="word3">11月11日<!-- 这是该人加入时间 -->
								</span>
							</td>
						</tr>
					</table>
				</div>
				<!-- 最近来访，最多选取六个即可  end-->

				<!-- 你可能认识的人，最多选取六个即可  start-->
				<div class="may_know">
					<table>
						<tr>
							<td style="line-height: 25px" colspan="2">
								<span class="STYLE3">你可能认识的人</span>
								<font class="word3">(7)</font>
							</td>
							<td style="line-height: 25px;" align="right">
								<a href="/self/myfoot.jsp" class="xh">更多>></a>
							</td>
						</tr>
						<tr>
							<td>
								<a href="profile.do?type=feed&oid=xx"> <img
										src="${pageContext.request.contextPath }/images/userhead/u14.gif" width="55px" height="55px" /> </a>
								<!-- 如果该人在线，则显示 -->
								<img src="${pageContext.request.contextPath }/images/front/online.gif" />
								<a href="profile.do?type=feed&oid=xx" class="xh">三少爷</a>
							</td>
							<td>
								<a href="profile.do?type=feed&oid=xx"> <img
										src="${pageContext.request.contextPath }/images/userhead/u14.gif" width="55px" height="55px" /> </a>
								<!-- 如果该人在线，则显示 -->
								<img src="${pageContext.request.contextPath }/images/front/online.gif" />
								<a href="profile.do?type=feed&oid=xx" class="xh">三少爷</a>
							</td>
							<td>
								<a href="profile.do?type=feed&oid=xx"> <img
										src="${pageContext.request.contextPath }/images/userhead/u14.gif" width="55px" height="55px" /> </a>
								<!-- 如果该人在线，则显示 -->
								<img src="${pageContext.request.contextPath }/images/front/online.gif" />
								<a href="profile.do?type=feed&oid=xx" class="xh">三少爷</a>
							</td>
						</tr>
						<tr>
							<td>
								<a href="profile.do?type=feed&oid=xx"> <img
										src="${pageContext.request.contextPath }/images/userhead/u14.gif" width="55px" height="55px" /> </a>
								<!-- 如果该人在线，则显示 -->
								<img src="${pageContext.request.contextPath }/images/front/online.gif" />
								<a href="profile.do?type=feed&oid=xx" class="xh">三少爷</a>
							</td>
							<td>
								<a href="profile.do?type=feed&oid=xx"> <img
										src="${pageContext.request.contextPath }/images/userhead/u14.gif" width="55px" height="55px" /> </a>
								<!-- 如果该人在线，则显示 -->
								<img src="${pageContext.request.contextPath }/images/front/online.gif" />
								<a href="profile.do?type=feed&oid=xx" class="xh">三少爷</a>
							</td>
							<td>
								<a href="profile.do?type=feed&oid=xx"> <img
										src="${pageContext.request.contextPath }/images/userhead/u14.gif" width="55px" height="55px" /> </a>
								<!-- 如果该人在线，则显示 -->
								<img src="${pageContext.request.contextPath }/images/front/online.gif" />
								<a href="profile.do?type=feed&oid=xx" class="xh">三少爷</a>
							</td>
						</tr>
					</table>
				</div>
				<!-- 你可能认识的人，最多选取六个即可  end-->
				<!-- 好友生日提示，最多选取六个即可  start-->
				<div class="birth_linkman">
					<table>
						<tr>
							<td style="line-height: 25px" colspan="2">
								<span class="STYLE3">好友生日</span>
								<font class="word3">(7)</font>
							</td>
							<td style="line-height: 25px;" align="right">
								<a href="/self/myfoot.jsp" class="xh">更多>></a>
							</td>
						</tr>
						<tr>
							<td>
								<a href="profile.do?type=feed&oid=xx"> <img
										src="${pageContext.request.contextPath }/images/userhead/u14.gif" width="55px" height="55px" /> </a>
								<!-- 如果该人在线，则显示 -->
								<img src="${pageContext.request.contextPath }/images/front/online.gif" />
								<span class="word3">11月11日<!-- 这是该人的生日 -->
								</span>
							</td>
							<td>
								<a href="profile.do?type=feed&oid=xx"> <img
										src="${pageContext.request.contextPath }/images/userhead/u14.gif" width="55px" height="55px" /> </a>
								<!-- 如果该人在线，则显示 -->
								<img src="${pageContext.request.contextPath }/images/front/online.gif" />
								<span class="word3">11月11日<!-- 这是该人的生日 -->
								</span>
							</td>
							<td>
								<a href="profile.do?type=feed&oid=xx"> <img
										src="${pageContext.request.contextPath }/images/userhead/u14.gif" width="55px" height="55px" /> </a>
								<!-- 如果该人在线，则显示 -->
								<img src="${pageContext.request.contextPath }/images/front/online.gif" />
								<span class="word3">11月11日<!-- 这是该人的生日 -->
								</span>
							</td>
						</tr>
						<tr>
							<td>
								<a href="profile.do?type=feed&oid=xx"> <img
										src="${pageContext.request.contextPath }/images/userhead/u14.gif" width="55px" height="55px" /> </a>
								<!-- 如果该人在线，则显示 -->
								<img src="${pageContext.request.contextPath }/images/front/online.gif" />
								<span class="word3">11月11日<!-- 这是该人的生日 -->
								</span>
							</td>
							<td>
								<a href="profile.do?type=feed&oid=xx"> <img
										src="${pageContext.request.contextPath }/images/userhead/u14.gif" width="55px" height="55px" /> </a>
								<!-- 如果该人在线，则显示 -->
								<img src="${pageContext.request.contextPath }/images/front/online.gif" />
								<span class="word3">11月11日<!-- 这是该人的生日 -->
								</span>
							</td>
							<td>
								<a href="profile.do?type=feed&oid=xx"> <img
										src="${pageContext.request.contextPath }/images/userhead/u14.gif" width="55px" height="55px" /> </a>
								<!-- 如果该人在线，则显示 -->
								<img src="${pageContext.request.contextPath }/images/front/online.gif" />
								<span class="word3">11月11日<!-- 这是该人的生日 -->
								</span>
							</td>
						</tr>
					</table>
				</div>
				<!-- 好友生日提示，最多选取六个即可  end-->

				<!-- 在线好友，最多选取六个即可  start-->
				<div class="linkman_online">
					<table>
						<tr>
							<td style="line-height: 25px" colspan="2">
								<span class="STYLE3">在线好友</span>
								<font class="word3">(12)</font>
							</td>
							<td style="line-height: 25px;" align="right">
								<a href="/self/myfoot.jsp" class="xh">更多>></a>
							</td>
						</tr>
						<tr>
							<td>
								<a href="profile.do?type=feed&oid=xx"> <img
										src="${pageContext.request.contextPath }/images/userhead/u14.gif" width="55px" height="55px" /> </a>
								<!-- 如果该人在线，则显示 -->
								<img src="${pageContext.request.contextPath }/images/front/online.gif" />
								<a href="profile.do?type=feed&oid=xx" class="xh">三少爷</a>
							</td>
							<td>
								<a href="profile.do?type=feed&oid=xx"> <img
										src="${pageContext.request.contextPath }/images/userhead/u14.gif" width="55px" height="55px" /> </a>
								<!-- 如果该人在线，则显示 -->
								<img src="${pageContext.request.contextPath }/images/front/online.gif" />
								<a href="profile.do?type=feed&oid=xx" class="xh">三少爷</a>
							</td>
							<td>
								<a href="profile.do?type=feed&oid=xx"> <img
										src="${pageContext.request.contextPath }/images/userhead/u14.gif" width="55px" height="55px" /> </a>
								<!-- 如果该人在线，则显示 -->
								<img src="${pageContext.request.contextPath }/images/front/online.gif" />
								<a href="profile.do?type=feed&oid=xx" class="xh">三少爷</a>
							</td>
						</tr>
						<tr>
							<td>
								<a href="profile.do?type=feed&oid=xx"> <img
										src="${pageContext.request.contextPath }/images/userhead/u14.gif" width="55px" height="55px" /> </a>
								<!-- 如果该人在线，则显示 -->
								<img src="${pageContext.request.contextPath }/images/front/online.gif" />
								<a href="profile.do?type=feed&oid=xx" class="xh">三少爷</a>
							</td>
							<td>
								<a href="profile.do?type=feed&oid=xx"> <img
										src="${pageContext.request.contextPath }/images/userhead/u14.gif" width="55px" height="55px" /> </a>
								<!-- 如果该人在线，则显示 -->
								<img src="${pageContext.request.contextPath }/images/front/online.gif" />
								<a href="profile.do?type=feed&oid=xx" class="xh">三少爷</a>
							</td>
							<td>
								<a href="profile.do?type=feed&oid=xx"> <img
										src="${pageContext.request.contextPath }/images/userhead/u14.gif" width="55px" height="55px" /> </a>
								<!-- 如果该人在线，则显示 -->
								<img src="${pageContext.request.contextPath }/images/front/online.gif" />
								<a href="profile.do?type=feed&oid=xx" class="xh">三少爷</a>
							</td>
						</tr>
					</table>
				</div>
				<!-- 最近来访，最多选取六个即可  end-->
			</div>
		</div>
		<!-- 引入foot.jsp -->
		<jsp:include page="/WEB-INF/public/foot.jsp"></jsp:include>
	</body>
</html>
