<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
 <meta http-equiv="X-UA-Compatible" content="IE=edge" />
	    <!-- Tell the browser to be responsive to screen width -->
	    <meta content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no" name="viewport" />
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
	    <link rel="stylesheet" href="/RJDZ/admin/dist/css/skins/_all-skins.min.css" />
	    <script type="text/javascript" src="/RJDZ/js/jquery-2.2.3.min.js"></script>
	    <script type="text/javascript" src="/RJDZ/js/layer/layer.js"></script>
	    <script type="text/javascript">
	        function yanzheng() {
	        	var pName = $("#pName").val();
	            var pDesc = $("#pDesc").val();
	            if (pName.length <= 0) {
	                $("#pName").focus();
	                layer.msg("请输入产品名称", { icon: 2, skin: 'layer-ext-moon' });
	                return false;
	            }
	            if (pDesc.length <= 0) {
	                $("#pDesc").focus();
	                layer.msg("请输入产品描述", { icon: 2, skin: 'layer-ext-moon' });
	                return false;
	            }
	            return true;
	        }
	        $(function(){
	        	var pTidValue=$("#pTid").attr("title");
	        	$.post("/RJDZ/productType?type=findAllJSON",function(json){
	        		var objs=$.parseJSON(json);
	        		$.each(objs,function(i,e){
	        			if(e.pid==pTidValue){
	        				$("#pTid").append("<option value='"+e.pid+"' selected='selected'>"+e.pname+"</option>")
	        			}else{
	        				$("#pTid").append("<option value='"+e.pid+"'>"+e.pname+"</option>")
	        			}
	        			
	        		});
	        	});
	        });
	    </script>
</head>
<body>
<section class="content-header">
        <h1>&nbsp</h1>
        <ol class="breadcrumb">
            <li><a href="right.aspx"><i class="fa fa-dashboard"></i>Home</a></li>
            <li><a href="#">产品管理</a></li>
            <li class="active">修改产品</li>
        </ol>
	    </section>
	    <section class="content">
	        <div class="row">
	            <div class="col-md-12">
	                <div class="box box-info">
	                    <div class="box-header with-border">
	                        <h3 class="box-title">修改产品</h3>
	                    </div>
	                    <form class="form-horizontal" action="/RJDZ/product?type=upd" method="post" enctype="multipart/form-data">
	                        <div class="box-body">
	                            <div class="form-group">
	                                <label for="pTid" class="col-sm-2 control-label">产品类型：</label>
	                                <div class="col-sm-10">
	                                	<input type="hidden" name="pageNo" value="${requestScope.pageNo }">
	                                	<input type="hidden" name="pid" value="${requestScope.product.pid }">
	                                	<select name="pTid" id="pTid" title="${requestScope.product.ptid }">
	                                	</select>
	                                </div>
	                            </div>	                         
	                            <div class="form-group">
	                                <label for="pName" class="col-sm-2 control-label">产品名称：</label>
	                                <div class="col-sm-10">
	                                	<input type="text" id="pName" name="pName" class="form-control" placeholder="请输入产品名称" value="${requestScope.product.pproname }"/>
	                                </div>
	                            </div>	                         
	                            <div class="form-group">
	                                <label for="pDesc" class="col-sm-2 control-label">产品描述：</label>
	                                <div class="col-sm-10">
	                                	<input type="text" id="pDesc" name="pDesc" class="form-control" placeholder="请输入产品描述" value="${requestScope.product.pdesc }"/>
	                                </div>
	                            </div>
	                            <div class="form-group">
							<label for="pFile" class="col-sm-2 control-label">请选择产品图片：</label>
							<div class="col-sm-10">
								<input type="file" id="pFile" name="pFile" class="form-control" />
							</div>
						</div>                         
	                        </div>
	                        <div class="box-footer">
	                            <div class="col-sm-offset-2 col-sm-8">
	                            	<input type="submit" id="btnok" value="保 存" class="btn btn-block btn-info btn-lg" onclick="return yanzheng()" />
	                            </div>
	                            <div class="col-sm-2">&nbsp;</div>
	                        </div>
	                    </form>
	                </div>
	            </div>
	        </div>
	    </section>
	    <script src="/RJDZ/admin/js/bootstrap.min.js" type="text/javascript"></script>
	    <script src="/RJDZ/admin/plugins/slimScroll/jquery.slimscroll.min.js" type="text/javascript"></script>
	    <script src="/RJDZ/admin/plugins/fastclick/fastclick.js" type="text/javascript"></script>
	    <script src="/RJDZ/admin/dist/js/app.min.js" type="text/javascript"></script>
</body>
</html>