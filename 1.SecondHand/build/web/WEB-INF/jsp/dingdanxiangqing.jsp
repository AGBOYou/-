
<%@page contentType="text/html" pageEncoding="UTF-8"%>
﻿<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
﻿<%@page import="java.text.SimpleDateFormat"%>
<%@page import="java.util.Date"%>
<%@page import="com.qdu.pojo.Module"%>
<%@page import="com.qdu.dao.ModuleDao"%>
<%@page import="com.qdu.pojo.Cart"%>
<%@page import="java.util.ArrayList"%>
<%@page import="java.util.List"%>
<%@page import="com.qdu.dao.CartDao"%>
<%@page import="com.qdu.pojo.User"%>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <meta charset="UTF-8">
        <meta name="author" content=""/>
        <title>二手交易平台-订单详情</title>
	<link rel="stylesheet" type="text/css" href="<%=request.getContextPath()%>/css/style.css">
    </head>
    <body>
	<!-- start header -->
		<header>
			<div class="top center">
				<div class="left fl">
					<ul>
						<li><a href="<%=request.getContextPath()%>/page/toindex" target="_blank">DIY电脑商城</a></li>
						<li>|</li>
						<li><a href="">Windows</a></li>
						<li>|</li>
						<li><a href="">聊天</a></li>
						<li>|</li>
						<li><a href="">游戏</a></li>
						<li>|</li>
						<li><a href="">阅读</a></li>
						<li>|</li>
						<li><a href="">云服务</a></li>
						<li>|</li>
						<li><a href="">金融</a></li>
						<li>|</li>
						<li><a href="">二手交易平台</a></li>
						<li>|</li>
						<li><a href="">问题反馈</a></li>
						<li>|</li>
						<li><a href="">Select Region</a></li>
						<div class="clear"></div>
					</ul>
				</div>
				<div class="right fr">
					<div class="gouwuche fr"><a href="<%=request.getContextPath()%>/page/osa">我的订单</a></div>
					<div class="fr">
						<ul>
                                                    <li><a href="<%=request.getContextPath()%>/page/toself" target="_blank">${user.getUsers_ID()}</a></li>
                                                    <li>|</li>
                                                    <li><a href="<%=request.getContextPath()%>/all/los" target="_blank" >退出</a></li>
                                                    <li>|</li>
						</ul>
					</div>
					<div class="clear"></div>
				</div>
				<div class="clear"></div>
			</div>
		</header>
	<!--end header -->
	<!-- start banner_x -->
		<div class="banner_x center">
			<a href="<%=request.getContextPath()%>/page/toindex" target="_blank"><div class="logo fl"></div></a>
			<a href=""><div class="ad_top fl"></div></a>
			<div class="nav fl">
				<ul>
					<li><a href="" target="_blank">整机电脑</a></li>
					<li><a href="">平板</a></li>
					<li><a href="">笔记本</a></li>
					<li><a href="">电视</a></li>
					<li><a href="">盒子·影音</a></li>
					<li><a href="">路由器</a></li>
					<li><a href="">智能硬件</a></li>
					<li><a href="">服务</a></li>
					<li><a href="">社区</a></li>
				</ul>
			</div>
			<div class="search fr">
				
				<div class="clear"></div>
			</div>
		</div>
<!-- end banner_x -->
<!-- self_info -->
	<div class="grzxbj">
		<div class="selfinfo center">
		
                    <div class="rtcont fr" style="float: left; margin-left: 130px">
                        
                        <div class="ddzxbt">订单编号：${Order_ID}      <span style="float: right; padding-right: 30px;">订单状态：${Order.getOrder_Status()}</span></div>
                        <c:forEach items="${ModuleList}" var="m">
                        <div class="ddxq">
                            <div class="ddspt fl"><img src="<%=request.getContextPath()%>/images/${m.getModule_ID()}.png" alt="" width="80" height="80"></div>
                            <div class="ddbh fl">${m.getModule_Brand()}&nbsp;${m.getModule_Model()}</div>
				<div class="ztxx fr">
					<ul>
						<li>${m.getZhonglei()}</li>
						<li>${m.getModule_Price()}</li>
						<li>数量：1</li>
						<div class="clear"></div>
					</ul>
				</div>
				<div class="clear"></div>
			</div>
                        </c:forEach>
                        <div class="ddzxbt" style="margin-right: 30px"><span style="font-size:25">地址：${adress}元</span></div>
                        <div class="ddzxbt" style="margin-right: 30px"><span style="font-size:25">合计：${Order.getPrice()}元</span><a href="<%=request.getContextPath()%>/page/querenshouhuo?Order_ID=${Order_ID}" style="float: right;margin-right: 40px"><确认收货></a></div>
                        
		</div>
		<div class="clear"></div>
		</div>
	</div>
<!-- self_info -->
		
		<footer class="mt20 center">			
			<div class="mt20">二手交易平台|Windows|聊天|书城|路由器|视频电话|天猫店|淘宝直营店|网盟|通讯移动|隐私政策|Select Region</div>
			<div>©diy.com 京ICP证110507号 京ICP备10046444号 京公网安备11010802020134号 京网文[2014]0059-0009号</div>
			<div>违法和不良信息举报电话：185-0130-1238，本网站所列数据，除特殊说明，所有数据均出自我司实验室测试</div>
		</footer>
	</body>
</html>
	
	
