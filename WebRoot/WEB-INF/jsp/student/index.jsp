<%@page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html >
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
			<span class="pageTitle"><span class="icon-screen"></span>主页</span>
			<div class="clear"></div>
		</div>
	</div>
	<!-- Content ends -->
</body>
</html>
