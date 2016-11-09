<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<title>${student.name }同学详细信息</title>

<meta name="viewport" content="width=device-width, initial-scale=1.0" />
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<!-- css file -->
<%@ include file="../com/css.jsp"%>
<link rel="stylesheet" href="css/compiled/form-showcase.css"
	type="text/css" media="screen" />
<link href="css/lib/uniform.default.css" type="text/css"
	rel="stylesheet" />
<link href="css/lib/font-awesome.css" type="text/css" rel="stylesheet" />
<link href="css/lib/select2.css" type="text/css" rel="stylesheet" />

</head>
<style>
table {
	border-style: double;
}

tr {
	padding: 2px;
}

td {
	padding: 2px;
	text-align: 5px;
	text-indent: 5px;
}
</style>
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
				<div class="row-fluid form-wrapper">
					<!-- left column -->
					<div class="span8 column">
						<form method="post"
							action="${pageContext.request.contextPath }updateStudentInformation">
							<div class="field-box">
								<label>姓名:</label> <input name="name" value="${student.name }"
									class="span8" type="text" />
							</div>
							<div class="field-box">
								<label>班级:</label> <input name="classid"
									value="${student.classid }" class="span8 inline-input"
									type="text" readonly="readonly" />
							</div>
							<div class="field-box">
								<label>学号:</label> <input name="sno" value="${student.sno }"
									class="span8 inline-input" type="text" readonly="readonly" />
							</div>
							<div class="field-box">
								<label>性别:</label>
								<div class="ui-select">
									<select name="gender">
										<c:choose>
											<c:when test="${student.gender == '男' }">
												<option value="男" selected="selected">男</option>
												<option value="女">女</option>
											</c:when>
											<c:otherwise>
												<option value="女" selected="selected">女</option>
												<option value="男">男</option>
											</c:otherwise>
										</c:choose>
									</select>
								</div>
							</div>
							<div class="field-box">
								<label>民族:</label> <input name="nation"
									value="${student.nation }" class="span8" type="text" />
							</div>
							<div class="field-box">
								<label>电话:</label> <input name="phone" value="${student.phone }"
									class="span8" type="text" />
							</div>
							<div class="field-box">
								<label>QQ号:</label> <input name="qqNumb"
									value="${student.qqNumb }" class="span8" type="text" />
							</div>
							<div class="field-box">
								<label>楼层:</label> <input name="dormno"
									value="${student.dormno }" class="span8" type="text" />
							</div>
							<div class="field-box">
								<label>寝室:</label> <input name="dorminfo"
									value="${student.dorminfo }" class="span8" type="text" />
							</div>
							<div class="field-box">
								<label>身份证号:</label> <input name="idCard"
									value="${student.idCard }" class="span8" type="text" />
							</div>
							<div class="field-box">
								<label>银行卡号:</label> <input name="bankCard"
									value="${student.bankCard }" class="span8" type="text" />
							</div>
							<div class="field-box">
								<label>家庭住址:</label> <input name="address"
									value="${student.address }" class="span8" type="text" />
							</div>
							<div class="field-box">
								<label>户口所在地:</label> <input name="residenceRegistrationAddress"
									value="${student.residenceRegistrationAddress }" class="span8"
									type="text" />
							</div>
							<div class="field-box">
								<label>是否有贫困证明:</label> <input name="havePovertyCertificate"
									value="${student.havePovertyCertificate }" class="span8"
									type="text" />
							</div>
							<div class="field-box">
								<label>是否申请助学贷款:</label> <input name="haveLoan"
									value="${student.haveLoan }" class="span8" type="text" />
							</div>
							<div class="field-box">
								<label>父亲姓名:</label> <input name="fatherName"
									value="${student.fatherName }" class="span8" type="text" />
							</div>
							<div class="field-box">
								<label>母亲姓名:</label> <input name="motherName"
									value="${student.motherName }" class="span8" type="text" />
							</div>
							<div class="field-box">
								<label>父亲联系方式:</label> <input name="fatherPhone"
									value="${student.fatherPhone }" class="span8" type="text" />
							</div>
							<div class="field-box">
								<label>母亲联系方式:</label> <input name="motherPhone"
									value="${student.motherPhone }" class="span8" type="text" />
							</div>
							<div class="field-box">
								<input class="btn-flat primary" type="submit" value="  保存当前信息  ">
								&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <input
									class="btn-flat gray" type="reset" value="  重置变动内容  ">
								&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<input
									class="btn-flat inverse" type="button" value="  删除当前学生  ">
							</div>
						</form>
					</div>
				</div>
			</div>
		</div>
	</div>
	<!-- scripts -->
	<%@ include file="../com/script.jsp"%>
	<script src="js/jquery.uniform.min.js"></script>
	<script src="js/select2.min.js"></script>
	<script>
		// add uniform plugin styles to html elements
		$("input:checkbox, input:radio").uniform();
	</script>
</body>
</html>