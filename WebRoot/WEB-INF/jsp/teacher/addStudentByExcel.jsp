<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<title>通过文件导入学生信息</title>

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
			<div id="pad-wrapper" class="new-user">
				<div class="row-fluid header">
					<h3>Excel文件导入学生信息</h3>
				</div>
				<div class="row-fluid form-wrapper">
					<!-- left column -->
					<div class="span9 with-sidebar">
						<div class="container">
							<form class="new_user_form inline-input"
								enctype="multipart/form-data" method="post"
								action="${pageContext.request.contextPath }/addStudentByExcel.action">
								<div class="span12 field-box">
									<label>请选择要导入的Excel文件：<input name="file" type="file" /></label>
								</div>
								<div class="span12 field-box"></div>
								<div class="span11 field-box actions">
									<input type="submit" class="btn-glow primary" value="上传文件并创建" />
								</div>
							</form>
						</div>
					</div>

					<!-- side right column -->
					<div class="span3 form-sidebar pull-right">
						<div class="alert alert-info hidden-tablet">
							<i class="icon-lightbulb pull-left"></i>友情提示:为了方便学生成绩的录入，增加了Excel导入的方式，在导入之前请仔细阅读导入Excel表格的要求。
						</div>
						<ul>
							<li>请阅读以下帮助信息</li>
							<li><a href="#">查看帮助文档</a></li>
							<li><a href="#">下载标准的导入文档模板</a></li>
						</ul>
					</div>
				</div>
			</div>
		</div>
	</div>
	<!-- scripts -->
	<%@ include file="../com/script.jsp"%>

	<script type="text/javascript">
		
	</script>
</body>
</html>