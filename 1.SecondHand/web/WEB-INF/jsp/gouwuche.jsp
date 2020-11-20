
﻿<%@page import="com.qdu.pojo.Cart"%>
﻿<%@page import="java.util.ArrayList"%>
﻿<%@page import="com.qdu.pojo.Module"%>
<%@page import="com.qdu.dao.ModuleDao"%>
<%@page import="java.util.List"%>
<%@page import="com.qdu.dao.CartDao"%>
<%@page import="com.qdu.pojo.User"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <meta charset="UTF-8">
        <meta name="author" content=""/>
        <title>我的购物车-二手交易平台</title>
	<link rel="stylesheet" type="text/css" href="<%=request.getContextPath()%>/css/style.css">
    </head>
    <body>
	<!-- start header -->
	<!--end header -->

<!-- start banner_x -->
		<div class="banner_x center">
			<a href="<%=request.getContextPath()%>/page/toindex" target="_blank"><div class="logo fl"></div></a>
			
			<div class="wdgwc fl ml40">我的购物车</div>
			<div class="wxts fl ml20">温馨提示：产品是否购买成功，以最终下单为准哦，请尽快结算</div>
			<div class="dlzc fr">
				<ul>
                                    <li>${user.getUsers_ID()}&numsp;</li>
                                    <li>|</li>
                                    <li><a href="<%=request.getContextPath()%>/all/los" target="_blank">退出</a></li>	
				</ul>
				
			</div>
			<div class="clear"></div>
		</div>
		<div class="xiantiao"></div>
		<div class="gwcxqbj">
			<div class="gwcxd center">
				<div class="top2 center">
					<div class="sub_top fl">
						
					</div>
					<div class="sub_top fl">商品名称</div>
					<div class="sub_top fl">单价</div>
					<div class="sub_top fl">数量</div>
					<div class="sub_top fl">小计</div>
					<div class="sub_top fr">操作</div>
					<div class="clear"></div>
				</div>
                            
                            <c:forEach items="${modulelist}" var="m">
				<div class="content2 center">
					<div class="sub_content fl ">
						
					</div>
                                    <div class="sub_content fl" style="margin-left: -40px"><img src="<%=request.getContextPath()%>/images/${m.getModule_ID()}.png" width="100" height="100"></div>
					<div class="sub_content fl ft20" style="margin-left: 140px">${m.getModule_Brand()}&nbsp;${m.getModule_Model()}</div>
					<div class="sub_content fl ">${m.getModule_Price()}元</div>
					<div class="sub_content fl">
                                            <span class="shuliang">1</span>
					</div>
					<div class="sub_content fl">${m.getModule_Price()}元</div>
					<div class="sub_content fl"><a href="<%=request.getContextPath()%>/all/dcs?Module_ID=${m.getModule_ID()}">×</a></div>
					<div class="clear"></div>
				</div>
                            
                            </c:forEach>
			</div>
			<div class="jiesuandan mt20 center">
				<div class="tishi fl ml20">
					<ul>
						<li><a href="index.jsp">继续购物</a></li>
						<li>|</li>
						<li>共<span>${moduleSum}</span>件商品</li>
						<div class="clear"></div>
					</ul>
				</div>
				<div class="jiesuan fr">
					<div class="jiesuanjiage fl">合计（不含运费）：<span>${allPrice}元</span></div>
					<div class="jsanniu fr">
                                            <a href="<%=request.getContextPath()%>/page/todingdanqueren"><input class="jsan" type="submit" name="jiesuan"  value="去结算"/></a>
                                        </div>
					<div class="clear"></div>
				</div>
				<div class="clear"></div>
			</div>
			
		</div>

  

	
	<!-- footer -->
	<footer class="center">
			
			<div class="mt20">二手交易平台|Windows|聊天|书城|路由器|视频电话|天猫店|淘宝直营店|网盟|通讯移动|隐私政策|Select Region</div>
			<div>©diy.com 京ICP证110507号 京ICP备10046444号 京公网安备11010802020134号 京网文[2014]0059-0009号</div>
			<div>违法和不良信息举报电话：185-0130-1238，本网站所列数据，除特殊说明，所有数据均出自我司实验室测试</div>
		</footer>

	</body>
</html>
