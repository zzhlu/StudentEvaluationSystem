<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<title>添加学生</title>

<meta name="viewport" content="width=device-width, initial-scale=1.0" />
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<!-- css file -->
<%@ include file="../com/css.jsp"%>
<!-- this page specific styles -->
<link rel="stylesheet" href="css/compiled/new-user.css" type="text/css"
	media="screen" />

<!-- open sans font -->
<link
	href='http://fonts.googleapis.com/css?family=Open+Sans:300italic,400italic,600italic,700italic,800italic,400,300,600,700,800'
	rel='stylesheet' type='text/css' />

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
					<h3>创建学生信息</h3>
				</div>
				<div class="row-fluid form-wrapper">
					<!-- left column -->
					<div class="span9 with-sidebar">
						<div class="container">
							<form method="post" class="new_user_form inline-input"
								action="${pageContext.request.contextPath }/addStudent.action">
								<div class="span12 field-box">
									<label>班级:</label> <input name="classid" class="span9"
										type="text" />
								</div>
								<div class="span12 field-box">
									<label>学号:</label> <input name="sno" class="span9" type="text" />
								</div>
								<div class="span12 field-box">
									<label>姓名:</label> <input name="name" class="span9" type="text" />
								</div>
								<div class="span12 field-box">
									<label>性别:</label>
									<div class="ui-select span5">
										<select name="gender">
											<option value="男">男</option>
											<option value="女">女</option>
										</select>
									</div>
								</div>
								<div class="span12 field-box">
									<label>电话:</label> <input name="phone" class="span9"
										type="text" />
								</div>
								<div class="span12 field-box">
									<label>QQ号:</label> <input name="qqNumb" class="span9"
										type="text" />
								</div>
								<div class="span11 field-box actions">
									<input type="submit" class="btn-glow primary" value="创建" /> <span>或</span>
									<input type="reset" value="重置" class="reset" />
								</div>
							</form>
						</div>
					</div>

					<!-- side right column -->
					<div class="span3 form-sidebar pull-right">
						<div class="btn-group toggle-inputs hidden-tablet">
							<button class="glow left active" data-input="inline">横线输入框</button>
							<button class="glow right" data-input="normal">方框输入框</button>
						</div>
						<div class="alert alert-info hidden-tablet">
							<i class="icon-lightbulb pull-left"></i>友情提示:手动输入工作量很大，您可以选择Excel文件导入学生信息
						</div>
						<h6>
							<a
								href="${pageContext.request.contextPath }/addStudentByExcelPage.action">使用文件导入学生信息</a>
						</h6>
						<p>为了方便学生成绩的录入，增加了Excel导入的方式，在导入之前请仔细阅读导入Excel表格的要求。</p>
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
		$(function() {
			var $buttons = $(".toggle-inputs button");
			var $form = $("form.new_user_form");

			$buttons.click(function() {
				var mode = $(this).data("input");
				$buttons.removeClass("active");
				$(this).addClass("active");

				if (mode === "inline") {
					$form.addClass("inline-input");
				} else {
					$form.removeClass("inline-input");
				}
			});
		});
	</script>
</body>
</html>