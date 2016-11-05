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
						<th class="span3"><span class="line"></span>遵守社会公德(5、0)</th>
						<th class="span3"><span class="line"></span>与他人文明交往 尊重师长(5、0)</th>
						<th class="span3"><span class="line"></span>诚信立身 勤俭立行(5、0)</th>
						<th class="span3"><span class="line"></span>加强体育锻炼
							提高身体素质(5、0)</th>
						<th class="span3"><span class="line"></span>爱护公物 爱护校园环境(5、0)</th>
						<th class="span3"><span class="line"></span>遵守学校相关管理规定(10)</th>
						<th class="span3"><span class="line"></span>积极参加各项活动(10)</th>
						<th class="span3"><span class="line"></span>辅导员根据听课记录及工作笔记(15)</th>
						<th class="span3"><span class="line"></span>辅导员根据公寓检查记录(10)</th>
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
							<td class="description">${item.tableSZXFXWBF.shehuigongde }</td>
							<td class="description">${item.tableSZXFXWBF.wenmingjiaowang }</td>
							<td class="description">${item.tableSZXFXWBF.chengxinlishen }</td>
							<td class="description">${item.tableSZXFXWBF.tiyuduanlian }</td>
							<td class="description">${item.tableSZXFXWBF.aihugongwu }</td>
							<td class="description">${item.tableSZXFXWBF.xuexiaoguiding }</td>
							<td class="description">${item.tableSZXFXWBF.canjiahuodong }</td>
							<td class="description">${item.tableSZXFXWBF.tingkejilu }</td>
							<td class="description">${item.tableSZXFXWBF.gongyujiancha }</td>
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