<%@page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!-- nav bar -->
<div class="navbar navbar-inverse">
	<div class="navbar-inner">
		<button type="button" class="btn btn-navbar visible-phone"
			id="menu-toggler">
			<span class="icon-bar"></span> <span class="icon-bar"></span> <span
				class="icon-bar"></span>
		</button>

		<a class="brand" href="index.action"><img src="img/logo.png" /></a>
		<ul class="nav pull-right">
			<li class="notification-dropdown hidden-phone"><a href=""
				class="trigger"> <i class="icon-envelope-alt"></i><span
					class="count">1</span>
			</a>
				<div class="pop-dialog">
					<div class="pointer right">
						<div class="arrow"></div>
						<div class="arrow_border"></div>
					</div>
					<div class="body">
						<a href="#" class="close-icon"><i class="icon-remove-sign"></i></a>
						<div class="notifications">
							<h3>您有1条警告消息</h3>
							<a href="#" class="item"> <i class="icon-envelope-alt"></i>
								某某同学完成教学任务 <span class="time"><i class="icon-time"></i>
									28 min.</span>
							</a>
							<div class="footer">
								<a href="#" class="logout">查看所有</a>
							</div>
						</div>
					</div>
				</div></li>
			<li class="dropdown"><a href="#"
				class="dropdown-toggle hidden-phone" data-toggle="dropdown">${user.name }
					老师，您好<b class="caret"></b>
			</a>
				<ul class="dropdown-menu">
					<li><a
						href="${pageContext.request.contextPath }/personalPage.action">我的信息</a></li>
				</ul></li>
			<li class="settings hidden-phone"><a
				href="${pageContext.request.contextPath }/systemSettingPage.action"
				role="button"> <i class="icon-cog"></i>
			</a></li>
			<li class="settings hidden-phone"><a
				href="${pageContext.request.contextPath }/logout.action"
				role="button"> <i class="icon-share-alt"></i>
			</a></li>
		</ul>
	</div>
</div>
<!-- end nav bar -->