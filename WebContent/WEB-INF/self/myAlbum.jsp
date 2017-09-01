<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>


<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
	<head>
		<link rel="stylesheet" href="${pageContext.request.contextPath }/css/css/updPersonInfo.css" type="text/css"></link>
	</head>
	<body>

		<jsp:include page="head.jsp"></jsp:include>
		<div class="album_main">
			<div class="album_left">
				<table width="80%" style="float: left;" cellspacing="0"
					cellpadding="10">
					<tr>
						<td colspan="2">
							<table width="100%" border="0" cellspacing="5" cellpadding="5">
								<tr>
									<td rowspan="2" width="10%">
										<a href="profile.do?type=feed&oid=xx"><img
												src="${pageContext.request.contextPath }/images/userhead/u1.gif" width="50px" height="50px" />
										</a>
									</td>
									<td>
										<font class="word2"> 我的还是别人的相册</font>
									</td>
								</tr>
								<tr>
									<td>
										<a href="${pageContext.request.contextPath }/album.do?flag=addAlbumUI" class="xh">上传新照片</a>
									</td>
								</tr>
							</table>
						</td>
					</tr>
					<tr>
						<td>
							<font class="word4"> 5 个相册</font>
						</td>
						<td align="right">
							<table border="0">
								<tr>
									<td>
										<font class="word2" style="font-size: 12px">第1页</font>
									</td>
									<td>
										<font class="word2" style="font-size: 12px">共1页</font>
									</td>
									<td>
										<a href="album.do?type=album&pageNo=1&oid=xx" class="xh">
											&lt;&lt; 第一页 </a>
									</td>
									<td>
										...
									</td>
									<td>
										<a href="album.do?type=album&pageNo=xx&oid=xx" class="xh">
											&lt; 上一页</a>
									</td>
								</tr>
							</table>
						</td>
					</tr>


					<tr>


						<td width="80%" valign="top" colspan="2"
							style="border-top: 1px #D8DFEA solid; border-bottom: 1px #D8DFEA solid;">
							<table width="100%" border="0" cellspacing="5" cellpadding="5">
								<tr>
									<td class="tblDiv">

										<table width="100%" border="0" cellspacing="3" cellpadding="1">
											<tr>
												<td valign="top" width="33%">
													<a href="album.do?type=oneAlbum&oid=xx&pageNo=1&aid=xx">
														<img src="${pageContext.request.contextPath }/images/photos/c1.jpg" width="200px"
															height="150px" border="0" /> </a>
												</td>
												<td valign="top">
													<table width="100%" border="0" cellspacing="1"
														cellpadding="1">
														<tr>
															<td>
																<a href="album.do?type=oneAlbum&oid=xx&pageNo=1&aid=xx"
																	class="xh" style="font-weight: bold; font-size: 16px">相册名称
																</a>
															</td>
														</tr>
														<tr>
															<td>
																<font class="word3">2张照片</font>
															</td>
														</tr>

														<tr>
															<td>
																<font class="word3">如果有对相册的评论，这里显示一下 </font>
															</td>
														</tr>

														<tr>
															<td>
																<font class="word3">更新于2001年11月11日 </font>
															</td>
														</tr>
														<tr>
															<td>
																<font class="word3">创建于2001年11月11日 </font>
															</td>
														</tr>
														<tr>
															<td>
																<a href="/xiaonei/editAlbum.jsp?aid=xxx" class="xh">编辑相册</a>
																|
																<a href="album.do?type=oneAlbum&oid=xx&pageNo=1&aid=xx"
																	class="xh">查看相册</a>
															</td>
														</tr>
													</table>
												</td>
											</tr>
											<tr>
												<td valign="top" width="33%">
													<a href="album.do?type=oneAlbum&oid=xx&pageNo=1&aid=xx">
														<img src="${pageContext.request.contextPath }/images/photos/c1.jpg" width="200px"
															height="150px" border="0" /> </a>
												</td>
												<td valign="top">
													<table width="100%" border="0" cellspacing="1"
														cellpadding="1">
														<tr>
															<td>
																<a href="album.do?type=oneAlbum&oid=xx&pageNo=1&aid=xx"
																	class="xh" style="font-weight: bold; font-size: 16px">相册名称
																</a>
															</td>
														</tr>
														<tr>
															<td>
																<font class="word3">2张照片</font>
															</td>
														</tr>

														<tr>
															<td>
																<font class="word3">如果有对相册的评论，这里显示一下 </font>
															</td>
														</tr>

														<tr>
															<td>
																<font class="word3">更新于2001年11月11日 </font>
															</td>
														</tr>
														<tr>
															<td>
																<font class="word3">创建于2001年11月11日 </font>
															</td>
														</tr>
														<tr>
															<td>
																<a href="/xiaonei/editAlbum.jsp?aid=xxx" class="xh">编辑相册</a>
																|
																<a href="album.do?type=oneAlbum&oid=xx&pageNo=1&aid=xx"
																	class="xh">查看相册</a>
															</td>
														</tr>
													</table>
												</td>
											</tr>
											<tr>
												<td valign="top" width="33%">
													<a href="album.do?type=oneAlbum&oid=xx&pageNo=1&aid=xx">
														<img src="${pageContext.request.contextPath }/images/photos/c1.jpg" width="200px"
															height="150px" border="0" /> </a>
												</td>
												<td valign="top">
													<table width="100%" border="0" cellspacing="1"
														cellpadding="1">
														<tr>
															<td>
																<a href="album.do?type=oneAlbum&oid=xx&pageNo=1&aid=xx"
																	class="xh" style="font-weight: bold; font-size: 16px">相册名称
																</a>
															</td>
														</tr>
														<tr>
															<td>
																<font class="word3">2张照片</font>
															</td>
														</tr>

														<tr>
															<td>
																<font class="word3">如果有对相册的评论，这里显示一下 </font>
															</td>
														</tr>

														<tr>
															<td>
																<font class="word3">更新于2001年11月11日 </font>
															</td>
														</tr>
														<tr>
															<td>
																<font class="word3">创建于2001年11月11日 </font>
															</td>
														</tr>
														<tr>
															<td>
																<a href="/xiaonei/editAlbum.jsp?aid=xxx" class="xh">编辑相册</a>
																|
																<a href="album.do?type=oneAlbum&oid=xx&pageNo=1&aid=xx"
																	class="xh">查看相册</a>
															</td>
														</tr>
													</table>
												</td>
											</tr>
											<tr>
												<td valign="top" width="33%">
													<a href="album.do?type=oneAlbum&oid=xx&pageNo=1&aid=xx">
														<img src="${pageContext.request.contextPath }/images/photos/c1.jpg" width="200px"
															height="150px" border="0" /> </a>
												</td>
												<td valign="top">
													<table width="100%" border="0" cellspacing="1"
														cellpadding="1">
														<tr>
															<td>
																<a href="album.do?type=oneAlbum&oid=xx&pageNo=1&aid=xx"
																	class="xh" style="font-weight: bold; font-size: 16px">相册名称
																</a>
															</td>
														</tr>
														<tr>
															<td>
																<font class="word3">2张照片</font>
															</td>
														</tr>

														<tr>
															<td>
																<font class="word3">如果有对相册的评论，这里显示一下 </font>
															</td>
														</tr>

														<tr>
															<td>
																<font class="word3">更新于2001年11月11日 </font>
															</td>
														</tr>
														<tr>
															<td>
																<font class="word3">创建于2001年11月11日 </font>
															</td>
														</tr>
														<tr>
															<td>
																<a href="/xiaonei/editAlbum.jsp?aid=xxx" class="xh">编辑相册</a>
																|
																<a href="album.do?type=oneAlbum&oid=xx&pageNo=1&aid=xx"
																	class="xh">查看相册</a>
															</td>
														</tr>
													</table>
												</td>
											</tr>
										</table>
										<!--  
										如果没有相册,这里显示一句话!
										<font class="word3">xx 还没有相册</font>
										-->
									</td>
								</tr>

							</table>
						</td>

					</tr>
					<tr>
						<td>
							&nbsp;

						</td>
						<td align="right">
							<table>
								<tr>
									<td>
										<font class="word2" style="font-size: 12px">第1页</font>
									</td>
									<td>
										<font class="word2" style="font-size: 12px">共1页</font>
									</td>
									<td>
										<a href="album.do?type=album&pageNo=1&oid=xx" class="xh">
											&lt;&lt; 第一页 </a>
									</td>
									<td>
										...
									</td>
									<td>
										<a href="album.do?type=album&pageNo=xx&oid=xx" class="xh">
											&lt; 上一页</a>
									</td>
								</tr>
							</table>
						</td>
					</tr>

				</table>
				<div
					style="width: 20%; float: left; text-align: center; padding-top: 5px">
					<img src="${pageContext.request.contextPath }/images/front/selfright.jpg" />
				</div>
			</div>
		</div>
		<!-- 引入foot.jsp -->
		<jsp:include page="../public/foot.jsp"></jsp:include>
	</body>
</html>
