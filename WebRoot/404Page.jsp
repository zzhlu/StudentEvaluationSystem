<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta name="viewport"
	content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=0" />
<title>404错误</title>
<link href="${pageContext.request.contextPath }/student/css/styles.css"
	rel="stylesheet" type="text/css" />
</head>
<body>
	<!-- Main content wrapper begins -->
	<div class="errorWrapper">
		<span class="errorNum">404</span>
		<div class="errorContent">
			<span class="errorDesc"> 对不起！您所在请求的页面不存在！</span>
			<div class="searchLine first">
				<form action="">
					<input type="text" name="search" class="ac"
						placeholder="Enter search text..." />
					<button type="submit" name="find" value="">
						<span class="icos-search"></span>
					</button>
				</form>
			</div>
			<div class="fluid">
				<a href="#" title="" class="buttonM bLightBlue grid6">反馈给管理员</a> <a
					href="#" title="" class="buttonM bRed grid6">返回到网站首页</a>
			</div>
		</div>
	</div>
	<!-- Main content wrapper ends -->
</body>
</html>
