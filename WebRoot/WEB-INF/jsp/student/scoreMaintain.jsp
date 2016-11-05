<%@page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta name="viewport"
	content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=0" />
<title>学生首页</title>
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
			<span class="pageTitle"><span class="icon-screen"></span>主页</span>
			<div class="clear"></div>
		</div>




		<!-- Main content -->
		<div class="wrapper">
			<!-- Media table sample -->
			<div class="widget check">
				<div class="whead">
					<span class="titleIcon"><input type="checkbox"
						id="titleCheck" name="titleCheck" /></span>
					<h6>我的加分项</h6>
					<div class="clear"></div>
				</div>
				<table cellpadding="0" cellspacing="0" width="100%"
					class="tDefault checkAll tMedia" id="checkAll">
					<thead>
						<tr>
							<td><img src="images/elements/other/tableArrows.png" alt="" /></td>
							<td width="50">Image</td>
							<td class="sortCol"><div>
									Description<span></span>
								</div></td>
							<td width="130" class="sortCol"><div>
									Date<span></span>
								</div></td>
							<td width="120">File info</td>
							<td width="100">Actions</td>
						</tr>
					</thead>
					<tfoot>
						<tr>
							<td colspan="6">
								<div class="itemActions">
									<label>Apply action:</label> <select>
										<option value="">Select action...</option>
										<option value="Edit">Edit</option>
										<option value="Delete">Delete</option>
										<option value="Move">Move somewhere</option>
									</select>
								</div>
								<div class="tPages">
									<ul class="pages">
										<li class="prev"><a href="#" title=""><span
												class="icon-arrow-14"></span></a></li>
										<li><a href="#" title="" class="active">1</a></li>
										<li><a href="#" title="">2</a></li>
										<li><a href="#" title="">3</a></li>
										<li><a href="#" title="">4</a></li>
										<li><a href="#" title="">5</a></li>
										<li><a href="#" title="">6</a></li>
										<li>...</li>
										<li><a href="#" title="">20</a></li>
										<li class="next"><a href="#" title=""><span
												class="icon-arrow-17"></span></a></li>
									</ul>
								</div>
							</td>
						</tr>
					</tfoot>
					<tbody>
						<tr>
							<td><input type="checkbox" name="checkRow" /></td>
							<td><a href="images/big.png" title="" class="lightbox"><img
									src="images/live/face1.png" alt="" /></a></td>
							<td class="textL"><a href="#" title="">Image1
									description</a></td>
							<td>Feb 12, 2012. 12:28</td>
							<td class="fileInfo"><span><strong>Size:</strong> 215
									Kb</span><span><strong>Format:</strong> .jpg</span></td>
							<td class="tableActs"><a href="#"
								class="tablectrl_small bDefault tipS" title="Edit"><span
									class="iconb" data-icon="&#xe1db;"></span></a> <a href="#"
								class="tablectrl_small bDefault tipS" title="Remove"><span
									class="iconb" data-icon="&#xe136;"></span></a> <a href="#"
								class="tablectrl_small bDefault tipS" title="Options"><span
									class="iconb" data-icon="&#xe1f7;"></span></a></td>
						</tr>
						<tr>
							<td><input type="checkbox" name="checkRow" /></td>
							<td><a href="images/big.png" title="" class="lightbox"><img
									src="images/live/face1.png" alt="" /></a></td>
							<td class="textL"><a href="#" title="">Image1
									description</a></td>
							<td>Feb 12, 2012. 12:28</td>
							<td class="fileInfo"><span><strong>Size:</strong> 215
									Kb</span><span><strong>Format:</strong> .jpg</span></td>
							<td class="tableActs"><a href="#"
								class="tablectrl_small bDefault tipS" title="Edit"><span
									class="iconb" data-icon="&#xe1db;"></span></a> <a href="#"
								class="tablectrl_small bDefault tipS" title="Remove"><span
									class="iconb" data-icon="&#xe136;"></span></a> <a href="#"
								class="tablectrl_small bDefault tipS" title="Options"><span
									class="iconb" data-icon="&#xe1f7;"></span></a></td>
						</tr>
						<tr>
							<td><input type="checkbox" name="checkRow" /></td>
							<td><a href="images/big.png" title="" class="lightbox"><img
									src="images/live/face1.png" alt="" /></a></td>
							<td class="textL"><a href="#" title="">Image1
									description</a></td>
							<td>Feb 12, 2012. 12:28</td>
							<td class="fileInfo"><span><strong>Size:</strong> 215
									Kb</span><span><strong>Format:</strong> .jpg</span></td>
							<td class="tableActs"><a href="#"
								class="tablectrl_small bDefault tipS" title="Edit"><span
									class="iconb" data-icon="&#xe1db;"></span></a> <a href="#"
								class="tablectrl_small bDefault tipS" title="Remove"><span
									class="iconb" data-icon="&#xe136;"></span></a> <a href="#"
								class="tablectrl_small bDefault tipS" title="Options"><span
									class="iconb" data-icon="&#xe1f7;"></span></a></td>
						</tr>
						<tr>
							<td><input type="checkbox" name="checkRow" /></td>
							<td><a href="images/big.png" title="" class="lightbox"><img
									src="images/live/face1.png" alt="" /></a></td>
							<td class="textL"><a href="#" title="">Image1
									description</a></td>
							<td>Feb 12, 2012. 12:28</td>
							<td class="fileInfo"><span><strong>Size:</strong> 215
									Kb</span><span><strong>Format:</strong> .jpg</span></td>
							<td class="tableActs"><a href="#"
								class="tablectrl_small bDefault tipS" title="Edit"><span
									class="iconb" data-icon="&#xe1db;"></span></a> <a href="#"
								class="tablectrl_small bDefault tipS" title="Remove"><span
									class="iconb" data-icon="&#xe136;"></span></a> <a href="#"
								class="tablectrl_small bDefault tipS" title="Options"><span
									class="iconb" data-icon="&#xe1f7;"></span></a></td>
						</tr>
						<tr>
							<td><input type="checkbox" name="checkRow" /></td>
							<td><a href="images/big.png" title="" class="lightbox"><img
									src="images/live/face1.png" alt="" /></a></td>
							<td class="textL"><a href="#" title="">Image1
									description</a></td>
							<td>Feb 12, 2012. 12:28</td>
							<td class="fileInfo"><span><strong>Size:</strong> 215
									Kb</span><span><strong>Format:</strong> .jpg</span></td>
							<td class="tableActs"><a href="#"
								class="tablectrl_small bDefault tipS" title="Edit"><span
									class="iconb" data-icon="&#xe1db;"></span></a> <a href="#"
								class="tablectrl_small bDefault tipS" title="Remove"><span
									class="iconb" data-icon="&#xe136;"></span></a> <a href="#"
								class="tablectrl_small bDefault tipS" title="Options"><span
									class="iconb" data-icon="&#xe1f7;"></span></a></td>
						</tr>
					</tbody>
				</table>
			</div>


		</div>



	</div>
	<!-- Content ends -->
</body>
</html>
