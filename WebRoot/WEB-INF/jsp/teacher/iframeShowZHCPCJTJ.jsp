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
						<th class="span3">序号</th>
						<th class="span3"><span class="line"></span>学号</th>
						<th class="span3"><span class="line"></span>姓名</th>
						<th class="span3"><span class="line"></span>①日常行为得分</th>
						<th class="span3"><span class="line"></span>②素质活动得分</th>
						<th class="span3"><span class="line"></span>③素质学分合计③=①+②</th>
						<th class="span3"><span class="line"></span>④素质学分绩点</th>
						<th class="span3"><span class="line"></span>⑤平均学分绩点</th>
						<th class="span3"><span class="line"></span>⑥综合测评成绩⑥=⑤*80%+④*20%</th>
						<th class="span3"><span class="line"></span>完成成绩评定</th>
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
							<td class="description">${item.tableSZXFXWBF.total }</td>
							<td class="description">${item.tableSZJYJF.total }</td>
							<td class="description">${item.tableSZXFXWBF.total + item.tableSZJYJF.total }</td>
							<td class="description">${item.suzhixuefenjidian }</td>
							<td class="description">${item.pingjunxuefenjidian }</td>
							<td class="description">${item.total }</td>
							<td><c:choose>
									<c:when test="${item.tableSZXFXWBF.isvalid==0 }">
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
</body>
</html>