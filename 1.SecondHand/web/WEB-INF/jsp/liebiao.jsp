<%@page import="java.util.List"%>
<%@page import="com.qdu.pojo.Module"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
   <head>
	<meta charset="UTF-8">
        <meta name="author" content=""/>
	<title>${zhonglei}列表</title>
	<link rel="stylesheet" type="text/css" href="<%=request.getContextPath()%>/css/style.css">
        <link rel="stylesheet" href="<%=request.getContextPath()%>/css/bootstrap.min.css"/>
                
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
                                                        <li><a href="<%=request.getContextPath()%>/page/toself" target="_blank">${user.getUsers_ID()}</a></li>
							<li>|</li>
							<li><a href="<%=request.getContextPath()%>/all/los" target="_blank" >退出</a></li>
							<li>|</li>
                                                    </c:when>
                                                    <c:otherwise>
                                                        <li><a href="<%=request.getContextPath()%>/page/toregister" target="_blank">登录</a></li>
							<li>|</li>
							<li><a href="<%=request.getContextPath()%>/page/toself" target="_blank" >注册</a></li>
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
			
			<div class="search fr">
				
				<div class="clear"></div>
			</div>
		</div>
   
		
        <div style="height:50px; padding:40px;margin-top: -100px;font-size: 24px;font-weight: bold; margin-left: 130px;"  >${zhonglei}</div>
        
                <c:forEach items="${moduleList}" var="s" begin="1" end="2">
                           <div style="border:2px solid #fff;width:auto;
                                        cursor:pointer; height: 300px ;
                                        text-align:center; margin-left: 200px;
                                        margin-right: 50px;"
                                        class="img-thumbnail">
                <!--图片或者文字都可以做成超链接，然后可以点击超链接发送请求，还可以通过url重写追加请求参数-->
                                <a href="<%=request.getContextPath()%>/all/soms?Module_ID=${s.getModule_ID()}">
                                        <img src="<%=request.getContextPath()%>/images/${s.getModule_ID()}.png" class="img-circle img-thumbnail" 
                                        alt="图片" width="120" height="120">
                                </a>
                                <br><span style="font-size: 22px;font-weight: bold;margin-top: 20px;">${s.module_Brand}</span>
                                <br><a href="<%=request.getContextPath()%>/all/soms?Module_ID=${s.getModule_ID()}" style="font-size: 15px">${s.getModule_Model()}</a>
                                <br><span style="font-size: 15px">${s.getModule_Specify()}</span>
                                <br><span style="font-size: 22px;font-weight: bold;margin-top: 20px; color: red">${s.getModule_Price()}</span>
                            </div>
                </c:forEach>
                <c:forEach items="${moduleList}" var="s" begin="3" end="4">
                           <div style="border:2px solid #fff;width:auto;
                                        cursor:pointer; height: 300px ;
                                        text-align:center; margin-left: 200px;
                                        margin-right: 50px;"
                                        class="img-thumbnail">
                <!--图片或者文字都可以做成超链接，然后可以点击超链接发送请求，还可以通过url重写追加请求参数-->
                                <a href="<%=request.getContextPath()%>/all/soms?Module_ID=${s.getModule_ID()}">
                                        <img src="<%=request.getContextPath()%>/images/${s.getModule_ID()}.png" class="img-circle img-thumbnail" 
                                        alt="图片" width="120" height="120">
                                </a>
                                <br><span style="font-size: 22px;font-weight: bold;margin-top: 20px;">${s.module_Brand}</span>
                                <br><a href="<%=request.getContextPath()%>/all/soms?Module_ID=${s.getModule_ID()}" style="font-size: 15px">${s.getModule_Model()}</a>
                                <br><span style="font-size: 15px">${s.getModule_Specify()}</span>
                                <br><span style="font-size: 22px;font-weight: bold;margin-top: 20px; color: red">${s.getModule_Price()}</span>
                            </div>
                </c:forEach>
                <br/>
                <c:forEach items="${moduleList}" var="s" begin="5" end="6">
                           <div style="border:2px solid #fff;width:auto;
                                        cursor:pointer; height: 300px ;
                                        text-align:center; margin-left: 200px;
                                        margin-right: 50px;"
                                        class="img-thumbnail">
                <!--图片或者文字都可以做成超链接，然后可以点击超链接发送请求，还可以通过url重写追加请求参数-->
                                <a href="<%=request.getContextPath()%>/all/soms?Module_ID=${s.getModule_ID()}">
                                        <img src="<%=request.getContextPath()%>/images/${s.getModule_ID()}.png" class="img-circle img-thumbnail" 
                                        alt="图片" width="120" height="120">
                                </a>
                                <br><span style="font-size: 22px;font-weight: bold;margin-top: 20px;">${s.module_Brand}</span>
                                <br><a href="<%=request.getContextPath()%>/all/soms?Module_ID=${s.getModule_ID()}" style="font-size: 15px">${s.getModule_Model()}</a>
                                <br><span style="font-size: 15px">${s.getModule_Specify()}</span>
                                <br><span style="font-size: 22px;font-weight: bold;margin-top: 20px; color: red">${s.getModule_Price()}</span>
                            </div>
                </c:forEach>
                <c:forEach items="${moduleList}" var="s" begin="7" end="7">
                           <div style="border:2px solid #fff;width:auto;
                                        cursor:pointer; height: 300px ;
                                        text-align:center; margin-left: 200px;
                                        margin-right: 50px;"
                                        class="img-thumbnail">
                <!--图片或者文字都可以做成超链接，然后可以点击超链接发送请求，还可以通过url重写追加请求参数-->
                                <a href="<%=request.getContextPath()%>/all/soms?Module_ID=${s.getModule_ID()}">
                                        <img src="<%=request.getContextPath()%>/images/${s.getModule_ID()}.png" class="img-circle img-thumbnail" 
                                        alt="图片" width="120" height="120">
                                </a>
                                <br><span style="font-size: 22px;font-weight: bold;margin-top: 20px;">${s.module_Brand}</span>
                                <br><a href="<%=request.getContextPath()%>/all/soms?Module_ID=${s.getModule_ID()}" style="font-size: 15px">${s.getModule_Model()}</a>
                                <br><span style="font-size: 15px">${s.getModule_Specify()}</span>
                                <br><span style="font-size: 22px;font-weight: bold;margin-top: 20px; color: red">${s.getModule_Price()}</span>
                            </div>
                </c:forEach>
        
        
		
        
		<footer class="mt20 center">			
			<div class="mt20">二手交易平台|Windows|聊天|书城|路由器|视频电话|天猫店|淘宝直营店|网盟|通讯移动|隐私政策|Select Region</div>
			<div>©diy.com 京ICP证110507号 京ICP备10046444号 京公网安备11010802020134号 京网文[2014]0059-0009号</div> 
			<div>违法和不良信息举报电话：185-0130-1238，本网站所列数据，除特殊说明，所有数据均出自我司实验室测试</div>
		</footer>

	<!-- end danpin -->


	</body>
</html>
