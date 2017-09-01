<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
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
							<table width="100%" border="0" cellspacing="0" cellpadding="0"
								class="tblDiv">
								<tr>
									<td colspan="2">
										<img src="${pageContext.request.contextPath }/images/front/photo.gif" />
										<font class="word2"> 编辑相册 - 我 的第一个相册 </font>
										<br />
										<br />
									</td>
								</tr>
								<tr>
									<td style="border-bottom: 1px #3B5888 solid;" valign="bottom">
										&nbsp;&nbsp;
										<span style="background-color: #3B5888">&nbsp; <a
											href="${pageContext.request.contextPath }/addPhoto.jsp?aid=xx" class="xh"
											style="text-decoration: none; color: white;"> 上传新照片</a>&nbsp;</span>&nbsp;
										<span onmouseover="this.style.backgroundColor='#D8DFEA';"
											onmouseout="this.style.backgroundColor='#FFFFFF';">&nbsp;
											<a href="${pageContext.request.contextPath }/editAlbum.jsp?aid=xx" class="xh"
											style="text-decoration: none;"> 编辑相册信息</a>&nbsp;</span>&nbsp;
										<span onmouseover="this.style.backgroundColor='#D8DFEA';"
											onmouseout="this.style.backgroundColor='#FFFFFF';">&nbsp;
											<a href="javascript:void(0);" class="xh"
											style="text-decoration: none;"
											onclick="document.all.divda.style.display=''"> 删除相册</a>&nbsp;</span>
									</td>
									<td align="right" style="border-bottom: 1px #3B5888 solid;"
										valign="bottom">
										<a href="album.do?type=oneAlbum&oid=xx&pageNo=1&aid=xxx"
											class="xh">返回相册</a>
									</td>
								</tr>
								<tr>
									<td valign="top" colspan="2" align="center">
										<form action="${pageContext.request.contextPath }/album.do?flag=oneAlbumUI" method="post"
											enctype="multipart/form-data">
											<table width="80%" cellpadding="5" cellspacing="5">
												<tr>
													<td align="left" rowspan="5" width="20%" valign="top">
														<font class="word3"><b>上传照片：</b> <br /> 你可以上传JPG,
															JPEG, GIF, PNG或BMP文件。</font>
													</td>
													<td>
														<input type="file" name="photo1" class="wby" size="40" />
													</td>
												</tr>
												<tr>
													<td>
														<input type="file" name="photo2" class="wby" size="40" />
													</td>
												</tr>
												<tr>
													<td>
														<input type="file" name="photo3" class="wby" size="40" />
													</td>
												</tr>
												<tr>
													<td>
														<input type="file" name="photo4" class="wby" size="40" />
													</td>
												</tr>
												<tr>
													<td>
														<input type="file" name="photo5" class="wby" size="40" />
													</td>
												</tr>
												<tr>
													<td>
														&nbsp;
														<input type="hidden" name="id" value="${album.id }" />
													</td>
													<td>
														<input type="submit" class="sub" value="上传照片"
															style="width: 100px"/>
														<input type="reset" class="sub" value="取消"
															style="width: 60px"/>
													</td>
												</tr>

												<tr>
													<td align="center" colspan="2">
														<font class="word3">每批上传限制在15MB，如果你上传不了，请试试更小的照片。</font>
													</td>
												</tr>
											</table>
										</form>
									</td>
								</tr>
							</table>
						</td>
						<td valign="top" align="center">
							<img src="${pageContext.request.contextPath }/images/front/photoright.jpg" />
						</td>
					</tr>
				</table>
			</div>
		</div>
		<!-- 引入foot.jsp -->
		<jsp:include page="../public/foot.jsp"></jsp:include>
	</body>
</html>
