<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta name="viewport"
	content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=0" />
<title>设置</title>
<%@include file="../com_student/css_script.jsp"%>
</head>

<body>
	<!-- Top line begins -->
	<div id="top">
		<div class="wrapper">
			<a href="${pageContext.request.contextPath }/student/index.action"
				title="" class="logo"><img src="images/logo.png" alt="" /></a>

			<!-- Right top nav -->
			<%@include file="../com_student/righttopnav.jsp"%>

			<!-- Responsive nav -->
			<%@include file="../com_student/nav.jsp"%>
		</div>
	</div>

	<!-- Top line ends -->

	<!-- Sidebar begins -->
	<%@include file="../com_student/sidebar.jsp"%>

	<!-- Content begins -->
	<div id="content">
		<div class="contentTop">
			<span class="pageTitle"><span class="icon-screen"></span>个人信息</span>
			<div class="clear"></div>
		</div>
		<div class="wrapper">

			<form class="main" method="post"
				action="${pageContext.request.contextPath }/student/updateStudentInformation.action">
				<fieldset>
					<div class="widget fluid">
						<div class="whead">
							<h6>我的信息</h6>
							<div class="clear"></div>
						</div>
						<div class="formRow">
							<div class="grid3">
								<label>姓名:</label>
							</div>
							<div class="grid9">
								<input type="text" name="name" value="${user.name }" />
							</div>
							<div class="clear"></div>
						</div>
						<div class="formRow">
							<div class="grid3">
								<label>学号:</label>
							</div>
							<div class="grid9">
								<input type="text" name="sno" readonly="readonly"
									value="${user.sno }" />
							</div>
							<div class="clear"></div>
						</div>
						<div class="formRow">
							<div class="grid3">
								<label>班级:</label>
							</div>
							<div class="grid9">
								<input type="text" name="classid" readonly="readonly"
									value="${user.classid }" />
							</div>
							<div class="clear"></div>
						</div>
						<div class="formRow">
							<div class="grid3">
								<label>性别 :</label>
							</div>
							<div class="grid9 noSearch">
								<select name="gender" class="select" style="width: 100%">
									<c:choose>
										<c:when test="${'男'==user.gender }">
											<option value="男">男</option>
											<option value="女">女</option>
										</c:when>
										<c:otherwise>
											<option value="女">女</option>
											<option value="男">男</option>
										</c:otherwise>
									</c:choose>
								</select>
							</div>
							<div class="clear"></div>
						</div>
						<div class="formRow">
							<div class="grid3">
								<label>寝室楼:</label>
							</div>
							<div class="grid9">
								<input type="text" name="dormno" value="${user.dormno }" />
							</div>
							<div class="clear"></div>
						</div>
						<div class="formRow">
							<div class="grid3">
								<label>寝室号:</label>
							</div>
							<div class="grid9">
								<input type="text" name="dorminfo" value="${user.dorminfo }" />
							</div>
							<div class="clear"></div>
						</div>
						<div class="formRow">
							<div class="grid3">
								<label>民族:</label>
							</div>
							<div class="grid9">
								<input type="text" name="nation" value="${user.nation }" />
							</div>
							<div class="clear"></div>
						</div>
						<div class="formRow">
							<div class="grid3">
								<label>政治面貌:</label>
							</div>
							<div class="grid9">
								<input type="text" name="politicalStatus"
									value="${user.politicalStatus }" />
							</div>
							<div class="clear"></div>
						</div>
						<div class="formRow">
							<div class="grid3">
								<label>电话:</label>
							</div>
							<div class="grid9">
								<input type="text" name="phone" value="${user.phone }" />
							</div>
							<div class="clear"></div>
						</div>
						<div class="formRow">
							<div class="grid3">
								<label>是否有助学贷款:</label>
							</div>
							<div class="grid9">
								<input type="text" name="haveLoan" value="${user.haveLoan }" />
							</div>
							<div class="clear"></div>
						</div>
						<div class="formRow">
							<div class="grid3">
								<label>身份证号:</label>
							</div>
							<div class="grid9">
								<input type="text" name="idCard" value="${user.idCard }" />
							</div>
							<div class="clear"></div>
						</div>
						<div class="formRow">
							<div class="grid3">
								<label>是否含有贫困证明:</label>
							</div>
							<div class="grid9">
								<input type="text" name="havePovertyCertificate"
									value="${user.havePovertyCertificate }" />
							</div>
							<div class="clear"></div>
						</div>
						<div class="formRow">
							<div class="grid3">
								<label>银行卡:</label>
							</div>
							<div class="grid9">
								<input type="text" name="bankCard" value="${user.bankCard }" />
							</div>
							<div class="clear"></div>
						</div>
						<div class="formRow">
							<div class="grid3">
								<label>家庭地址:</label>
							</div>
							<div class="grid9">
								<input type="text" name="address" value="${user.address }" />
							</div>
							<div class="clear"></div>
						</div>
						<div class="formRow">
							<div class="grid3">
								<label>户口所在地:</label>
							</div>
							<div class="grid9">
								<input type="text" name="residenceRegistrationAddress"
									value="${user.residenceRegistrationAddress }" />
							</div>
							<div class="clear"></div>
						</div>
						<div class="formRow">
							<div class="grid3">
								<label>QQ号:</label>
							</div>
							<div class="grid9">
								<input type="text" name="qqNumb" value="${user.qqNumb }" />
							</div>
							<div class="clear"></div>
						</div>
						<div class="formRow">
							<div class="grid3">
								<label>父亲:</label>
							</div>
							<div class="grid9">
								<input type="text" name="fatherName" value="${user.fatherName }" />
							</div>
							<div class="clear"></div>
						</div>
						<div class="formRow">
							<div class="grid3">
								<label>父亲联系方式:</label>
							</div>
							<div class="grid9">
								<input type="text" name="fatherPhone"
									value="${user.fatherPhone }" />
							</div>
							<div class="clear"></div>
						</div>
						<div class="formRow">
							<div class="grid3">
								<label>母亲:</label>
							</div>
							<div class="grid9">
								<input type="text" name="motherName" value="${user.motherName }" />
							</div>
							<div class="clear"></div>
						</div>
						<div class="formRow">
							<div class="grid3">
								<label>母亲联系方式:</label>
							</div>
							<div class="grid9">
								<input type="text" name="motherPhone"
									value="${user.motherPhone }" />
							</div>
							<div class="clear"></div>
						</div>

						<div class="formRow">
							<div class="grid6" style="text-align: center;">
								<input type="reset" class="buttonS bRed" value="  重置  " />
							</div>
							<div class="grid6" style="text-align: center;">
								<input type="submit" class="buttonS bGreen" value="  修改  " />
							</div>
							<div class="clear"></div>
						</div>
					</div>
				</fieldset>
			</form>
		</div>
	</div>
	<!-- Content ends -->
</body>
</html>
