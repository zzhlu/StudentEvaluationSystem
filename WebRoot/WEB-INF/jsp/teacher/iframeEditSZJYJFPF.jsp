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
			<form name="form" method="post"
				action="${pageContext.request.contextPath }/iframeUpdateSZJYJFPF.action">
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
							<th class="span3"><span class="line"></span>是否完成评定</th>
						</tr>
					</thead>
					<tbody>
						<c:forEach var="item" varStatus="index" items="${tableList }">
							<tr>
								<td>${index.count }</td>
								<td><a target="_blank"
									href="${pageContext.request.contextPath }/showStudentInformation.action?sno=${item.student.sno }">
										${item.student.sno }</a><input hidden="hidden"
									name="tableSZJYJFPF[${index.count-1 }].id"
									value="${item.tableSZJYJF.id }" /></td>
								<td><a target="_blank"
									href="${pageContext.request.contextPath }/showStudentInformation.action?sno=${item.student.sno }">
										${item.student.name }</a></td>
								<td><input
									name="tableSZJYJFPF[${index.count-1 }].shehuifuwu" type="text"
									value="${item.tableSZJYJF.shehuifuwu }" /></td>
								<td><input
									name="tableSZJYJFPF[${index.count-1 }].shehuishijian"
									type="text" value="${item.tableSZJYJF.shehuishijian }" /></td>
								<td><input
									name="tableSZJYJFPF[${index.count-1 }].bisaihuojiang"
									type="text" value="${item.tableSZJYJF.bisaihuojiang }" /></td>
								<td><input
									name="tableSZJYJFPF[${index.count-1 }].xueshengganbu"
									type="text" value="${item.tableSZJYJF.xueshengganbu }" /></td>
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
						<tr>
							<td colspan="8" style="text-align: right;"><input
								name="xueqi" value="${xueqi }" hidden="hidden"><input
								name="classid" value="${classid }" hidden="hidden"><input
								type="submit" value="更新信息" class="btn-glow primary"></td>
						</tr>
					</tbody>
				</table>
			</form>
		</div>
	</div>
	<!-- end orders table -->
</body>
</html>