<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<title>导员主页</title>

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
							<span id="time" class="number"></span>
						</div>
						<span id="date" class="date"></span>
					</div>
					<div class="span3 stat">
						<div class="data">
							<span class="number">${classNumb }</span>个班级
						</div>
						<span class="date"></span>
					</div>
					<div class="span3 stat">
						<div class="data">
							<span class="number">${studentNumb }</span>名学生
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

			<div id="pad-wrapper"></div>
		</div>
	</div>


	<!-- scripts -->
	<%@ include file="../com/script.jsp"%>

	<script type="text/javascript">
		$(document).ready(function() {
			window.setInterval("updateTime()", 1000);
		});
		// 更新时间
		function updateTime() {
			$("#time").text(new Date().toLocaleTimeString());
			$("#date").text(new Date().toLocaleDateString());
		}
	</script>
</body>
</html>