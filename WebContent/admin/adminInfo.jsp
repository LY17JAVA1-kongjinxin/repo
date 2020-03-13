<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
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
<script type="text/javascript" src="${pageContext.request.contextPath}/js/jquery-2.2.3.min.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/js/layer/layer.js"></script>
<script type="text/javascript">
	function yanzheng() {
		var aLoginName = $("#aLoginName").val();
		var aPassWord = $("#aPassWord").val();
	    var rePassWord = $("#rePassWord").val();
	    var aTrueName = $("#aTrueName").val();
	    
	    if (aLoginName.length <= 0) {
	        $("#aLoginName").focus();
	        layer.msg("请输入用户名", { icon: 2, skin: 'layer-ext-moon' });
	        return false;
	    }
	    if (aPassWord.length <= 0) {
	        $("#aPassWord").focus();
	        layer.msg("请输入密码", { icon: 2, skin: 'layer-ext-moon' });
	        return false;
	    }
	    if (rePassWord.length <= 0) {
	        $("#rePassWord").focus();
	        layer.msg("请输入确认密码", { icon: 2, skin: 'layer-ext-moon' });
	        return false;
	    }
	    if (rePassWord!=aPassWord) {
	        $("#rePassWord").focus();
	        layer.msg("两次密码不一致", { icon: 2, skin: 'layer-ext-moon' });
	        return false;
	    }
	    if (aTrueName.length <= 0) {
	        $("#aTrueName").focus();
	        layer.msg("请输入真实姓名", { icon: 2, skin: 'layer-ext-moon' });
	        return false;
	    }
	    return true;
	}
</script>
</head>
<body>
	<section class="content-header">
	<h1>&nbsp</h1>
	<ol class="breadcrumb">
		<li><a href="right.aspx"><i class="fa fa-dashboard"></i>Home</a></li>
		<li><a href="#">管理员管理</a></li>
		<li class="active">添加管理员</li>
	</ol>
	</section>
	<section class="content">
	<div class="row">
		<div class="col-md-12">
			<div class="box box-info">
				<div class="box-header with-border">
					<h3 class="box-title">添加管理员</h3>
				</div>
				<form class="form-horizontal" action="${pageContext.request.contextPath}/admin/add"
					method="post">
					<div class="box-body">
						<div class="form-group">
							<label for="aLoginName" class="col-sm-2 control-label">管理员帐号：</label>
							<div class="col-sm-10">
								<input type="text" id="aLoginName" name="aLoginName" class="form-control"
									placeholder="请输入管理员帐号" />
							</div>
						</div>
						<div class="form-group">
							<label for="aPassWord" class="col-sm-2 control-label">管理员密码：</label>
							<div class="col-sm-10">
								<input type="password" id="aPassWord" name="aPassWord" class="form-control"
									placeholder="请输入管理员密码" />
							</div>
						</div>
						<div class="form-group">
							<label for="rePassWord" class="col-sm-2 control-label">管理员确认密码：</label>
							<div class="col-sm-10">
								<input type="password" id="rePassWord" name="rePassWord" class="form-control"
									placeholder="请输入管理员确认密码" />
							</div>
						</div>
						<div class="form-group">
							<label for="aTrueName" class="col-sm-2 control-label">管理员真实名称：</label>
							<div class="col-sm-10">
								<input type="text" id="aTrueName" name="aTrueName" class="form-control"
									placeholder="请输入管理员真实名称" />
							</div>
						</div>
					</div>
					<div class="box-footer">
						<div class="col-sm-offset-2 col-sm-8">
							<input type="submit" id="btnok" value="保 存"
								class="btn btn-block btn-info btn-lg"
								onclick="return yanzheng()" />
						</div>
						<div class="col-sm-2">&nbsp;</div>
					</div>
				</form>
			</div>
		</div>
	</div>
	</section>
	<script src="${pageContext.request.contextPath}/admin/js/bootstrap.min.js" type="text/javascript"></script>
	<script src="${pageContext.request.contextPath}/admin/plugins/slimScroll/jquery.slimscroll.min.js"
		type="text/javascript"></script>
	<script src="${pageContext.request.contextPath}/admin/plugins/fastclick/fastclick.js"
		type="text/javascript"></script>
	<script src="${pageContext.request.contextPath}/admin/dist/js/app.min.js" type="text/javascript"></script>
</body>
</html>