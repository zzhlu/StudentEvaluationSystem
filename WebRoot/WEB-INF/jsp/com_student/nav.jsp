<%@page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!-- Responsive nav -->
<!-- 在移动端使用的菜单栏 -->
<ul class="altMenu">
	<li><a
		href="${pageContext.request.contextPath }/student/index.action"
		title="">主页</a></li>
	<li><a href="#" title="" class="exp" id="current">我的成绩</a>
		<ul>
			<li><a
				href="${pageContext.request.contextPath }/student/index.action"
				class="active">Grid</a></li>
			<li><a
				href="${pageContext.request.contextPath }/student/index.action">Custom
					elements</a></li>
			<li><a
				href="${pageContext.request.contextPath }/student/index.action">Experimental</a></li>
		</ul></li>
	<li><a href="#" title="" class="exp">Forms stuff</a>
		<ul>
			<li><a
				href="${pageContext.request.contextPath }/student/index.action">Inputs
					&amp; elements</a></li>
			<li>
		</ul></li>
	<li><a href="${pageContext.request.contextPath }/logout.action"
		title="">注销登录</a></li>
</ul>
<div class="clear"></div>