<%@page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta name="viewport"
	content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=0" />
<title>学生首页</title>
<%@include file="../com_student/css_script.jsp"%>
</head>

<body>
	<!-- Top line begins -->
	<div id="top">
		<div class="wrapper">
			<a href="${pageContext.request.contextPath }/student/index.action"
				title="" class="logo"><img src="images/logo.png" alt="" /></a>

			<!-- Right top nav -->
			<%@include file="../com_student/righttopnav.jsp"%>

			<!-- Responsive nav -->
			<%@include file="../com_student/nav.jsp"%>
		</div>
	</div>

	<!-- Top line ends -->

	<!-- Sidebar begins -->
	<%@include file="../com_student/sidebar.jsp"%>

	<!-- Content begins -->
	<div id="content">
		<div class="contentTop">
			<span class="pageTitle"><span class="icon-screen"></span>创建加分项</span>
			<div class="clear"></div>
		</div>

		<!-- 添加加分项 -->
		<div id="stuff">
			<div class="sideWidget">
				<form method="post" enctype="multipart/form-data"
					action="${pageContext.request.contextPath }/student/editProfile.action">

					<table>
						<tr>
							<td><label>参加比赛获担任职务名称:</label></td>
							<td colspan="3"><div class="formRow">
									<input type="text" name="name" placeholder="参加比赛获担任职务名称" />
								</div></td>
						</tr>
						<tr>
							<td><label>素质教育加分类别:</label></td>
							<td><div class="formRow">
									<select name="type">
										<option value="opt1">社会服务</option>
										<option value="opt2">志愿服务</option>
										<option value="opt3">比赛获奖</option>
										<option value="opt4">学生干部</option>
									</select>
								</div></td>
							<td><label>级别:</label></td>
							<td><div class="formRow">
									<select name="level">
										<option value="opt1">校级</option>
										<option value="opt2">国家级</option>
									</select>
								</div></td>
						</tr>
						<tr>
							<td><label>时间:</label></td>
							<td><div class="formRow">
									<input type="text" name="time" placeholder="时间" />
								</div></td>
							<td><label>分数:</label></td>
							<td><div class="formRow">
									<input type="text" name="score" placeholder="分数" />
								</div></td>
						</tr>
						<tr>
							<td><label>加分认定:</label></td>
							<td><div class="formRow">
									<select name="level">
										<option value="opt1">校级</option>
										<option value="opt2">国家级</option>
									</select>
								</div></td>
							<td><label>证明文件:</label></td>
							<td><div class="formRow">
									<input type="file" class="fileInput" name="file" id="fileInput" />
								</div></td>
						</tr>
						<tr>
							<td style="text-align:justify;"><label>加分依据:</label></td>
							<td colspan="3"><div class="formRow">
									<textarea rows="8" cols="" name="evidence" placeholder="请阐述。。。"></textarea>
								</div></td>
						</tr>
						<tr>
							<td colspan="4"><div class="formRow">
									<input type="submit" class="buttonS bLightBlue" value="提交" />
								</div></td>
						</tr>
					</table>
				</form>
			</div>
		</div>

	</div>
	<!-- Content ends -->
</body>
</html>
