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
<style type="text/css">
input {
	width: 22px;
	margin: 0px;
	padding: 0px;
}
</style>
</head>
<body>
	<div class="container-fluid">
		<div class="row-fluid">
			<table class="table table-hover">
				<thead>
					<tr>
						<th class="span2">序号</th>
						<th class="span3"><span class="line"></span> 学号</th>
						<th class="span3"><span class="line"></span> 姓名</th>
						<th class="span3"><span class="line"></span>
							积极为社会服务，为他人奉献(满分8分)</th>
						<th class="span3"><span class="line"></span>
							积极参加社会实践与志愿服务(满分10分)</th>
						<th class="span3"><span class="line"></span>
							参加各类比赛获奖情况(满分15分)</th>
						<th class="span3"><span class="line"></span> 学生干部职务加分(满分10分)</th>
						<th class="span3"><span class="line"></span> 素质教育加分总分(满分30分)</th>
						<th class="span3"><span class="line"></span>是否完成评定</th>
					</tr>
				</thead>
				<tbody>
					<c:forEach var="item" varStatus="index" items="${tableList }">
						<tr>
							<td>${index.count }</td>
							<td><a target="_blank"
								href="${pageContext.request.contextPath }/showStudentInformation.action?sno=${item.student.sno }">
									${item.student.sno }</a></td>
							<td><a target="_blank"
								href="${pageContext.request.contextPath }/showStudentInformation.action?sno=${item.student.sno }">
									${item.student.name }</a></td>
							<td>${item.tableSZJYJF.shehuifuwu }</td>
							<td>${item.tableSZJYJF.shehuishijian }</td>
							<td>${item.tableSZJYJF.bisaihuojiang }</td>
							<td>${item.tableSZJYJF.xueshengganbu }</td>
							<td>${item.tableSZJYJF.total }</td>
							<td><c:choose>
									<c:when test="${item.tableSZJYJF.isvalid==0 }">
										<span class="label">未完成</span>
									</c:when>
									<c:otherwise>
										<span class="label label-success">完成</span>
									</c:otherwise>
								</c:choose></td>
						</tr>
					</c:forEach>
				</tbody>
			</table>
		</div>
	</div>
	<!-- end orders table -->
</body>
</html>