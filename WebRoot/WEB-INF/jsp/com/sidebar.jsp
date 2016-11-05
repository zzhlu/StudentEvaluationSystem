<%@page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!-- side bar -->
<div id="sidebar-nav">
	<ul id="dashboard-menu">
		<li class="active">
			<div class="pointer">
				<div class="arrow"></div>
				<div class="arrow_border"></div>
			</div> <a href="${pageContext.request.contextPath }/index.action"> <i
				class="icon-home"></i> <span>首页</span>
		</a>
		</li>
		<li><a
			href="${pageContext.request.contextPath }/scoreCheck.action"> <i
				class="icon-signal"></i> <span>成绩查阅</span>
		</a></li>
		<li><a class="dropdown-toggle" href="#"> <i
				class="icon-group"></i> <span>学生管理</span> <i
				class="icon-chevron-down"></i>
		</a>
			<ul class="submenu">
				<li><a
					href="${pageContext.request.contextPath }/listStudentPage.action">学生信息</a></li>
				<li><a
					href="${pageContext.request.contextPath }/addStudentPage.action">添加学生</a></li>
				<li><a
					href="${pageContext.request.contextPath }/addStudentByExcelPage.action">导入学生</a></li>
			</ul></li>
		<li><a class="dropdown-toggle" href="#"> <i class="icon-edit"></i>
				<span>年度评分</span> <i class="icon-chevron-down"></i>
		</a>
			<ul class="submenu">
				<li><a
					href="${pageContext.request.contextPath }/listEvaluation.action">查看评分</a></li>
				<li><a
					href="${pageContext.request.contextPath }/addEvaluationPage.action">创建评分</a></li>
				<li><a
					href="${pageContext.request.contextPath }/scoreWorkPage.action">评分工作</a></li>
			</ul></li>
		<li><a
			href="${pageContext.request.contextPath }/fileManagerPage.action">
				<i class="icon-picture"></i> <span>文件管理</span>
		</a></li>
		<li><a
			href="${pageContext.request.contextPath }/alarmManagerPage.action">
				<i class="icon-calendar-empty"></i> <span>通知管理</span>
		</a></li>
		<li><a
			href="${pageContext.request.contextPath }/systemSettingPage.action">
				<i class="icon-cog"></i> <span>系统设置</span>
		</a></li>
		<li><a href="${pageContext.request.contextPath }/logout.action">
				<i class="icon-share-alt"></i> <span>退出系统</span>
		</a></li>
	</ul>
</div>
<!-- end side bar -->