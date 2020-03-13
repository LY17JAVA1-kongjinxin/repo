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
</head>
<body>
<section class="content-header">
	<h1>&nbsp</h1>
	<ol class="breadcrumb">
		<li><a href="right.aspx"><i class="fa fa-dashboard"></i>Home</a></li>
		<li><a href="#">网站管理</a></li>
		<li class="active">关于荣江</li>
	</ol>
	</section>
	<section class="content">
	<div class="row">
		<div class="col-md-12">
			<div class="box box-info">
				<div class="box-header with-border">
					<h3 class="box-title">关于荣江：</h3>
				</div>
				<form class="form-horizontal" action="#"
					method="post">
					<div class="box-body">
						<div class="form-group">
							<label for="loginName" class="col-sm-1 control-label"></label>
							<div class="col-sm-10">
								<section class="content">
										<div class="row">
											<div class="col-md-12">
												<div class="box box-info">
													<div class="box-header">
														<h3 class="box-title">
															<small>关于荣江信息如下</small>
														</h3>
														<!-- tools box -->
														<div class="pull-right box-tools">
															<button type="button" class="btn btn-info btn-sm"
																data-widget="collapse" data-toggle="tooltip" title="Collapse">
																<i class="fa fa-minus"></i>
															</button>
															<button type="button" class="btn btn-info btn-sm"
																data-widget="remove" data-toggle="tooltip" title="Remove">
																<i class="fa fa-times"></i>
															</button>
														</div>
														<!-- /. tools -->
													</div>
													<!-- /.box-header -->
													<div class="box-body pad">
															<textarea id="editor1" name="editor1" rows="10" cols="80">
									                                           慈溪市荣江电子厂是接线端子和拨码开关的专业制造商。 多年来，我们不断致力于产品的研发，使企业得到了快速发展 ，在该领域居于领先地位，成为亚洲主要的接线端子供应商之 一。
									                                           公司通过了ISO9001质量管理休系认证。产品通过UL、 VDE、CE及CQC等多个国家标准的安全认证，并且符合欧盟RoHS 指令环保要求。
													公司的发展过程中，先后建立了研究中心、质量控制、模具制造、五金切削、注 塑成形、成品组装等一系列部门。产品的设计加工采用目前先进的软件和设备...
									                    </textarea>
													</div>
												</div>
												<!-- /.box -->
											</div>
											<!-- /.col-->
										</div>
							</section>
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

	<!-- jQuery 3 -->
	<script src="/RJDZ/js/jquery-min.js"></script>
	<!-- Bootstrap 3.3.7 -->
	<script src="/RJDZ/js/bootstrap.min.js"></script>
	<!-- FastClick -->
	<script src="/RJDZ/admin/plugins/fastclick/fastclick.js"></script>
	<!-- AdminLTE App -->
	<script src="/RJDZ/admin/dist/js/adminlte.min.js"></script>
	<!-- AdminLTE for demo purposes -->
	<script src="/RJDZ/admin/dist/js/demo.js"></script>
	<!-- CK Editor -->
	<script src="/RJDZ/ckeditor/ckeditor.js"></script>
	<!-- Bootstrap WYSIHTML5 -->
	<script src="/RJDZ/js/bootstrap3-wysihtml5.all.min.js"></script>
	<script>
		$(function() {
			// Replace the <textarea id="editor1"> with a CKEditor
			// instance, using default configuration.
			CKEDITOR.replace('editor1')
			//bootstrap WYSIHTML5 - text editor
			$('.textarea').wysihtml5()
		})
	</script>
</body>
</html>