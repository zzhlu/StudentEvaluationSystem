<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<title>成绩查询</title>

<meta name="viewport" content="width=device-width, initial-scale=1.0" />
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<!-- css file -->
<%@ include file="../com/css.jsp"%>
</head>
<body>

	<!-- nav bar -->
	<%@ include file="../com/navbar.jsp"%>
	<!-- end nav bar -->

	<!-- side bar -->
	<%@ include file="../com/sidebar.jsp"%>
	<!-- end side bar -->


	<!-- main container -->
	<div class="content">
		<div class="container-fluid">

			<!-- upper main stats -->
			<div id="main-stats">
				<div class="row-fluid stats-row">
					<div class="span3 stat">
						<div class="data">
							<span class="number"></span>
						</div>
						<span class="date"></span>
					</div>
					<div class="span3 stat">
						<div class="data">
							<span class="number"></span>
						</div>
						<span class="date"></span>
					</div>
					<div class="span3 stat">
						<div class="data">
							<span class="number"></span>
						</div>
						<span class="date"></span>
					</div>
					<div class="span3 stat last">
						<div class="data">
							<span class="number"></span>
						</div>
						<span class="date"></span>
					</div>
				</div>
			</div>
			<!-- end upper main stats -->

			<div id="pad-wrapper">
				暂不支持成绩查询，请登录<a href="http://218.25.35.28/">教学网</a>查询
			</div>
		</div>
	</div>


	<!-- scripts -->
	<%@ include file="../com/script.jsp"%>

	<script type="text/javascript">
		
	</script>
</body>
</html>