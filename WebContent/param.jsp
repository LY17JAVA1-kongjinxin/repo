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
									onclick="if(value==defaultValue){value=&#39;&#39;}"
									onblur="if(!value){value=defaultValue;}"></td>
								<td><input type="submit" class="btn fb"
									onclick="window.open(&#39;product.aspx?classId=2&amp;search=&#39;+document.getElementById(&#39;search&#39;).value)"
									value="搜索"></td>
							</tr>
						</tbody>
					</table>
				</div>
				<div class="h10"></div>

				<div class="h10"></div>

				<div class="w235">
					<h1 class="pro-name f16 wryh fn">产品分类</h1>
					<div class="border-nt p10">
						<ul class="list">

							<li><a href="http://www.rjdz.com.cn/product.aspx?classId=3">
									建筑布线连接器</a></li>

							<li><a href="http://www.rjdz.com.cn/product.aspx?classId=4">
									照明灯具连接器</a></li>

							<li><a href="http://www.rjdz.com.cn/product.aspx?classId=7">
									免螺丝接线端子</a></li>

							<li><a href="http://www.rjdz.com.cn/product.aspx?classId=9">
									线路板接线端子</a></li>

							<li><a href="http://www.rjdz.com.cn/product.aspx?classId=6">
									插拔式接线端子</a></li>

							<li><a href="http://www.rjdz.com.cn/product.aspx?classId=11">
									栅栏系列接线端子</a></li>

							<li><a href="http://www.rjdz.com.cn/product.aspx?classId=12">
									贯通式接线端子</a></li>

							<li><a href="http://www.rjdz.com.cn/product.aspx?classId=15">
									音箱功放接线端子</a></li>

							<li><a href="http://www.rjdz.com.cn/product.aspx?classId=5">
									直插贴片拨码开关</a></li>

							<li><a href="http://www.rjdz.com.cn/product.aspx?classId=14">
									排针排母和园孔IC插针、插座…</a></li>

							<li><a href="http://www.rjdz.com.cn/product.aspx?classId=13">
									AC插头、插座</a></li>

							<li><a href="http://www.rjdz.com.cn/product.aspx?classId=8">
									客户订制和大电流接线端子</a></li>

						</ul>
					</div>
				</div>


				<div class="h10"></div>

				<div class="h10"></div>
			</div>

		</div>
		
		<div class="w735 fr">
            <div class="w713 border p0-10" style="min-height: 556px; _height: 556px;">
                <h1 class="title1">
                    <span class="fr mr10 fn">当前位置：<a href="index.aspx">首页</a>&nbsp;&gt;&nbsp;产品参数</span><em class="title1-d">产品参数</em></h1>
                <div class="pt10">
                    <p>
                        产品参数</p>
                    <div class="cl">
                    </div>
                </div>
            </div>
        </div>

		<div class="cl"></div>
	</div>
	<jsp:include page="footer.jsp"></jsp:include>
</body>
</html>