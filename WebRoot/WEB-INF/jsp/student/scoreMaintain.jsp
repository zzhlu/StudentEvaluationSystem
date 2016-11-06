<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta name="viewport"
	content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=0" />
<title>查看个人成绩</title>
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
			<span class="pageTitle"><span class="icon-screen"></span>我的成绩详情</span>
			<div class="clear"></div>
		</div>
		<!-- Main content -->
		<div class="wrapper">
			<!-- Media table sample -->
			<div class="widget check">
				<div class="whead">
					<span class="titleIcon"><input type="checkbox"
						id="titleCheck" name="titleCheck" /></span>
					<h6>我的加分项</h6>
					<div class="clear"></div>
				</div>
				<table class="tDefault checkAll" id="checkAll">
					<thead style="width: 100%">
						<tr>
							<td style="width: 5%"></td>
							<td style="width: 5%">序号</td>
							<td style="width: 20%">参加比赛或担任职务名称</td>
							<td style="width: 10%">素质教育加分类别</td>
							<td style="width: 10%">时间</td>
							<td style="width: 10%">级别</td>
							<td style="width: 20%">加分依据(获奖证书或相关证明)</td>
							<td style="width: 10%">分数</td>
							<td style="width: 10%">操作</td>
						</tr>
					</thead>
					<tbody>
						<c:forEach var="var" items="${list }" varStatus="index">
							<tr>
								<td><input type="checkbox" name="${var.id }"
									value="${var.id }" /></td>
								<td style="width: 5%">${index.count }</td>
								<td style="width: 5%">${var.name }</td>
								<td style="width: 20%">${var.type }</td>
								<td style="width: 10%">${var.time }</td>
								<td style="width: 10%">${var.level }</td>
								<td style="width: 20%">${var.evidence }</td>
								<td style="width: 10%">${var.score }</td>
								<td class="tableActs" style="width: 10%"><a href="#"
									class="tablectrl_small bDefault tipS" title="删除"><span
										class="iconb" data-icon="&#xe136;"></span></a></td>
							</tr>
						</c:forEach>
					</tbody>
				</table>
			</div>


		</div>



	</div>
	<!-- Content ends -->
</body>
</html>
