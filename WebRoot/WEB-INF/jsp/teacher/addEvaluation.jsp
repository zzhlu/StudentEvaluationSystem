<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<title>创建评分</title>
<meta name="viewport" content="width=device-width, initial-scale=1.0" />
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<!-- bootstrap -->
<link href="css/bootstrap/bootstrap.css" rel="stylesheet" />
<link href="css/bootstrap/bootstrap-responsive.css" rel="stylesheet" />
<link href="css/bootstrap/bootstrap-overrides.css" type="text/css"
	rel="stylesheet" />
<!-- libraries -->
<link href="css/lib/select2.css" type="text/css" rel="stylesheet" />
<link href="css/lib/font-awesome.css" type="text/css" rel="stylesheet" />
<!-- global styles -->
<link rel="stylesheet" type="text/css" href="css/layout.css" />
<link rel="stylesheet" type="text/css" href="css/elements.css" />
<link rel="stylesheet" type="text/css" href="css/icons.css" />
<!-- this page specific styles -->
<link rel="stylesheet" href="css/compiled/form-showcase.css"
	type="text/css" media="screen" />
<!-- open sans font -->
<link
	href='http://fonts.googleapis.com/css?family=Open+Sans:300italic,400italic,600italic,700italic,800italic,400,300,600,700,800'
	rel='stylesheet' type='text/css' />
<!--[if lt IE 9]>
      <script src="http://html5shim.googlecode.com/svn/trunk/html5.js"></script>
    <![endif]-->
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
			<div id="pad-wrapper" class="form-page">
				<div class="row-fluid header">
					<h3>创建统计学期</h3>
				</div>
				<div class="row-fluid form-wrapper">
					<!-- left column -->
					<div class="span8 column">
						<form id="form" method="post"
							action="${pageContext.request.contextPath }/addEvaluation.action">
							<div class="field-box">
								<label>学期：</label> <input name="xueqi" class="span8"
									data-toggle="tooltip" data-trigger="focus"
									title="格式：例如 2015-2016" data-placement="right" type="text" />
							</div>
							<div class="field-box">
								<label>班级：</label> <select name="classid" multiple="multiple"
									class="select2 span8">
									<c:forEach items="${classList }" var="item" varStatus="index">
										<option value="${item.classid }">${item.classid }(${item.major })</option>
									</c:forEach>
								</select>
							</div>
							<div class="field-box">
								<label>提示信息：</label>
								<textarea name="content" class="span8" rows="4"></textarea>
							</div>
							<div class="field-box">
								<input type="submit" value="创建并通知相关同学" class="btn-glow primary">
							</div>
						</form>
					</div>
				</div>
			</div>
		</div>
	</div>
	<!-- end main container -->

	<!-- scripts -->
	<%@ include file="../com/script.jsp"%>
	<script src="js/select2.min.js"></script>
	<script type="text/javascript">
		$(function() {
			// select2 plugin for select elements
			$(".select2").select2({
				placeholder : "请选择班级"
			});
		});
	</script>
</body>
</html>