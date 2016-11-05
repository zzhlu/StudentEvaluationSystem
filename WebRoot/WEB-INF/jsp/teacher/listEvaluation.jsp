<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<title>查看学期评估</title>

<meta name="viewport" content="width=device-width, initial-scale=1.0" />
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<!-- css file -->
<%@ include file="../com/css.jsp"%>
<link href="css/lib/select2.css" type="text/css" rel="stylesheet" />
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
			<div class="table-products">
				<div class="row-fluid head">
					<div class="span12">
						<br /> <br />
						<h2>学期评估结果查看</h2>
						<br />
					</div>
				</div>

				<div class="row-fluid filter-block">
					<div class="ui-select" style="width: 220px;">
						<select id="class" name="class" onchange="selectClass()">
							<option>======请选择学期======</option>
							<c:forEach var="item" varStatus="index" items="${classList }">
								<option value="${item.classid }">${item.classid }
									${item.major }</option>
							</c:forEach>
						</select>
					</div>
					<input type="text" class="search" /> <a
						class="btn-flat new-product">搜索</a>
				</div>
				<div style="text-align: left; height: 100%">
					<iframe name="iframe" style="width: 100%; height: 500px;" src=""></iframe>
				</div>
				<form id="form" hidden="hidden" method="post" target="iframe"
					action="${pageContext.request.contextPath }/iframeShowStudentList.action">
					<input id="classid" name="classid" hidden="hidden">
				</form>
			</div>
		</div>
	</div>

	<!-- scripts -->
	<%@ include file="../com/script.jsp"%>

	<script type="text/javascript">
		
	</script>
</body>
</html>