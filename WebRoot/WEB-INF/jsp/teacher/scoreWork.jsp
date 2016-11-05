<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<title>导员主页</title>

<meta name="viewport" content="width=device-width, initial-scale=1.0" />
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<!-- css file -->
<%@ include file="../com/css.jsp"%>
</head>
<body>

	<!-- nav bar -->
	<%@ include file="../com/navbar.jsp"%>
	<!-- end nav bar -->

	<!-- side bar -->
	<%@ include file="../com/sidebar.jsp"%>
	<!-- end side bar -->


	<!-- main container -->
	<div class="content" style="margin-bottom: 22px;">
		<div class="container-fluid" style="height: 100%">
			<!-- upper main stats -->
			<div id="main-stats">
				<div class="row-fluid stats-row">
					<div class="span12 stat">
						<div class="data" style="float: left;padding-left: 22px;">
							<h1>成绩评定</h1>
						</div>
					</div>
				</div>
			</div>
			<div id="pad-wrapper">
				<h4>查阅表单信息</h4>
				<div class="row-fluid filter-block">
					<div>
						<div class="ui-select" style="width: 220px;">
							<select id="xueqi" name="xueqi" onchange="selectClassid()">
								<option>======请选择学年======</option>
							</select>
						</div>
						<div class="ui-select" style="width: 220px;">
							<select id="classid" name="classid">
								<option>======请选择班级======</option>
							</select>
						</div>
						<div class="ui-select" style="width: 220px;">
							<select id="table" name="table" onchange="selectTable()">
								<option>======请选择表格======</option>
								<option value="ZHCPCJTJ">综合成绩测评成绩统计表</option>
								<option value="SZXFRCXWBFPF">素质学分日常行为部分评分表</option>
								<option value="SZJYJFPF">素质教育加分评分表</option>
							</select>
						</div>
						<div class="btn-group">
							<button id="download" class="glow left large"
								onclick="javascript:downloadTable();">下载Excel表格</button>
							<button id="alter" class="glow middle large"
								onclick="javascript:alterTable();">修改表格内容</button>
							<button id="delete" class="glow right large"
								onclick="javascript:deleteTable();">删除当前表格</button>
						</div>
					</div>
				</div>
			</div>

			<div style="text-align: left; height: 100%">
				<iframe name="iframe" style="width: 100%; height: 500px;"
					src="${pageContext.request.contextPath }/iframeShowSZJYJFPF.action"></iframe>
			</div>
		</div>
	</div>
	<form action="" hidden="hidden" target="iframe" id="form" name="form">
		<input id="input_xueqi" name="xueqi" hidden="hidden" /> <input
			id="input_classid" name="classid" hidden="hidden" />
	</form>
	<!-- scripts -->
	<%@ include file="../com/script.jsp"%>

	<script type="text/javascript">
		// 更新选择学期下拉列表的下拉列表 
		function selectXueQi() {
			connectNetWork("selectXueQi.action", "xueqi", "id", "xueqi");
		}
		// 跟新选择班级的下拉列表中的内容
		function selectClassid() {
			var param = $("#xueqi").val();
			connectNetWork("selectClassid.action?xueqi=" + param, "classid",
					"classid", "classid", "major");
		}
		function selectTable() {
			var hostUrl = "${pageContext.request.contextPath }/iframeShow";
			var tableName = $("#table").val();
			var xueqi = $("#xueqi").val();
			var classid = $("#classid").val();
			$("#input_xueqi").val(xueqi);
			$("#input_classid").val(classid);
			$("#form").attr("action", hostUrl + tableName + ".action");
			$("#form").submit();
		}
		// 根据参数位置的jsonData填充element（select控件）的下拉选项
		// key 为option中value属性的值，value为option显示的内容
		function fillSelectElement(jsonData, element, key, value, other) {
			element.append("<option>======请选择======</option>");
			var temp; // 临时存放拼接的字符串
			//index表示在data中的索引位置，item表示包含的信息的对象  
			$.each(jsonData, function(index, item) {
				//获取对象中属性为optionsValue的值  
				temp = "<option value=\"" + item[key] + "\"> " + item[value];
				if (other != undefined)
					temp += item[other];
				temp += "</option>";
				element.append(temp);
			});
		}
		// 当页面加载完成后执行该方法，初始化学期下来列表
		$(document).ready(selectXueQi());
		// 填充下拉列表的内容，第一个参数为请求页面的URL，第二个参数为填充的下拉列表
		// key：option中value属性的值的key value：option中显示的值的key
		// 其他可选参数
		function connectNetWork(dataUrl, target, key, value, other) {
			$.ajax({
				url : "${pageContext.request.contextPath }/" + dataUrl, //请求的url地址
				dataType : "json", //返回格式
				async : true, //请求是否异步，默认为异步，这也是ajax重要特性
				data : {}, //参数值
				type : "GET", //请求方式
				success : function(jsonData) {
					var element = $("#" + target);
					element.empty();
					fillSelectElement(jsonData, element, key, value);
				},
				error : function() {
					alert("网络连接失败，排除网络故障后请刷新页面！");
				}
			});
		}
		function downloadTable() {
			;
			alert("下载表");
		}
		function alterTable() {
			var hostUrl = "${pageContext.request.contextPath }/iframeEdit";
			var tableName = $("#table").val();
			var xueqi = $("#xueqi").val();
			var classid = $("#classid").val();
			$("#input_xueqi").val(xueqi);
			$("#input_classid").val(classid);
			var form = $("#form");
			form.attr("action", hostUrl + tableName + ".action");
			form.submit();
		}
		function deleteTable() {
			;
			alert("删除表");
		}
	</script>
</body>
</html>