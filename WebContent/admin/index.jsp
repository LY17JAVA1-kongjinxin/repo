<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="control.jsp"%>
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
<link rel="stylesheet" href="${pageContext.request.contextPath}/admin/dist/css/skins/_all-skins.min.css" />
<script type="text/javascript" src="${pageContext.request.contextPath}/js/jquery-2.2.3.min.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/js/layer/layer.js"></script>
</head>
<body class="hold-transition skin-blue sidebar-mini">
	<form id="form1" runat="server">
		<div class="wrapper">
			<header class="main-header"> <a href="index.jsp"
				class="logo"> <span class="logo-mini"><img
					src="${pageContext.request.contextPath}/img/logo-collapsed.png" width="40" /></span> <span
				class="logo-lg"><img src="${pageContext.request.contextPath}/img/logo-collapsed.png"
					width="40" style="margin-top: -5px;" />荣江电子厂</span>
			</a> <nav class="navbar navbar-static-top"> <a href="#"
				class="sidebar-toggle" data-toggle="offcanvas" role="button"> <span
				class="sr-only">Toggle navigation</span> <span class="icon-bar"></span>
				<span class="icon-bar"></span> <span class="icon-bar"></span>
			</a>
			<div class="navbar-custom-menu">
				<ul class="nav navbar-nav">
					<li class="dropdown user user-menu"><a href="#"
						class="dropdown-toggle" data-toggle="dropdown"> <img
							src="${pageContext.request.contextPath}/img/guanliyuan.jpg" class="user-image" alt="User Image" />
							<asp:Label ID="lblUserName" runat="server" class="hidden-xs"></asp:Label>
					</a>
						<ul class="dropdown-menu">
							<li class="user-header"><img src="${pageContext.request.contextPath}/img/guanliyuan.jpg"
								class="img-circle" alt="User Image" />
								<p>
									欢迎管理员登录 <small>荣江电子厂</small>
								</p></li>
							<li class="user-body">
								<div class="row">
									<div class="col-xs-4 text-center">
										<a href="${pageContext.request.contextPath}/news/findAll" target="iframecon">资讯列表</a>
									</div>
									<div class="col-xs-4 text-center">
										<a href="${pageContext.request.contextPath}/product/findAll" target="iframecon">产品列表</a>
									</div>
									<div class="col-xs-4 text-center">
										<a href="${pageContext.request.contextPath}/friends/findAll" target="iframecon">友情链接</a>
									</div>
								</div>
							</li>
							<li class="user-footer">
								<div class="pull-left">
									<a href="${pageContext.request.contextPath}/admin/adminpwd.jsp" target="iframecon"
										class="btn btn-default btn-flat">修改密码</a>
								</div>
								<div class="pull-right">
									<a href="${pageContext.request.contextPath}/admin/logout"
										class="btn btn-default btn-flat">退出</a>
								</div>
							</li>
						</ul></li>
					<li><a href="${pageContext.request.contextPath}/admin/logout">退出</a></li>
				</ul>
			</div>
			</nav> </header>
			<aside class="main-sidebar"> <section class="sidebar">
			<div class="user-panel">
				<div class="pull-left image">
					<img src="${pageContext.request.contextPath}/img/guanliyuan.jpg" class="img-circle"
						alt="User Image" />
				</div>
				<div class="pull-left info">
					<p id="pname"></p>
					<a href="#"><i class="fa fa-circle text-success"></i>${sessionScope.ADMIN.aLoginName}</a>
				</div>
			</div>
			<ul class="sidebar-menu">
				<li class="header">系统菜单</li>
				<li><a href="index.jsp"> <i class="fa fa-home"></i><span>Home</span>
				</a></li>
				<li class="treeview"><a href="#"> <i class="fa fa-user"></i><span>管理员管理</span>
						<span class="pull-right-container"> <i
							class="fa fa-angle-left pull-right"></i>
					</span>
				</a>
					<ul class="treeview-menu">
						<li><a href="adminInfo.jsp" target="iframecon"><i
								class="fa fa-circle-o"></i>添加管理员</a></li>
						<li><a href="${pageContext.request.contextPath}/admin/findAll" target="iframecon"><i
								class="fa fa-circle-o"></i>管理管列表</a></li>
					</ul></li>
				<li class="treeview"><a href="#"> <i
						class="fa fa-newspaper-o"></i><span>资讯管理</span> <span
						class="pull-right-container"> <i
							class="fa fa-angle-left pull-right"></i>
					</span>
				</a>
					<ul class="treeview-menu">
						<li><a href="article/newsInfo.jsp" target="iframecon"><i
								class="fa fa-circle-o"></i>添加资讯</a></li>
						<li><a href="${pageContext.request.contextPath}/news/findAll" target="iframecon"><i
								class="fa fa-circle-o"></i>资讯列表</a></li>
					</ul></li>
				<li class="treeview"><a href="#"> <i class="fa fa-folder"></i><span>产品管理</span>
						<span class="pull-right-container"> <i
							class="fa fa-angle-left pull-right"></i>
					</span>
				</a>
					<ul class="treeview-menu">
						<li><a href="product/addProductType.jsp" target="iframecon"><i
								class="fa fa-circle-o"></i>添加产品分类</a></li>
						<li><a href="${pageContext.request.contextPath}/productType/findAll"
							target="iframecon"><i class="fa fa-circle-o"></i>产品分类列表</a></li>
						<li><a href="product/addProduct.jsp" target="iframecon"><i
								class="fa fa-circle-o"></i>添加产品</a></li>
						<li><a href="${pageContext.request.contextPath}/product/findAll" target="iframecon"><i
								class="fa fa-circle-o"></i>产品列表</a></li>
					</ul></li>
				<li class="treeview"><a href="#"> <i class="fa fa-link"></i><span>友情链接管理</span>
						<span class="pull-right-container"> <i
							class="fa fa-angle-left pull-right"></i>
					</span>
				</a>
					<ul class="treeview-menu">
						<li><a href="friends/friendsInfo.jsp" target="iframecon"><i
								class="fa fa-circle-o"></i>添加友情链接</a></li>
						<li><a href="${pageContext.request.contextPath}/friends/findAll" target="iframecon"><i
								class="fa fa-circle-o"></i>友情链接列表</a></li>
					</ul></li>
				<li class="treeview"><a href="#"> <i class="fa fa-cog"></i><span>网站管理</span>
						<span class="pull-right-container"> <i
							class="fa fa-angle-left pull-right"></i>
					</span>
				</a>
					<ul class="treeview-menu">
						<li><a href="${pageContext.request.contextPath}/admin/config/contact.jsp"
							target="iframecon"><i class="fa fa-circle-o"></i>联系我们</a></li>
						<li><a href="${pageContext.request.contextPath}/admin/config/about.jsp" target="iframecon"><i
								class="fa fa-circle-o"></i>关于荣江</a></li>
						<li><a href="${pageContext.request.contextPath}/admin/config/summary.jsp"
							target="iframecon"><i class="fa fa-circle-o"></i>公司简介</a></li>
					</ul></li>
			</ul>
			</section> </aside>
			<div class="content-wrapper" style="background-color: #FFF;">
				<iframe class="embed-responsive-item" src="right.jsp" id="iframecon"
					style="min-height: 724px;" name="iframecon" scrolling="no"
					onload="iFrameHeight()" width="100%" frameborder="0" border="0"
					allowfullscreen></iframe>
			</div>
			<footer class="main-footer" style="text-align: center;"> <strong>Copyright
				&copy; 2018-2028 <a href="${pageContext.request.contextPath}/admin/index.jsp" target="_blank">荣江电子厂</a>.
			</strong> All rightsreserved. </footer>
		</div>
		<script src="${pageContext.request.contextPath}/js/bootstrap.min.js"></script>
		<script src="${pageContext.request.contextPath}/admin/plugins/slimScroll/jquery.slimscroll.min.js"></script>
		<script src="${pageContext.request.contextPath}/admin/plugins/fastclick/fastclick.js"></script>
		<script src="${pageContext.request.contextPath}/admin/dist/js/app.min.js"></script>
		<!--iframe自适应内容高度js-->
		<script type="text/javascript">
			function iFrameHeight() {
				var ifm = document.getElementById("iframecon");
				var subWeb = document.frames ? document.frames["iframecon"].document
						: ifm.contentDocument;
				if (ifm != null && subWeb != null) {
					ifm.height = subWeb.body.scrollHeight + 100;
				}
			}
		</script>
	</form>
</body>
</html>