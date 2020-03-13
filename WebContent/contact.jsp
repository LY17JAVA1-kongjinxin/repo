<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
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
<!-------可重复的无缝滚动 end-------->
</head>
<body>
	<jsp:include page="header.jsp"></jsp:include>
	<div class="wrap">
		<div class="w235 fl">

			<div class="w235 fl">

				<div class="w233 border bg-blue"
					style="height: 90px; overflow: hidden;">
					<table width="100%" border="0" cellpadding="0" cellspacing="0">
						<tbody>
							<tr>
								<td colspan="3" height="35" class="pl10"><span
									class="fb f14 blue">产品搜索</span></td>
							</tr>
							<tr>
								<td width="55" height="45" align="right">关键字：</td>
								<td width="127"><input id="search" type="text"
									class="txt c9" value="请输入产品名或型号"
									onclick="if(value==defaultValue){value=''}"
									onblur="if(!value){value=defaultValue;}"></td>
								<td><input type="submit" class="btn fb"
									onclick="window.open('product.aspx?classId=2&amp;search='+document.getElementById('search').value)"
									value="搜索"></td>
							</tr>
						</tbody>
					</table>
				</div>
				<div class="h10"></div>

				<div class="h10"></div>

				<div class="w235">
					<h1 class="pro-name f16 wryh fn">关于荣江</h1>
					<div class="border-nt p10">
						<ul class="list">
							<li><a href="about.aspx?callindex=about">公司简介</a></li>
							<li><a href="product.aspx?classid=20">厂房设备</a></li>
							<li><a href="product.aspx?classid=21">资质证书</a></li>
						</ul>
					</div>
				</div>

			</div>

		</div>
		<div class="w735 fr">
			<div class="w713 border p0-10"
				style="min-height: 556px; _height: 556px;">
				<h1 class="title1">
					<span class="fr mr10 fn">当前位置：<a href="index.aspx">首页</a>&nbsp;&gt;&nbsp;联系我们
					</span><em class="title1-d">联系我们</em>
				</h1>
				<div class="pt10">
					<p></p>
					<h4>
						<span style="color: #003399; font-size: 18px;" id="lbIntro">慈溪市荣江电子厂</span>
					</h4>
					<p>地址:浙江省慈溪市张丁路10号</p>
					<p>联系人：管经理</p>
					<p>电话：0574-63505506</p>
					<p>手机：13396694810</p>
					<p>QQ: 2432693879</p>
					<p>
						邮箱: <a href="mailto:2432693879@qq.com">2432693879@qq.com</a>
					</p>
					<p>&nbsp;</p>
					<p>业务一部</p>
					<p>联系人：程小姐&nbsp;</p>
					<p>手机：13486457853</p>
					<p>QQ：543131572</p>
					<p>
						邮箱：<a href="mailto:cdy1206@126.com">cdy1206@126.com</a>
					</p>
					<p>&nbsp;</p>
					<p>业务二部</p>
					<p>联系人：张先生</p>
					<p>手机：13248661835</p>
					<p>QQ：2432693879</p>
					<p>
						邮箱：<a href="mailto:xtmike@126.com">xtmike@126.com</a>
					</p>
					<div class="cl"></div>
				</div>
			</div>
		</div>
		<div class="cl"></div>
	</div>
	<jsp:include page="footer.jsp"></jsp:include>
</body>
</html>