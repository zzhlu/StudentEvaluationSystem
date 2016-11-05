<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<title>${student.name }同学详细信息</title>

<meta name="viewport" content="width=device-width, initial-scale=1.0" />
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<!-- css file -->
<%@ include file="../com/css.jsp"%>
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
			<div id="pad-wrapper" class="new-user">
				<div class="row-fluid header">
					<h3>${student.name }同学详细信息</h3>
				</div>
				<div class="row-fluid form-wrapper">
					<!-- left column -->
					<div class="span9 with-sidebar">
						<div class="container">
							<form method="post" class="new_user_form inline-input"
								action="${pageContext.request.contextPath }/addStudent.action">
								<table>
									<tr>
										<td style="width: 20%;" rowspan="7" colspan="2"><img
											style="width: 58px; height: 120px;"
											src="https://ss0.bdstatic.com/5aV1bjqh_Q23odCf/static/superman/img/logo/logo_white.png" /></td>
										<td style="width: 20%;">班级</td>
										<td style="width: 60%;">13030504</td>
									</tr>
									<tr>
										<td>学号</td>
										<td><input name="sno" type="text" value="${student.sno }" /></td>
									</tr>
									<tr>
										<td>姓名</td>
										<td><input name="name" type="text"
											value="${student.name }" /></td>
									</tr>
									<tr>
										<td>性别</td>
										<td><input name="gender" type="text"
											value="${student.gender }" /></td>
									</tr>
									<tr>
										<td>民族</td>
										<td><input name="nation" type="text"
											value="${student.nation }" /></td>
									</tr>
									<tr>
										<td>电话</td>
										<td><input name="phone" type="text"
											value="${student.phone }" /></td>
									</tr>
									<tr>
										<td>QQ号</td>
										<td><input name="qqNumb" type="text"
											value="${student.qqNumb }" /></td>
									</tr>
									<tr>
										<td style="width: 20%;">楼层</td>
										<td style="width: 30%;"><input name="dormno" type="text"
											value="${student.dormno }" /></td>
										<td style="width: 20%;">寝室</td>
										<td style="width: 30%;"><input name="dorminfo"
											type="text" value="${student.dorminfo }" /></td>
									</tr>
									<tr>
										<td style="width: 20%;">身份证号</td>
										<td style="width: 30%;"><input name="idCard" type="text"
											value="${student.idCard }" /></td>
										<td style="width: 20%;">银行卡号</td>
										<td style="width: 30%;"><input name="bankcard"
											type="text" value="${student.bankCard }" /></td>
									</tr>
									<tr>
										<td style="width: 20%;">是否有贫困证明</td>
										<td style="width: 30%;"><input
											name="havePovertyCertificate" type="text"
											value="${student.havePovertyCertificate }" /></td>
										<td style="width: 20%;">是否申请助学贷款</td>
										<td style="width: 30%;"><input name="haveLoan"
											type="text" value="${student.haveLoan }" /></td>
									</tr>
									<tr>
										<td style="width: 20%;">父亲姓名</td>
										<td style="width: 30%;"><input name="fatherName"
											type="text" value="${student.fatherName }" /></td>
										<td style="width: 20%;">联系方式</td>
										<td style="width: 30%;"><input name="fatherPhone"
											type="text" value="${student.fatherPhone }" /></td>
									</tr>
									<tr>
										<td style="width: 20%;">母亲姓名</td>
										<td style="width: 30%;"><input name="motherName"
											type="text" value="${student.motherName }" /></td>
										<td style="width: 20%;">联系方式</td>
										<td style="width: 30%;"><input name="motherPhone"
											type="text" value="${student.motherPhone }" /></td>
									</tr>

									<tr>
										<td colspan="2" style="width: 20%;">家庭住址</td>
										<td colspan="2" style="width: 80%;"><input
											name="residenceRegistrationAddress" type="text"
											value="${student.residenceRegistrationAddress }" /></td>
									</tr>
								</table>
							</form>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>


	<!-- scripts -->
	<%@ include file="../com/script.jsp"%>
</body>
</html>