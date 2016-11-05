<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
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
			<span class="pageTitle"><span class="icon-screen"></span>我的同班同学</span>
			<div class="clear"></div>
		</div>

		<!-- Main content -->
		<div style="padding: 22px;">
			<!-- Table with hidden toolbar -->
			<div class="widget">
				<div class="whead">
					<h6>我的同班同学</h6>
					<div class="clear"></div>
				</div>
				<div id="dyn" class="hiddenpars">
					<a class="tOptions" title="Options"><img
						src="images/icons/options" alt="" /></a>
					<table cellpadding="0" cellspacing="0" width="100%"
						class="tDefault">
						<thead>
							<tr>
								<th>序号</th>
								<th>学号</th>
								<th>姓名</th>
								<th>手机</th>
								<th>QQ号</th>
							</tr>
						</thead>
						<tbody>
							<c:forEach var="item" items="${classMate }" varStatus="index">
								<tr
									class=<c:choose><c:when test="${(index.count%2)==0 }">"gradeX"</c:when><c:otherwise>"gradeC"</c:otherwise> </c:choose>>
									<td class="center">${index.count }</td>
									<td class="center">${item.sno }</td>
									<td class="center">${item.name }</td>
									<td class="center">${item.phone }</td>
									<td class="center">${item.qqNumb }</td>
								</tr>
							</c:forEach>
						</tbody>
					</table>
				</div>
				<div class="clear"></div>
			</div>
		</div>
	</div>
	<!-- Content ends -->
</body>
</html>
