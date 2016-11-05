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
				action="${pageContext.request.contextPath }/iframeUpdateSZXFRCXWBFPF.action">
				<table class="table table-hover">
					<thead>
						<tr>
							<th class="span3">序号</th>
							<th class="span3"><span class="line"></span>学号</th>
							<th class="span3"><span class="line"></span>姓名</th>
							<th class="span3"><span class="line"></span>遵守社会公德(5、0)</th>
							<th class="span3"><span class="line"></span>与他人文明交往
								尊重师长(5、0)</th>
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
										${item.student.name }</a><input
									name="tableSZXFRCXWBFPF[${index.count-1 }].id" hidden="hidden"
									value="${item.tableSZXFXWBF.id }" /></td>
								<td><input
									name="tableSZXFRCXWBFPF[${index.count-1 }].shehuigongde"
									type="text" value="${item.tableSZXFXWBF.shehuigongde }" /></td>
								<td><input
									name="tableSZXFRCXWBFPF[${index.count-1 }].wenmingjiaowang"
									type="text" value="${item.tableSZXFXWBF.wenmingjiaowang }" /></td>
								<td><input
									name="tableSZXFRCXWBFPF[${index.count-1 }].chengxinlishen"
									type="text" value="${item.tableSZXFXWBF.chengxinlishen }" /></td>
								<td><input
									name="tableSZXFRCXWBFPF[${index.count-1 }].tiyuduanlian"
									type="text" value="${item.tableSZXFXWBF.tiyuduanlian }" /></td>
								<td><input
									name="tableSZXFRCXWBFPF[${index.count-1 }].aihugongwu"
									type="text" value="${item.tableSZXFXWBF.aihugongwu }" /></td>
								<td><input
									name="tableSZXFRCXWBFPF[${index.count-1 }].xuexiaoguiding"
									type="text" value="${item.tableSZXFXWBF.xuexiaoguiding }" /></td>
								<td><input
									name="tableSZXFRCXWBFPF[${index.count-1 }].canjiahuodong"
									type="text" value="${item.tableSZXFXWBF.canjiahuodong }" /></td>
								<td><input
									name="tableSZXFRCXWBFPF[${index.count-1 }].tingkejilu"
									type="text" value="${item.tableSZXFXWBF.tingkejilu }" /></td>
								<td><input
									name="tableSZXFRCXWBFPF[${index.count-1 }].gongyujiancha"
									type="text" value="${item.tableSZXFXWBF.gongyujiancha }" /></td>
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
						<tr>
							<td colspan="13" style="text-align: right;"><input
								name="xueqi" value="${xueqi }" hidden="hidden"><input
								name="classid" value="${classid }" hidden="hidden"><input
								type="submit" value="更新信息" class="btn-glow primary"></td>
						</tr>
					</tbody>
				</table>
			</form>
		</div>
	</div>
</body>
</html>