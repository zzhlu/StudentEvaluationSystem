<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<title>文件管理</title>

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
							<span class="number">${total }</span>MB
						</div>
						<span class="date">磁盘大小</span>
					</div>
					<div class="span3 stat">
						<div class="data">
							<span class="number">${useable }</span>MB
						</div>
						<span class="date">剩余空间</span>
					</div>
					<div class="span3 stat">
						<div class="data">
							<span class="number">${total-useable }</span>MB
						</div>
						<span class="date">已用空间</span>
					</div>
					<div class="span3 stat last">
						<div class="data">
							<span class="number">${fileNumb }</span>个
						</div>
						<span class="date">文件</span>
					</div>
				</div>
			</div>
			<!-- end upper main stats -->
			<div id="pad-wrapper">
				<div class="span5 chart">
					<h5>磁盘空间明细</h5>
					<div id="hero-donut" style="height: 250px;"></div>
				</div>
			</div>
		</div>
	</div>


	<!-- scripts -->
	<%@ include file="../com/script.jsp"%>
	<!-- morrisjs -->
	<script src="js/raphael-min.js"></script>
	<script src="js/morris.min.js"></script>
	<script type="text/javascript">
		// Morris Donut Chart
		Morris.Donut({
			element : 'hero-donut',
			data : [ {
				label : '已用空间',
				value : ${total-useable }
			}, {
				label : '剩余空间',
				value : ${useable }
			} ],
			colors : [ "#76bdee", "#30a1ec" ],
			formatter : function(y) {
				return y + "MB";
			}
		});
	</script>
</body>
</html>