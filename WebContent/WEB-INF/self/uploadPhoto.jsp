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
				<table width="100%" border="0" cellspacing="1" cellpadding="10">
					<tr>
						<td valign="top">
							<div class="divTbl">
								<table width="100%" border="0" cellspacing="1" cellpadding="10"
									class="tblDiv">
									<tr>
										<td valign="bottom">
											<div style="border-bottom: 1px #CCCCCC solid;">
												&nbsp;&nbsp;&nbsp;
												<table border="0" cellspacing="0" cellpadding="2">
													<tr>
														<td>
															&nbsp;&nbsp;
														</td>
														<td class="tblInfo"
															style="border-left: 1px #898989 solid;">
															&nbsp;&nbsp;
															<a href="/self/basicInfo.jsp " class="xh"
																style="color: black">基本信息</a>&nbsp;&nbsp;
														</td>
														<td class="tblInfo">
															&nbsp;&nbsp;
															<a href="/self/contactInfo.jsp" class="xh"
																style="color: black">联系方式</a>&nbsp;&nbsp;
														</td>
														<td class="tblInfo">
															&nbsp;&nbsp;
															<a href="/self/personalInfo.jsp" class="xh"
																style="color: black">个人信息</a>&nbsp;&nbsp;
														</td>
														<td class="tblInfo">
															&nbsp;&nbsp;
															<a href="getReady.do?type=edu" class="xh"
																style="color: black">学校信息</a>&nbsp;&nbsp;
														</td>
														<td class="tblInfo">
															&nbsp;&nbsp;
															<a href="/self/myWorkInfo.jsp" class="xh"
																style="color: black">工作信息</a>&nbsp;&nbsp;
														</td>
														<td class="tblInfo" bgcolor="#6D84B4">
															&nbsp;&nbsp;
															<a href="/self/upload.jsp" class="xh"
																style="color: white">上传头像</a>&nbsp;&nbsp;
														</td>
													</tr>
												</table>
											</div>
										</td>
									</tr>


									<tr>
										<td>
											<form action="${pageContext.request.contextPath }/profile.do?flag=uploadPhoto" method="post"
												enctype="multipart/form-data">
												<table width="100%" border="0" cellspacing="1"
													cellpadding="10">
													<tr>
														<td width="40%">
															&nbsp;
															<font class="word2">当前头像</font>
														</td>
														<td>
															&nbsp;
															<font class="word2">上传头像 </font>
														</td>
													</tr>
													<tr>
														<td valign="top">
															&nbsp;
															<font class="word3">你可以到你的<a href="" class="xh">头像相册</a>里选择照片设置为当前头像</font>
															<br />
															<img src="${pageContext.request.contextPath }/images/${loginUser.id }/head/${loginUser.photo }?abc=<%=Math.random() %>" width="200"
																height="200" />
														</td>
														<td valign="top">
															&nbsp;
															<font class="word3">上传真实头像，成为<a href="" class="xh">星级用户</a>，即可拥有无限量相册空间！</font>
															<br />
															&nbsp;
															<input type="file" class="wby" name="myPhoto" />
															<br />
															&nbsp;
															<font class="word3">支持 JPG、JPEG、GIF、BMP 和 PNG
																文件格式，最大4M。 头像高度超出宽度1.5倍的部分会被切除。</font>
															<br />
															<br />
															<input type="submit" value="上传头像" class="sub" />
														</td>
													</tr>
												</table>
											</form>
										</td>
									</tr>
								</table>
							</div>
						</td>
						<td align="center">
							<img src="${pageContext.request.contextPath }/images/front/selfright.jpg" />
						</td>
					</tr>
				</table>
			</div>
		</div>
		<!-- 引入foot.jsp -->
		<jsp:include page="/WEB-INF/public/foot.jsp"></jsp:include>
	</body>
</html>
