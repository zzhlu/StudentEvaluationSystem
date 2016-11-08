<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<title></title>
<!-- css file -->
<%@ include file="../com/css.jsp"%>
<!-- this page specific styles -->
<link rel="stylesheet" href="css/compiled/tables.css" type="text/css"
	media="screen" />
</head>
<body>
	<div class="container-fluid">
		<div class="row-fluid">
			<table class="table table-hover">
				<thead>
					<tr>
						<th class="span1"><span class="line"></span>序号</th>
						<th class="span1"><span class="line"></span>学号</th>
						<th class="span2"><span class="line"></span>姓名</th>
						<th class="span1"><span class="line"></span>性别</th>
						<th class="span1"><span class="line"></span>民族</th>
						<th class="span2"><span class="line"></span>寝室</th>
						<th class="span3"><span class="line"></span>电话</th>
					</tr>
				</thead>
				<tbody>
					<c:forEach items="${stuList }" var="item" varStatus="index">
						<!-- row -->
						<tr class="first">
							<td>${index.count }</td>
							<td><a target="_parent"
								href="${pageContext.request.contextPath }/showStudentInformation.action?sno=${item.sno }">
									${item.sno }</a></td>
							<td><a target="_parent"
								href="${pageContext.request.contextPath }/showStudentInformation.action?sno=${item.sno }">
									${item.name }</a></td>
							<td>${item.gender }</td>
							<td>${item.nation }</td>
							<td>${item.dormno }#${item.dorminfo }</td>
							<td>${item.phone }</td>
						</tr>
					</c:forEach>
				</tbody>
			</table>
		</div>
	</div>
	<!-- end orders table -->
</body>
</html>