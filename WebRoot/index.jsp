<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>跳转页</title>
<link href="favicon.ico" rel="icon" type="image/x-icon" />
<link href="favicon.ico" rel="shortcut icon" type="image/x-icon" />
<meta http-equiv="refresh"
	content="0;url=${pageContext.request.contextPath }/index.action">
</head>
<body onload="javascript:forward()" style="text-align: center">
	<br />
	<br />
	<h1>页面跳转中，请稍等</h1>
	<script type="text/javascript">
		function forword() {
			window.location.href = "${pageContext.request.contextPath }/index.action";
		}
	</script>
</body>
</html>