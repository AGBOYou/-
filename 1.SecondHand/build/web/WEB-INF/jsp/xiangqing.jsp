
﻿<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <meta name="author" content=""/>
	<title>${zhonglei}</title>
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
					<div class="gouwuche fr"><a href="">购物车</a></div>
					<div class="fr">
						<ul>
						<c:choose>
                                                    <c:when test="${user!= null}">
                                                        <li><a href="./self_info.jsp" target="_blank">${user.getUsers_ID()}</a></li>
							<li>|</li>
							<li><a href="los" target="_blank" >退出</a></li>
							<li>|</li>
                                                    </c:when>
                                                    <c:otherwise>
                                                        <li><a href="<%=request.getContextPath()%>/page/login" target="_blank">登录</a></li>
							<li>|</li>
							<li><a href="<%=request.getContextPath()%>/page/toregister" target="_blank" >注册</a></li>
							<li>|</li>
                                                    </c:otherwise>
                                                </c:choose>
							<li><a href="">消息通知</a></li>
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

	
	<!-- xiangqing -->
	<div class="xiangqing">
		<div class="neirong w">
			<div class="xiaomi6 fl">${zhonglei}&nbsp;${module.getModule_Brand()}&nbsp;  ${module.getModule_Model()}</div>
			<nav class="fr">
				<li><a href="">概述</a></li>
				<li>|</li>
				<li><a href="">组件特点</a></li>
				<li>|</li>
				<li><a href="">设计</a></li>
				<li>|</li>
				<li><a href="">参数</a></li>
				<li>|</li>
				<li><a href="">其他通道</a></li>
				<li>|</li>
				<li><a href="">用户评价</a></li>
				<div class="clear"></div>
			</nav>
			<div class="clear"></div>
		</div>	
	</div>
	
	<div class="jieshao mt20 w">
            <div class="left fl"><img src="../images/${ID}.png" height="550" width="550"></div>
		<div class="right fr">
			<div class="h3 ml20 mt20">${module.getModule_Brand()}&nbsp;  ${module.getModule_Model()}</div>
			<div class="jianjie mr40 ml20 mt10">详情：${module.getModule_Specify()}</div>
			<div class="jiage ml20 mt10">价格：${module.getModule_Price()}元</div>
			
			
			<div class="xqxq mt20 ml20">
				<div class="top1 mt10">
					<div class="left1 fl">${module.getModule_Brand()}&nbsp;  ${module.getModule_Model()}&nbsp;${module.getModule_Specify()}</div>
					<div class="right1 fr">${module.getModule_Price()}元</div>
					<div class="clear"></div>
				</div>
				<div class="bot mt20 ft20 ftbc">总计：${module.getModule_Price()}元</div>
			</div>
			<div class="xiadan ml20 mt20">
                            <form action="<%=request.getContextPath()%>/all/cs">
                                <input type="hidden" name="Module_ID" value="${ID}">
				<input class="jrgwc" type="submit" name="jrgwc" value="加入购物车" />
                            </form>	
			</div> 
		</div>
		<div class="clear"></div> 
	</div>
      
	<!-- footer -->
	<footer class="mt20 center">
            <div  style="padding-left: 250; background: rgb(250,250,250);">
                <form action="<%=request.getContextPath()%>/all/acs" method="get">
                    <table style="width: 800; border:1px solid; cellspacing:0;cellpadding:10; text-align: center;">
                        <tr style="align:center; border:1px solid">
                            <th style="text-align: center;border:1px solid">评论者姓名</th>
                            <th style="text-align: center;border:1px solid">评论内容</th>
                            <th style="text-align: center;border:1px solid">评论时间</th>
                        </tr>
                        <c:forEach items="${commentList}" var="comment">
                            <tr>
                            <td style="border:1px solid">${comment.getUsers_Name()}</td>
                            <td style="border:1px solid">${comment.getComment_Text()}</td>
                            <td style="border:1px solid">${comment.getComment_Time()}</td>
                            </tr>
                        </c:forEach>
                            <tr>
                            
                                <input type="hidden" name="Module_ID" value="${ID}">
                                <td colspan="2"><input type="text" class="shuru"  placeholder="快来评论吧！" name="text" style="width: 100%;height:30px;"></td>
                                <td><input type="submit" class="sousuo" value="提交" style="width: 50%;border:none;background:#ff6700;color:#fff;height: 30px;"/></td>
                            </tr>       
                    </table>
                </form>
                </div>
            
        
			<div class="mt20">二手交易平台|Windows|聊天|书城|路由器|视频电话|天猫店|淘宝直营店|网盟|通讯移动|隐私政策|Select Region</div>
			<div>©diy.com 京ICP证110507号 京ICP备10046444号 京公网安备11010802020134号 京网文[2014]0059-0009号</div> 
			<div>违法和不良信息举报电话：185-0130-1238，本网站所列数据，除特殊说明，所有数据均出自我司实验室测试</div>

	</footer>

	</body>
</html>
