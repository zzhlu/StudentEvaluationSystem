<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html
	style="background-image: url('${pageContext.request.contextPath }/img/bgs/9.jpg')">
<head>
<title>登录</title>

<link href="${pageContext.request.contextPath }/favicon.ico" rel="icon"
	type="image/x-icon" />
<link href="${pageContext.request.contextPath }/favicon.ico"
	rel="shortcut icon" type="image/x-icon" />
<meta name="viewport" content="width=device-width, initial-scale=1.0" />
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<base href="${pageContext.request.contextPath }/">
<!-- bootstrap -->
<link href="css/bootstrap/bootstrap.css" rel="stylesheet" />
<link href="css/bootstrap/bootstrap-responsive.css" rel="stylesheet" />
<link href="css/bootstrap/bootstrap-overrides.css" type="text/css"
	rel="stylesheet" />

<!-- global styles -->
<link rel="stylesheet" type="text/css" href="css/layout.css" />
<link rel="stylesheet" type="text/css" href="css/elements.css" />
<link rel="stylesheet" type="text/css" href="css/icons.css" />

<!-- libraries -->
<link rel="stylesheet" type="text/css" href="css/lib/font-awesome.css" />

<!-- this page specific styles -->
<link rel="stylesheet" href="css/compiled/signin.css" type="text/css"
	media="screen" />

<!-- open sans font -->
<link
	href='http://fonts.googleapis.com/css?family=Open+Sans:300italic,400italic,700italic,800italic,400,300,600,700,800'
	rel='stylesheet' type='text/css' />

<!--[if lt IE 9]>
      <script src="http://html5shim.googlecode.com/svn/trunk/html5.js"></script>
    <![endif]-->
</head>
<body>
	<div class="row-fluid login-wrapper">
		<img class="logo" src="img/logo-white.png" />

		<div class="span4 box">
			<div class="content-wrap">
				<h6>登录</h6>
				<form id="form_login" method="post"
					action="${pageContext.request.contextPath }/login.action">
					<input class="span12" name="id" type="text" placeholder="请输入学号" />
					<input name="password" class="span12" type="password"
						placeholder="请输入密码" /> <a
						href="${pageContext.request.contextPath }/forgetPasswordPage.action"
						class="forgot">忘记密码？</a>
					<div class="remember">
						<input id="remember-me" name="teacher" type="checkbox"
							value="teacher" /> <label for="remember-me">我是老师</label>
					</div>
					<div>
						<label style="color: red;">${tip }</label>
					</div>
				</form>
				<a class="btn-glow primary login" href="javascript:login()">登录</a>
			</div>
		</div>

		<div class="span4 no-account">
			<p>忘记密码？</p>
			<a
				href="${pageContext.request.contextPath }/forgetPasswordPage.action">找回密码</a>
		</div>
	</div>

	<!-- scripts -->
	<%@ include file="com/script.jsp"%>
	<script type="text/javascript">
		function login() {
			document.getElementById("form_login").submit();
		}
	</script>
</body>
</html>