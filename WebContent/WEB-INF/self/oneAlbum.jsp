<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core"  prefix="c" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
	<head>
		<link rel="stylesheet" href="${pageContext.request.contextPath }/css/css/updPersonInfo.css" type="text/css"></link>
	</head>
	<body>
		<jsp:include page="head.jsp"></jsp:include>
		<div class="info_main">
			<div class="info_left">
				<table width="100%">
					<tr>
						<td width="80%" valign="top">
							<div class="divTbl">
								<table width="100%" border="0" 
									class="tblDiv">
									<tr>
										<td colspan="2">
											<table width="100%" border="0" >
												<tr>
													<td rowspan="2" width="10%">
														<a href="profile.do?type=feed&oid=xx"><img
																src="${pageContext.request.contextPath }/images/userhead/u1.gif" width="50px" height="50px" /> </a>
													</td>
													<td>
														<font class="word2"> 我 或是 我看的人 的相册</font>
														<font class="word2" style="font-weight: normal"> -
															相册名称 </font>
													</td>
												</tr>
												<tr>
													<td>
														<a href="album.do?type=album&oid=xx&pageNo=1" class="xh">返回我的相册</a>
													</td>
												</tr>
											</table>
										</td>
									</tr>
									<tr>
										<td>
											<font class="word4">第1 -1 张 / 共22张 |</font>
											<a href="/xiaonei/editAlbum.jsp?aid=xxx" class="xh">设置相册</a>
											|
											<a href="/xiaonei/addPhoto.jsp?aid=xxx" class="xh">上传照片</a>

										</td>
										<td align="right">
											<table border="0">
												<tr>
													<td>
														<font class="word2" style="font-size: 12px">第x页</font>
													</td>
													<td>
														<font class="word2" style="font-size: 12px">共x页</font>
													</td>
													<td>
														<a href="album.do?type=oneAlbum&pageNo=1&oid=xx&aid=xx"
															class="xh"> &lt;&lt; 第一页 </a>
													</td>
													<td>
														...
													</td>
													<td>
														<a href="album.do?type=oneAlbum&pageNo=xx&oid=xx&aid=xx"
															class="xh"> &lt; 上一页</a>
													</td>
												</tr>
											</table>
										</td>
									</tr>
									<tr>
										<td valign="top" colspan="2"
											style="border-top: 1px #D8DFEA solid; border-bottom: 1px #D8DFEA solid;">
											<table width="100%">
												<tr>
													<c:forEach var="photo" items="${photoList}" varStatus="vs">
														<td width="20%" align="center">
															<a href="${pageContext.request.contextPath }/album.do?flag=onePhotoUI&pid=xx&oid=xx&aid=xx&pageNo=1"
																style="border: 1px #D8DFEA solid;"
																onmouseover="chgImg(this)" onmouseout="chgImg2(this)"
																id="a x"> <img src="${pageContext.request.contextPath }/images/${loginuser.id }/album/${photo.album.id }/${photo.photo}"
																	width="100px" height="75px" alt="xxxx"
																	style="border: 5px #FFFFFF solid;" id="aa+xxxx" /> </a>
														</td>
														<c:if test="${vs.count%6==0}"></tr><tr></c:if>
													</c:forEach>
												</tr>

											</table>
											<!-- 如果没有照片显示这句话 
											<font class="word3"> 没有照片</font>-->
										</td>
									</tr>
									<tr>
										<td colspan="2">
											<font class="word4">相册描述xxxx</font>
										</td>
									</tr>
									<tr>
										<td>
											&nbsp;
										</td>
										<td align="right">
											<table border="0">
												<tr>
													<td>
														<font class="word2" style="font-size: 12px">第x页</font>
													</td>
													<td>
														<font class="word2" style="font-size: 12px">共x页</font>
													</td>
													<td>
														<a href="album.do?type=oneAlbum&pageNo=1&oid=xx&aid=xx"
															class="xh"> &lt;&lt; 第一页 </a>
													</td>
													<td>
														...
													</td>
													<td>
														<a href="album.do?type=oneAlbum&pageNo=xx&oid=xx&aid=xx"
															class="xh"> &lt; 上一页</a>
													</td>
												</tr>
											</table>
										</td>
									</tr>
								</table>
							</div>
						</td>
						<td valign="top" align="center">
							<img src="${pageContext.request.contextPath }/images/front/albumright.jpg" />
						</td>
					</tr>
				</table>
			</div>
		</div>
		<!-- 引入foot.jsp -->
		<jsp:include page="../public/foot.jsp"></jsp:include>
	</body>
</html>
