<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
	<head>
		<link rel="stylesheet" href="${pageContext.request.contextPath }/css/css/updPersonInfo.css" type="text/css"></link>
	<script type="text/javascript">
	<!--
		var content="";
		var xmlrequest;
		var rrid="";
		var index="";
		var ddid="";
	function delPC(o){
		index = o.parentNode.parentNode.parentNode.parentNode.parentNode.parentNode.rowIndex;
		document.getElementById("divDelPC").style.display="";
		ddid=o.id;
	}

	function canselDel(){
		index = "";
		ddid="";
		document.getElementById("divDelPC").style.display="none";
	}

	function delPC2(){
		//window.alert(aid.substr(1));
		var tbl = document.getElementById("mypc");
		tbl.deleteRow(index);
		
		createXMLHttpRequest();
		if (xmlrequest) {
			var req = "DelPC?id="+ddid;
			xmlrequest.open("get", req, true);
			xmlrequest.onreadystatechange = process2;
			xmlrequest.send(req);
		}
	
	}
	
	//-->
	</script>
	</head>
	<body>

		<jsp:include page="head.jsp"></jsp:include>
		<div class="personal_main">
			<div class="personal_left">
				<table width="100%" border="0" cellspacing="1" cellpadding="10">
					<tr>
						<td>
							<div class="divTbl">
								<table width="100%" cellspacing="0" cellpadding="5"
									class="tblDiv">
									<tr>
										<td colspan="2">
											<font class="word2"> 我 的相册</font>
											<font class="word2" style="font-weight: normal"> -
												相册名称 </font>
										</td>
									</tr>
									<tr>
										<td style="border-bottom: 1px #D8DFEA solid;">
											<font class="word4">第x 张 / 共x 张 | <a
												href="album.do?type=oneAlbum&oid=xx&pageNo=1&aid=xx"
												class="xh"> 返回照片列表</a> </font>
										</td>
										<td style="border-bottom: 1px #D8DFEA solid;" align="right">
											<font class="word4"> <a
												href="album.do?type=onePhoto&pid=xx&oid=xx&aid=xx&pageNo=1"
												class="xh">上一张</a> / <a
												href="album.do?type=onePhoto&pid=xx&oid=xx&aid=xx&pageNo=1"
												class="xh">下一张</a>
											</font>
										</td>
									</tr>
									<tr>
										<td valign="top" colspan="2" align="center">
											<a
												href="album.do?type=onePhoto&pid=xx&oid=xx&aid=xx&pageNo=1">
												<img src="${pageContext.request.contextPath }/images/photos/c1.jpg" alt="点击查看下一张" width="640px"
													height="480px" /> </a>

										</td>

									</tr>


									<tr>
										<td>
											<font class="word4">对相片的评论</font>
										</td>
										<td align="right">
											<font class="word4">来自 我的相册：</font>
											<br/>
										</td>
									</tr>


									<tr>
										<td style="border-bottom: 1px #DDDDDD solid;">
											<font class="word3"> 上传于2010年06月06日 </font>
										</td>
										<td style="border-bottom: 1px #DDDDDD solid;" align="right">
											<font class="word3"> 浏览(1) | 评论(11) </font>
										</td>
									</tr>
									<tr>
										<td colspan="2">
											<table width="100%" cellspacing="0"
												cellpadding="5" id="mypc">
												<!-- 留言内容 start -->
												<tr>
													<td style="border-bottom: 1px #D8DFEA solid;">
														<table width="100%" border="0" cellspacing="1"
															cellpadding="3">
															<tr>
																<td rowspan="2" width="8%">
																	<a href="profile.do?type=feed&oid=xx"> <img
																			src="${pageContext.request.contextPath }/images/userhead/u1.gif" width="50px"
																			height="50px" />
																	</a>
																</td>
																<td>
																	<a href="profile.do?type=feed&oid=xx" class="xh">留言人名字</a>

																</td>
																<td align="right" width="25%">
																	<font class="word3">2010-06-09 22:30 </font>&nbsp;
																	<a href="javascript:void(0);" class="xh" id="xx"
																		onclick="delPC(this)">删除</a>
																</td>
															</tr>
															<tr>
																<td colspan="2">
																	<font class="word4">留言具体内容...</font>
																</td>
															</tr>
														</table>
													</td>
												</tr>
												<!-- 留言内容 end -->
											</table>
										</td>
									</tr>
									<tr>
										<td align="right" colspan="2">
											<table>
												<tr>
													<td>
														<font class="word2" style="font-size: 12px">第xx页</font>
													</td>
													<td>
														<font class="word2" style="font-size: 12px">共xx页</font>
													</td>

													<td>
														<a
															href="album.do?type=onePhoto&pid=xx&oid=xx&aid=xx&pageNo=1"
															class="xh"> &lt;&lt; 第一页 </a>
													</td>
													<td>
														...
													</td>
													<td>
														<a
															href="album.do?type=onePhoto&pid=xx&oid=xx&aid=xx&pageNo=xx"
															class="xh"> &lt; 上一页</a>
													</td>
												</tr>
											</table>
										</td>
									</tr>
									<tr>
										<td colspan="2">
											<table width="100%"  cellspacing="1"
												cellpadding="5">
												<tr>
													<td colspan="2">
														<textarea class="wbq" style="width: 600px" id="cont"></textarea>
													</td>
												</tr>
												<tr>
													<td>
														<input class="sub" value="发表评论" type="button"
															onclick="addPC()" style="width: 100px" />
													</td>
													<td>
														&nbsp;
													</td>
												</tr>
											</table>
										</td>
									</tr>

								</table>
							</div>
						</td>
						<td align="center" valign="top">
							<img src="${pageContext.request.contextPath }/images/front/photoright.jpg" />
						</td>
					</tr>
				</table>
			</div>
		</div>
		<!-- 引入foot.jsp -->
		<jsp:include page="../public/foot.jsp"></jsp:include>
		<!-- 提示是否真的删除 start -->
		<div id="divDelPC" style="border: 9px #878787 solid ;width: 400px;display: none;top: 700px;left: 400px;position: absolute;">
			<table  width="400px" style="line-height: 27px;" cellspacing="0" cellpadding="10px">
				<tr>
					<td   style="color: white;background-color: #6D84B4;font-size: 14px;"> <b>删除评论</b></td>
				</tr>
				<tr style="border-bottom:1px #CCCCCC solid;background-color:#FFFFFF" class="word4">
					<td>你确定要删除这条评论吗？</td>
				</tr>
				<tr>
					<td  align="right" bgcolor="#F7F3FF" >
						<input type="button" onclick="delPC2()" value="确定" style="color: white;background-color: #3B5888;padding: 3px; width: 60px"  />
						<input type="button" onclick="canselDel()"  value="取消"  style="color: black;background-color: #white;padding: 3px; width: 60px"/>
					</td>
				</tr>
			</table>
		</div>
		<!-- 提示是否真的删除 end -->
	</body>
</html>
