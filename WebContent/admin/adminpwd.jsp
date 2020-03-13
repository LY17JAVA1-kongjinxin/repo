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
<link rel="stylesheet" href="/RJDZ/css/bootstrap.min.css" />
<!-- Font Awesome -->
<link rel="stylesheet" href="/RJDZ/css/font-awesome.min.css" />
<!-- Ionicons -->
<link rel="stylesheet" href="/RJDZ/css/ionicons.min.css" />
<!-- Theme style -->
<link rel="stylesheet" href="/RJDZ/admin/dist/css/AdminLTE.min.css" />
<link rel="stylesheet"
	href="/RJDZ/admin/dist/css/skins/_all-skins.min.css" />
<script type="text/javascript" src="/RJDZ/js/jquery-2.2.3.min.js"></script>
<script type="text/javascript" src="/RJDZ/js/layer/layer.js"></script>
<script type="text/javascript">
function yanzheng() {
    var pwd = $("#userPass").val();
    var repwd = $("#rePass").val();
    
    if (pwd.length <= 0) {
        $("#userPass").focus();
        layer.msg("请输入密码", { icon: 2, skin: 'layer-ext-moon' });
        return false;
    }
    if (repwd.length <= 0) {
        $("#rePass").focus();
        layer.msg("请输入确认密码", { icon: 2, skin: 'layer-ext-moon' });
        return false;
    }
    if (repwd!=pwd) {
        $("#rePass").focus();
        layer.msg("两次密码不一致", { icon: 2, skin: 'layer-ext-moon' });
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
		<li class="active">修改密码</li>
	</ol>
	</section>
	<section class="content">
	<div class="row">
		<div class="col-md-12">
			<div class="box box-info">
				<div class="box-header with-border">
					<h3 class="box-title">修改密码</h3>
				</div>
				<form class="form-horizontal" action="/RJDZ/admin?type=upd"
					method="post">
					<div class="box-body">
						<div class="form-group">
							<label for="userPass" class="col-sm-2 control-label">新密码：</label>
							<div class="col-sm-10">
								<input type="hidden" name="pageNo" value="${requestScope.pageNo }"/>
								<input type="text" id="userPass" name="userPass" class="form-control"
									placeholder="请输入密码" />
							</div>
						</div>
						<div class="form-group">
							<label for="rePass" class="col-sm-2 control-label">确认密码：</label>
							<div class="col-sm-10">
								<input type="text" id="rePass" name="rePass" class="form-control"
									placeholder="请输入确认密码" />
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
	<script src="/RJDZ/admin/js/bootstrap.min.js" type="text/javascript"></script>
	<script src="/RJDZ/admin/plugins/slimScroll/jquery.slimscroll.min.js"
		type="text/javascript"></script>
	<script src="/RJDZ/admin/plugins/fastclick/fastclick.js"
		type="text/javascript"></script>
	<script src="/RJDZ/admin/dist/js/app.min.js" type="text/javascript"></script>
</body>
</html>