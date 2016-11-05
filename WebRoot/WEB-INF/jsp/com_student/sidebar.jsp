<%@page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!-- Sidebar begins -->
<div id="sidebar">
	<div class="mainNav">
		<div class="user">
			<a title="" class="leftUserDrop"><img src="images/user.png"
				alt="" /><span><strong>3</strong></span></a><span>${user.name } 同学</span>
			<ul class="leftUser">
				<li><a href="#" title="" class="sProfile">我的信息</a></li>
				<li><a href="#" title="" class="sMessages">我的通知</a></li>
				<li><a
					href="${pageContext.request.contextPath }/student/settingPage.action"
					title="" class="sSettings">系统设置</a></li>
				<li><a href="${pageContext.request.contextPath }/logout.action"
					title="" class="sLogout">注销登录</a></li>
			</ul>
		</div>

		<!-- Responsive nav -->
		<div class="altNav">
			<div class="userSearch">
				<form action="">
					<input type="text" placeholder="搜索..." name="userSearch" /> <input
						type="submit" value="" />
				</form>
			</div>
		</div>

		<!-- Main nav -->
		<ul class="nav">
			<li><a
				href="${pageContext.request.contextPath }/student/index.action"
				title="" class="active"><img
					src="images/icons/mainnav/dashboard.png" alt="" /><span>主页</span></a></li>
			<li><a
				href="${pageContext.request.contextPath }/student/classMatePage.action"
				title=""><img src="images/icons/mainnav/ui.png" alt="" /><span>同学</span></a></li>
			<li><a
				href="${pageContext.request.contextPath }/student/editProfilePage.action"
				title=""><img src="images/icons/mainnav/forms.png" alt="" /><span>
						编辑</span></a></li>
			<li><a
				href="${pageContext.request.contextPath }/student/scoreMaintainPage.action"
				title=""><img src="images/icons/mainnav/statistics.png" alt="" /><span>成绩</span></a></li>
			<li><a
				href="${pageContext.request.contextPath }/student/settingPage.action"
				title=""><img src="images/icons/mainnav/tables.png" alt="" /><span>设置</span></a>
			</li>
		</ul>
	</div>
</div>
<!-- Sidebar ends -->