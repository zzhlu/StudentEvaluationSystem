<%@page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!-- Right top nav -->
<div class="topNav">
	<ul class="userNav">
		<li><a title="搜索" class="search"></a></li>
		<li><a href="${pageContext.request.contextPath }/logout.action"
			title="注销登录" class="logout"></a></li>
	</ul>
	<a title="" class="iButton"></a> <a title="" class="iTop"></a>
	<div class="topSearch">
		<div class="topDropArrow"></div>
		<form
			action="${pageContext.request.contextPath }/student/index.action">
			<input type="text" placeholder="搜索..." name="topSearch" /> <input
				type="submit" value="" />
		</form>
	</div>
</div>