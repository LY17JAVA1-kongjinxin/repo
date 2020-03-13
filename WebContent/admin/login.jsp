<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>荣江电子厂</title>
 <meta content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no" name="viewport" />
    <meta name="apple-mobile-web-app-capable" content="yes" />
    <meta name="apple-mobile-web-app-status-bar-style" content="black" />
    <meta name="apple-touch-fullscreen" content="yes" />
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/bootstrap.min.css"/>
    <!-- Font Awesome -->
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/font-awesome.min.css" />
    <!-- Ionicons -->
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/ionicons.min.css" />
    <!-- Theme style -->
    <link rel="stylesheet" href="${pageContext.request.contextPath}/admin/dist/css/AdminLTE.min.css" />
    <script src="${pageContext.request.contextPath}/js/jquery-2.2.3.min.js" type="text/javascript"></script>
    <script src="${pageContext.request.contextPath}/js/layer/layer.js" type="text/javascript"></script>
    <style type="text/css">
        .copyright {
            color: #FFF;
            text-shadow: 0px 1px 2px #000;
        }

        .login-panel {
            border-radius: 8px;
            background: rgba(255,255,255,0.6);
            position: relative;
            -webkit-box-shadow: 0 2px 2px 2px rgba(5,5,5,0.2);
            box-shadow: 0 2px 2px 2px rgba(5,5,5,0.2);
        }

        .login-page {
            background: url(${pageContext.request.contextPath}/admin/dist/img/loginbg.jpg) 0 0 no-repeat;
        }
    </style>
    <script type="text/javascript">
        function ig_onclick() {
            $("#ig").attr("src", "/ValidateImage.aspx?img=" + Math.random());
            //document.getElementById("ig").src = "/ValidateImage.aspx?img=" + Math.random();
        }
        function yanzheng() {
            var name = $("#txtUserName").val();
            var pwd = $("#txtPwd").val();
            var code = $("#txtCode").val();
            if (name.length <= 0) {
                $("#txtUserName").focus();
                layer.msg("请输入用户名", { icon: 2, skin: 'layer-ext-moon' });
                return false;
            }
            if (pwd.length <= 0) {
                $("#txtPwd").focus();
                layer.msg("请输入密码", { icon: 2, skin: 'layer-ext-moon' });
                return false;
            }
            if (code.length <= 0) {
                $("#txtCode").focus();
                layer.msg("请输入验证码", { icon: 2, skin: 'layer-ext-moon' });
                return false;
            }
            return true;
        }
    </script>
</head>
<body class="hold-transition login-page">
 <div class="login-box">
        <div class="login-logo">
            <a href="index.html">荣江电子厂</a>
        </div>
        <!-- /.login-logo -->
        <div class="login-box-body login-panel">
            <p class="login-box-msg">欢迎您登录荣江电子厂</p>
            <form action="${pageContext.request.contextPath}/admin/login" method="post">
                <div class="form-group has-feedback">
                	<input type="text" id="txtUserName" name="txtUserName" class="form-control" placeholder="请输入用户名" value="admin"/>
                    <span class="glyphicon glyphicon-user form-control-feedback"></span>
                </div>
                <div class="form-group has-feedback">
                	<input type="password" id="txtPwd" name="txtPwd" class="form-control" placeholder="请输入密码" value="123456"/>                    
                    <span class="glyphicon glyphicon-lock form-control-feedback"></span>
                </div>
                <!-- <div class="form-group">
                	<input type="text" id="txtCode" name="txtCode" class="form-control" placeholder="请输入验证码" />
                    <img src="../ValidateImage.aspx" id="ig" class="img-responsive" style="cursor: pointer" onclick="ig_onclick()" height="60px" width="100px" />
                </div> -->
                <div class="row">
                    <!-- /.col -->
                    <div class="col-md-offset-8 col-md-4">
                    	<input type="submit" value="登录" class="btn btn-primary btn-block btn-flat" onclick="return yanzheng()"/>                        
                    </div>
                    <!-- /.col -->
                </div>
            </form>
        </div>
        <!-- /.login-box-body -->
        <div class="copyright text-center">
            Copyright©2018-2028 荣江电子厂 版权所有<br />技术支持：清华ITJava1731
        </div>
    </div>    
    <script src="${pageContext.request.contextPath}/js/bootstrap.min.js" type="text/javascript"></script>    
</body>
</html>