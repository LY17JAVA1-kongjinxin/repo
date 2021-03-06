<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ include file="/admin/control.jsp"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<meta http-equiv="X-UA-Compatible" content="IE=edge" />
<!-- Tell the browser to be responsive to screen width -->
<meta
	content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no"
	name="viewport" />
<meta name="apple-mobile-web-app-capable" content="yes" />
<meta name="apple-mobile-web-app-status-bar-style" content="black" />
<meta name="apple-touch-fullscreen" content="yes" />
<link rel="stylesheet" href="/RJDZ/css/bootstrap.min.css" />
<!-- Font Awesome -->
<link rel="stylesheet" href="/RJDZ/css/font-awesome.min.css" />
<!-- Ionicons -->
<link rel="stylesheet" href="/RJDZ/css/ionicons.min.css" />
<!-- Theme style -->
<link rel="stylesheet" href="/RJDZ/admin/dist/css/AdminLTE.min.css" />
<link rel="stylesheet"
	href="/RJDZ/admin/dist/css/skins/_all-skins.min.css" />
<link rel="stylesheet" href="/RJDZ/css/dataTables.bootstrap.min.css" />
<script type="text/javascript" src="/RJDZ/js/jquery-2.2.3.min.js"></script>
<script type="text/javascript" src="/RJDZ/js/layer/layer.js"></script>
<script type="text/javascript">
	function delNews(nid,pageNo){
		var flag=confirm("您确定要删除这条记录吗?");
		if(flag){
			window.location.href="/RJDZ/news?type=del&nid="+nid+"&pageNo="+pageNo;
		}
	}
	function updNews(nid,pageNo){
		window.location.href="/RJDZ/news?type=findById&nid="+nid+"&pageNo="+pageNo;
	}
	
</script>
</head>
<body>
	<form id="form1" runat="server">
		<section class="content-header">
		<h1>&nbsp;</h1>
		<ol class="breadcrumb">
			<li><a href="right.html"><i class="fa fa-dashboard"></i>Home</a></li>
			<li><a href="#">资讯管理</a></li>
			<li class="active">资讯列表</li>
		</ol>
		</section>
		<section class="content">
		<div class="row">
			<div class="col-md-12">
				<div class="box">
					<div class="box-header">
						<h3 class="box-title">资讯列表</h3>
					</div>
					<div class="box-body table-responsive no-padding">
						<table>
							<tr>
								<td colspan="4">关键词:<input type="text" /><input
									type="button" value="搜索" /></td>
							</tr>
						</table>
						<table id="grid"
							class="table table-striped table-bordered table-hover"
							cellspacing="0" width="100%">

							<thead>
								<tr>
									<th>编号</th>
									<th>新闻标题</th>
									<th>新闻内容</th>
									<th>点击率</th>
									<th>创建日期</th>
									<th>操作</th>
								</tr>
							</thead>
							<tbody>
								<c:forEach items="${requestScope.list }" var="news">
									<tr>
										<td>${news.nid }</td>
										<td>${news.ntitle }</td>
										<td>${news.ndesc }</td>
										<td>${news.nclick }</td>
										<td>${news.ntime }</td>
										<td><button id='editrow' class='btn btn-success btn-sm' type='button' onclick="updNews(${news.nid },${requestScope.pager.currentPage })">编辑</button>&nbsp
											<button id='delrow' class='btn btn-danger btn-sm'
												type='button' onclick="delNews(${news.nid },${requestScope.pager.currentPage })">删除</button></td>
									</tr>
								</c:forEach>
							</tbody>
							<tr>
								<td colspan="6" align="right">
									<ul class="pager">
										<li><a href="/RJDZ/news?type=findAll&pageNo=1">首页</a></li>
										<li><a href="/RJDZ/news?type=findAll&pageNo=${requestScope.pager.prePageNo }">上一页</a></li>
										<li><a href="/RJDZ/news?type=findAll&pageNo=${requestScope.pager.nextPageNo }">下一页</a></li>
										<li><a href="/RJDZ/news?type=findAll&pageNo=${requestScope.pager.totalPage }">尾页</a></li>
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
		<script type="text/javascript" src="/RJDZ/js/bootstrap.min.js"></script>
		<script type="text/javascript"
			src="/RJDZ/admin/plugins/slimScroll/jquery.slimscroll.min.js"></script>
		<script type="text/javascript" src="/RJDZ/admin/plugins/fastclick/fastclick.js"></script>
		<script type="text/javascript" src="/RJDZ/admin/dist/js/app.min.js"></script>
	</form>
</body>
</html>