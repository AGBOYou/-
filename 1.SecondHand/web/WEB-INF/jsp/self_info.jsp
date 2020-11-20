

<%@page import="com.qdu.dao.UserDao"%>
<%@page import="com.qdu.pojo.User"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>个人中心</title>
        <link rel="stylesheet" type="text/css" href="<%=request.getContextPath()%>/css/style.css">
    </head>
   <body>
	<!-- start header -->
		<header>
			<div class="top center">
				<div class="left fl">
					<ul>
						<li><a href="<%=request.getContextPath()%>/page/toindex" target="_blank">二手电脑配件商城</a></li>
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
					<div class="gouwuche fr"><a href="<%=request.getContextPath()%>/page/tocart">购物车</a></div>
					<div class="fr">
						<ul>
                                                    <li>${user.getUsers_ID()}&numsp;</li>
                                                    <li>|</li>
                                                    <li><a href="<%=request.getContextPath()%>/all/los" target="_blank">退出</a></li>	
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
			<a href="./index.html" target="_blank"><div class="logo fl"></div></a>
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
		<div class="lfnav fl">
			<div class="ddzx">订单中心</div>
			<div class="subddzx">
				<ul>
					<li><a href="<%=request.getContextPath()%>/page/osa" >我的订单</a></li>
					<li><a href="">意外保</a></li>
					<li><a href="">团购订单</a></li>
					<li><a href="">评价晒单</a></li>
				</ul>
			</div>
			<div class="ddzx">个人中心</div>
			<div class="subddzx">
				<ul>
					<li><a href="" style="color:#ff6700;font-weight:bold;">我的个人中心</a></li>
					<li><a href="">消息通知</a></li>
					<li><a href="<%=request.getContextPath()%>/page/fabu">求购商品发布</a></li>
					<li><a href="<%=request.getContextPath()%>/page/yifabu">我的求购商品</a></li>
				</ul>
			</div>
		</div>
		<div class="rtcont fr">
			<div class="grzlbt ml40">我的资料</div>
			<div class="subgrzl ml40"><span>名称</span><span>${user.getUsers_Name()}</span><span><a href="<%=request.getContextPath()%>/page/toinfochange">编辑</a></span></div>
			<div class="subgrzl ml40"><span>手机号</span><span>${user.getUsers_phoneNum()}</span><span><a href="<%=request.getContextPath()%>/page/toinfochange">编辑</a></span></div>
			<div class="subgrzl ml40"><span>密码</span><span>************</span><span><a href="<%=request.getContextPath()%>/page/toinfochange">编辑</a></span></div>
			<div class="subgrzl ml40"><span>邮箱</span><span>${user.getE_mail()}</span><span><a href="<%=request.getContextPath()%>/page/toinfochange">编辑</a></span></div>
			
			
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
