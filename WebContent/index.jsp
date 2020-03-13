<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>	
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>慈溪市荣江电子厂</title>
<meta content="慈溪市荣江电子厂" name="keywords" />
<meta content="慈溪市荣江电子厂" name="description" />
<link rel="stylesheet" type="text/css" href="css/base.css" />
<link rel="stylesheet" type="text/css" href="css/global.css" />
<!-------可重复的无缝滚动-------->
<link rel="stylesheet" type="text/css" href="css/marquee-two.css" />
<script type="text/javascript" src="js/marquee-two.js"></script>
<script type="text/javascript" src="js/jquery.js"></script>
<script type="text/javascript">
	$(function() {
		// 加载产品类型
		$.post("/RJDZ/webjson?type=findProType", function(json) {
			var objs = $.parseJSON(json);
			$.each(objs, function(i, e) {
				$(".list").append("<li><a href=''>" + e.pname + "</a></li>")
			});
		});
		
		// 加载产品,动画效果出错
		$("#pptype").remove();
		$.post("/RJDZ/webjson?type=findProducts", function(json) {
			var objs = $.parseJSON(json);
			$.each(objs, function(i, e) {
				$(".pro-list").append("<li><span class='pro-img'><a href='#'> <img src='/RJDZ/"+e.pimg+"' width='162' height='118'></a></span> <span class='pro-title'> <a href='#'>"+e.pproname+"</a></span></li>")
			});
		}); 
		
		//加载新闻
		$.post("/RJDZ/webjson?type=findNews", function(json) {
			var objs = $.parseJSON(json);
			$.each(objs, function(i, e) {
				$(".news").append("<li><a href='' onclick='newClick("+e.nid+")'>" + e.ntitle + "</a></li>");
			});
		});
		
		//加载友情连接
		$.post("/RJDZ/webjson?type=findFriends", function(json) {
			var objs = $.parseJSON(json);
			$.each(objs, function(i, e) {
				$(".link-pic").append("<li><a href='"+e.furl+"'><img alt='"+e.fname+"' title='"+e.fname+"'src='"+e.fimg+"' width='108' height='38' /></a></li>");
			});
		});
	});
	
	// 点击率
	//
	function newClick(nid){
		$.post("/RJDZ/webjson?type=newsClick&nid="+nid,function(data){
			var obj=$.parseJSON(data);
			alert(obj)
			alert(obj.flag)
		});
	}
	
	
	
</script>
<!-------可重复的无缝滚动 end-------->
</head>
<body>
	<jsp:include page="header.jsp"></jsp:include>
	<div class="wrap">
		<div class="w235 fl">
			<div class="w233 border bg-blue"
				style="height: 90px; overflow: hidden;">
				<table width="100%" border="0" cellpadding="0" cellspacing="0">
					<tr>
						<td colspan="3" height="35" class="pl10"><span
							class="fb f14 blue">产品搜索</span></td>
					</tr>
					<tr>
						<td width="55" height="45" align="right">关键字：</td>
						<td width="127"><input type="text" class="txt c9"
							value="请输入产品名或型号" onclick="if(value==defaultValue){value=''}"
							onBlur="if(!value){value=defaultValue;}" /></td>
						<td><input type="submit" class="btn fb" value="搜索" /></td>
					</tr>
				</table>
			</div>
			<div class="h10"></div>
			<div class="w235">
				<h1 class="pro-name f16 wryh fn">产品分类</h1>
				<div class="border-nt p10" style="height: 410px; overflow: hidden;">
					<ul class="list">
					</ul>
				</div>
			</div>
		</div>
		<div class="w735 fr">
			<div class="w446 fl border p0-10">
				<h1 class="title1">
					<a href="" class="more"><img alt="更多" src="img/more.gif"
						width="31" height="5" /></a><em class="title1-a">公司简介</em>
				</h1>
				<div class="pt10" style="height: 192px; overflow: hidden;">
					<img alt="公司简介" src="img/temp/01.jpg" class="border p2 fl mr10" />
					<p>慈溪市荣江电子厂是接线端子和拨码开关的专业制造商。 多年来，我们不断致力于产品的研发，使企业得到了快速发展
						，在该领域居于领先地位，成为亚洲主要的接线端子供应商之 一。公司通过了ISO9001质量管理休系认证。产品通过UL、
						VDE、CE及CQC等多个国家标准的安全认证，并且符合欧盟RoHS 指令环保要求。</p>
					<p>公司的发展过程中，先后建立了研究中心、质量控制、模具制造、五金切削、注
						塑成形、成品组装等一系列部门。产品的设计加工采用目前先进的软件和设备...</p>
				</div>
			</div>
			<div class="w235 border fr p0-10">
				<h1 class="title1">
					<a href="" class="more"><img alt="更多" src="img/more.gif"
						width="31" height="5" /></a><em class="title1-b">新闻动态</em>
				</h1>
				<div class="pt10" style="height: 192px; overflow: hidden;">
					<ul class="news lh24">
					</ul>
				</div>
			</div>
			<div class="h10 cl"></div>
			<div class="w735">
				<img alt="广告位" src="img/temp/02.jpg" width="735" height="90" />
			</div>
			<div class="h10"></div>
			<div class="w713 border p0-10">
				<h1 class="title1">
					<a href="" class="more"><img alt="更多" src="img/more.gif"
						width="31" height="5" /></a><em class="title1-c">新品展示</em>
				</h1>
				<div class="pt10" style="height: 155px; overflow: hidden;">
					<div id="marquee1" class="marqueeleft">
						<div style="width: 8000px;">
							<ul id="marquee1_1" class="pro-list">
								<li id="pptype"><span class="pro-img"><a
										href="#"> <img
											src="" width="162" height="118"></a></span>
									<span class="pro-title"> <a
										href="product_show.aspx?id=93"> </a></span></li>
							</ul>
							<ul id="marquee1_2">
							
							</ul>
						</div>
					</div>
					<script type="text/javascript">
						marqueeStart(1, "left");
					</script>
					<!--marqueeleft end-->
				</div>
			</div>
		</div>
		<div class="cl"></div>
	</div>
	<div class="h10"></div>
	<div class="link">
		<div class="wrap">
			<h1 class="link-title wryh fn">
				友情链接&nbsp;<span class="f12 c9">/&nbsp;LINKS</span>
			</h1>
			<div class="p10">
				<ul class="link-pic">
				</ul>
				<div class="cl"></div>
			</div>
		</div>
	</div>
	<jsp:include page="footer.jsp"></jsp:include>
</body>
</html>