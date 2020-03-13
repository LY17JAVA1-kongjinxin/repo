<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ include file="/admin/control.jsp"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>荣江电子厂</title>
<meta http-equiv="X-UA-Compatible" content="IE=edge" />
<!-- Tell the browser to be responsive to screen width -->
<meta
	content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no"
	name="viewport" />
<meta name="apple-mobile-web-app-capable" content="yes" />
<meta name="apple-mobile-web-app-status-bar-style" content="black" />
<meta name="apple-touch-fullscreen" content="yes" />
<link rel="stylesheet" href="${pageContext.request.contextPath}/css/bootstrap.min.css" />
<!-- Font Awesome -->
<link rel="stylesheet" href="${pageContext.request.contextPath}/css/font-awesome.min.css" />
<!-- Ionicons -->
<link rel="stylesheet" href="${pageContext.request.contextPath}/css/ionicons.min.css" />
<!-- Theme style -->
<link rel="stylesheet" href="${pageContext.request.contextPath}/admin/dist/css/AdminLTE.min.css" />
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/admin/dist/css/skins/_all-skins.min.css" />
<link rel="stylesheet" href="${pageContext.request.contextPath}/css/dataTables.bootstrap.min.css" />
<script type="text/javascript" src="${pageContext.request.contextPath}/js/jquery-2.2.3.min.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/js/layer/layer.js"></script>
<script type="text/javascript">
	function deladmin(aid,pageNo){
		var flag=confirm("您确定要删除这条记录吗?");
		if(flag){
			window.location.href="${pageContext.request.contextPath}/admin/del?aid="+aid+"&pageNo="+pageNo;
		}
	}
	function updadmin(aid,pageNo){
		window.location.href="${pageContext.request.contextPath}/admin/findById?aid="+aid+"&pageNo="+pageNo;
	}
	
	function search(){
		var fname=$("#myName").val();
		window.location.href="${pageContext.request.contextPath}/admin/findAdminByName?fname="+fname;
	}
	
</script>
</head>
<body>
	<form id="form1" runat="server">
		<section class="content-header">
		<h1>&nbsp;</h1>
		<ol class="breadcrumb">
			<li><a href="right.html"><i class="fa fa-dashboard"></i>Home</a></li>
			<li><a href="#">管理员管理</a></li>
			<li class="active">管理员列表</li>
		</ol>
		</section>
		<section class="content">
		<div class="row">
			<div class="col-md-12">
				<div class="box">
					<div class="box-header">
						<h3 class="box-title">管理员列表</h3>
					</div>
					<div class="box-body table-responsive no-padding">
						<table>
							<tr>
								<td colspan="4">关键词:<input type="text" id="myName"/><input
									type="button" value="搜索" onclick="search();"/></td>
							</tr>
						</table>
						<table id="grid"
							class="table table-striped table-bordered table-hover"
							cellspacing="0" width="100%">

							<thead>
								<tr>
									<th>编号</th>
									<th>管理员帐号</th>
									<th>管理员名称</th>
									<th>操作</th>
								</tr>
							</thead>
							<tbody>
								<c:forEach items="${requestScope.list }" var="admin">
									<tr>
										<td>${admin.aid }</td>
										<td>${admin.aLoginName }</td>
										<td>${admin.aTrueName }</td>
										<td><button id='editrow' class='btn btn-success btn-sm' type='button' onclick="updadmin(${admin.aid },${requestScope.pager.currentPage })">编辑</button>&nbsp
											<button id='delrow' class='btn btn-danger btn-sm'
												type='button' onclick="deladmin(${admin.aid },${requestScope.pager.currentPage })">删除</button></td>
									</tr>
								</c:forEach>
							</tbody>
							<tr>
								<td colspan="5" align="right">
									<ul class="pager">
										<li><a href="${pageContext.request.contextPath}/admin/findAll?pageNo=1">首页</a></li>
										<li><a href="${pageContext.request.contextPath}/admin/findAll?pageNo=${requestScope.pager.prePageNo }">上一页</a></li>
										<li><a href="${pageContext.request.contextPath}/admin/findAll?pageNo=${requestScope.pager.nextPageNo }">下一页</a></li>
										<li><a href="${pageContext.request.contextPath}/admin/findAll?pageNo=${requestScope.pager.totalPage }">尾页</a></li>
										<li><span>共${requestScope.pager.currentPage }/${requestScope.pager.totalPage }页</span></li>
									</ul>
								</td>
							</tr>
						</table>
					</div>
				</div>
			</div>
		</div>
		</section>
		<script type="text/javascript" src="${pageContext.request.contextPath}/js/bootstrap.min.js"></script>
		<script type="text/javascript"
			src="${pageContext.request.contextPath}/admin/plugins/slimScroll/jquery.slimscroll.min.js"></script>
		<script type="text/javascript" src="${pageContext.request.contextPath}/admin/plugins/fastclick/fastclick.js"></script>
		<script type="text/javascript" src="${pageContext.request.contextPath}/admin/dist/js/app.min.js"></script>
	</form>
</body>
</html>