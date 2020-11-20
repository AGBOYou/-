<%@page import="java.util.*" pageEncoding="UTF-8"%>
﻿<%@page import="com.qdu.pojo.Module"%>
<%@page import="com.qdu.dao.ModuleDao"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

﻿<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
                <meta name="author" content=""/>
		<title>Choose Your Computer</title>
		<link rel="stylesheet" type="text/css" href="./css/style.css">
	</head>
	<body>
	<!-- start header -->
		<header>
			<div class="top center">
				<div class="left fl">
					<ul>
						<li><a href="" target="_blank">二手交易平台</a></li>
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
						<li><a href="">平台移动版</a></li>
						<li>|</li>
						<li><a href="">问题反馈</a></li>
						<li>|</li>
						<li><a href="">Select Region</a></li>
						<div class="clear"></div>
					</ul>
				</div>
				<div class="right fr">
					<div class="gouwuche fr"><a href="page/tocart">购物车</a></div>
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
                                                        <li><a href="page/login" target="_blank">登录</a></li>
							<li>|</li>
							<li><a href="<%=request.getContextPath()%>/page/toregister" target="_blank" >注册</a></li>
							<li>|</li>
                                                    </c:otherwise>
                                                    </c:choose>
                                                        <li><a href="<%=request.getContextPath()%>/page/toself">个人中心</a></li>
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
			<a href="" target="_blank"><div class="logo fl"></div></a>
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

	<!-- start banner_y -->
		<div class="banner_y center">
			<div class="nav">				
				<ul>
					<li>
						<a href="all/msa?zhonglei=处理器">CPU</a>
						<div class="pop">
                                                    
							<div class="left fl">           <!--这是左边结构，最多打六个-->
                                                            <c:forEach items="${list1}" var="m" begin="1" end="6">
                                                            <div>
									<div class="xuangou_left fl">
                                                                            <a href="all/soms?Module_ID=${m.getModule_ID()}">
                                                                                    <div class="img fl"><img src="./images/${m.getModule_ID()}.png" alt="" width="50" height="50"></div>			
                                                                                    <span class="fl">${m.getModule_Brand()}&nbsp;${m.getModule_Model()}</span>
                                                                                       <div class="clear"></div>
                                                                            </a>
									</div>
									<div class="xuangou_right fr"><a href="all/soms?Module_ID=${m.getModule_ID()}" target="_blank">选购</a></div>
									<div class="clear"></div>
								</div>   
                                                            </c:forEach> 
							</div>
                                                                    
							<div class="ctn fl">            <!--这是中间结构，最多打六个-->
								<div>
									<div class="xuangou_left fl">
										<a href="all/soms?Module_ID=A007">
											<div class="img fl"><img src="./images/A007.png" alt="" width="50" height="50"></div>
											<span class="fl">AMD r3-2200G</span>
											<div class="clear"></div>
										</a>
									</div>
									<div class="xuangou_right fr"><a href="all/soms?Module_ID=A007">选购</a></div>
									<div class="clear"></div>
								</div>
							</div>
							<div class="clear"></div>
						</div>
					</li>
					<li>
						<a href="all/msa?zhonglei=主板">主板</a>
						<a href="all/msa?zhonglei=内存">内存条</a>
						<div class="pop">
							<div class="left fl">
                                                        
                                                        <c:forEach items="${list2}" var="m" begin="1" end="6">
								<div>
									<div class="xuangou_left fl">
                                                                            <a href="all/soms?Module_ID=${m.getModule_ID()}">
                                                                                    <div class="img fl"><img src="./images/${m.getModule_ID()}.png" alt="" width="50" height="50"></div>
											<span class="fl">${m.getModule_Brand()}</span>
											<div class="clear"></div>
                                                                            </a>
									</div>
									<div class="xuangou_right fr"><a href="all/soms?Module_ID=${m.getModule_ID()}" target="_blank">选购</a></div>
									<div class="clear"></div>
								</div>	
                                                       
                                                        </c:forEach>
							</div>
							<div class="ctn fl">        <!--这是中间结构，最多打六个-->
								<div>
									<div class="xuangou_left fl">
										<a href="all/soms?Module_ID=B007">
											<div class="img fl"><img src="./images/B007.png" alt="" width="50" height="50"></div>
											<span class="fl">GIGABYTE</span>
											<div class="clear"></div>
										</a>
									</div>
									<div class="xuangou_right fr"><a href="">选购</a></div>
									<div class="clear"></div>
								</div>
                                                                
                                                                <c:forEach items="${list3}" var="m" begin="1" end="5">
                                                                <div>
									<div class="xuangou_left fl">
										<a href="all/soms?Module_ID=${m.getModule_ID()}">
											<div class="img fl"><img src="./images/${m.getModule_ID()}.png" alt="" width="50" height="50"></div>
											<span class="fl">${m.getModule_Brand()}</span>
											<div class="clear"></div>
										</a>
									</div>
									<div class="xuangou_right fr"><a href="all/soms?Module_ID=${m.getModule_ID()}">选购</a></div>
									<div class="clear"></div>
								</div>
                                                                
                                                                </c:forEach>
                                                        </div>
                                                        <div class="right fl">          <!--这是右边结构，最多打六个-->
                                                            
                                                             <c:forEach items="${list3}" var="m" begin="6" end="6">
                                                                <div>
									<div class="xuangou_left fl">
										<a href="all/soms?Module_ID=${m.getModule_ID()}">
											<div class="img fl"><img src="./images/${m.getModule_ID()}.png" alt="" width="50" height="50"></div>
											<span class="fl">${m.getModule_Brand()}</span>
											<div class="clear"></div>
										</a>
									</div>
									<div class="xuangou_right fr"><a href="all/soms?Module_ID=${m.getModule_ID()}">选购</a></div>
									<div class="clear"></div>
								</div>
                                                             
                                                             </c:forEach>
                                                        </div>
				
							<div class="clear"></div>
						</div>
					</li>
					<li>
						<a href="all/msa?zhonglei=硬盘">硬盘</a>
						<div class="pop">
							<div class="left fl">       <!--这是左边结构，最多打六个-->
								
                                                                 <c:forEach items="${list4}" var="m" begin="1" end="6">
                                                                <div>
									<div class="xuangou_left fl">           
										<a href="all/soms?Module_ID=${m.getModule_ID()}">
											<div class="img fl"><img src="./images/${m.getModule_ID()}.png" alt="" width="45" height="45"></div>
											<span class="fl">${m.getModule_Brand()}</span>
											<div class="clear"></div>
										</a>
									</div>
									<div class="xuangou_right fr"><a href="all/soms?Module_ID=${m.getModule_ID()}">选购</a></div>
									<div class="clear"></div>
								</div>
                                                                
                                                                 </c:forEach>
							</div>
							<div class="ctn fl">        <!--这是中间结构，最多打六个-->
								<div>
									<div class="xuangou_left fl">
										<a href="all/soms?Module_ID=D007">
											<div class="img fl"><img src="./images/D007.png" alt="" width="45" height="45"></div>
											<span class="fl">东芝</span>
											<div class="clear"></div>
										</a>
									</div>
									<div class="xuangou_right fr"><a href="all/soms?Module_ID=D007">选购</a></div>
									<div class="clear"></div>
								</div>
							</div>
							<div class="clear"></div>
						</div>
					</li>
					<li>
						<a href="all/msa?zhonglei=显卡">显卡</a>
						<div class="pop">
							<div class="left fl">       <!--这是左边结构，最多打六个-->
                                                            
                                                             <c:forEach items="${list5}" var="m" begin="1" end="6">
								<div>
									<div class="xuangou_left fl">
										<a href="all/soms?Module_ID=${m.getModule_ID()}">
											<div class="img fl"><img src="./images/${m.getModule_ID()}.png" alt="" width="45" height="45"></div>
											<span class="fl">${m.getModule_Brand()}</span>
											<div class="clear"></div>
										</a>
									</div>
									<div class="xuangou_right fr"><a href="all/soms?Module_ID=${m.getModule_ID()}">选购</a></div>
									<div class="clear"></div>
								</div>
                                                            
                                                             </c:forEach>
							</div>
							<div class="ctn fl">        <!--这是中间结构，最多打六个-->
								<div>
									<div class="xuangou_left fl">
										<a href="all/soms?Module_ID=E007">
											<div class="img fl"><img src="./images/E007.png" alt="" width="45" height="45"></div>
											<span class="fl">NVIDIA</span>
											<div class="clear"></div>
										</a>
									</div>
									<div class="xuangou_right fr"><a href="all/soms?Module_ID=E007">选购</a></div>
									<div class="clear"></div>
								</div>
							</div>
							<div class="clear"></div>
						</div>
					</li>
					<li>
						<a href="all/msa?zhonglei=机箱">机箱</a>
						<div class="pop">
							<div class="left fl"><!--这是左边结构，最多打六个-->
                                                            
                                                             <c:forEach items="${list6}" var="m" begin="1" end="6">
								<div>
									<div class="xuangou_left fl">       
										<a href="all/soms?Module_ID=${m.getModule_ID()}">
											<div class="img fl"><img src="./images/${m.getModule_ID()}.png" alt="" width="35" height="35"></div>
											<span class="fl">${m.getModule_Brand()}</span>
											<div class="clear"></div>
										</a>
									</div>
									<div class="xuangou_right fr"><a href="all/soms?Module_ID=${m.getModule_ID()}">选购</a></div>
									<div class="clear"></div>
								</div>	
                                                            
                                                             </c:forEach>
							</div>
							<div class="ctn fl">         <!--这是中间结构，最多打六个-->
                                                                <div>
									<div class="xuangou_left fl">
										<a href="all/soms?Module_ID=F007">
											<div class="img fl"><img src="./images/F007.png" alt="" width="35" height="35"></div>
											<span class="fl">酷冷至尊</span>
											<div class="clear"></div>
										</a>
									</div>
									<div class="xuangou_right fr"><a href="all/soms?Module_ID=F007">选购</a></div>
									<div class="clear"></div>
								</div>
                                                            
							</div>
                                                        <div class="clear"></div>
						</div>
					</li>
					<li>
						<a href="all/msa?zhonglei=电源">电源</a>
						<a href="all/msa?zhonglei=显示器">显示器</a>
						<div class="pop">       <!--这边往后就没有数据库了-->
                                                        <div class="left fl"><!--这是左边结构，最多打六个-->
                                                            
                                                             <c:forEach items="${list7}" var="m"  begin="1" end="6">
								<div>
									<div class="xuangou_left fl">       
										<a href="all/soms?Module_ID=${m.getModule_ID()}">
											<div class="img fl"><img src="./images/${m.getModule_ID()}.png" alt="" width="35" height="35"></div>
											<span class="fl">${m.getModule_Brand()}</span>
											<div class="clear"></div>
										</a>
									</div>
									<div class="xuangou_right fr"><a href="all/soms?Module_ID=${m.getModule_ID()}">选购</a></div>
									<div class="clear"></div>
								</div>	
                                                            
                                                             </c:forEach>
							</div>
                                                        
							<div class="ctn fl">             <!--这是中间结构，最多打六个-->
								<div>
									<div class="xuangou_left fl">
										<a href="all/soms?Module_ID=G007">
											<div class="img fl"><img src="./images/G007.png" alt="" width="35" height="35"></div>
											<span class="fl">长城</span>
											<div class="clear"></div>
										</a>
									</div>
									<div class="xuangou_right fr"><a href="all/soms?Module_ID=G007">选购</a></div>
									<div class="clear"></div>
								</div>
                                                            
                                                             <c:forEach items="${list8}" var="m" begin="1" end="5">
                                                                <div>
									<div class="xuangou_left fl">
										<a href="all/soms?Module_ID=${m.getModule_ID()}">
											<div class="img fl"><img src="./images/${m.getModule_ID()}.png" alt="" width="50" height="50"></div>
											<span class="fl">${m.getModule_Brand()}</span>
											<div class="clear"></div>
										</a>
									</div>
									<div class="xuangou_right fr"><a href="all/soms?Module_ID=${m.getModule_ID()}">选购</a></div>
									<div class="clear"></div>
								</div>
                                                            
                                                             </c:forEach>
							</div>
							<div class="right fl">           <!--这是右边结构，最多打六个-->
                                                            
                                                             <c:forEach items="${list8}" var="m" begin="6" end="6">
                                                                <div>
									<div class="xuangou_left fl">
										<a href="all/soms?Module_ID=${m.getModule_ID()}">
											<div class="img fl"><img src="./images/${m.getModule_ID()}.png" alt="" width="50" height="50"></div>
											<span class="fl">${m.getModule_Brand()}</span>
											<div class="clear"></div>
										</a>
									</div>
									<div class="xuangou_right fr"><a href="all/soms?Module_ID=${m.getModule_ID()}">选购</a></div>
									<div class="clear"></div>
								</div>
                                                            
                                                             </c:forEach>
							</div>
							<div class="clear"></div>
						</div>
					</li>
					<li>
						
						<a href="all/msa?zhonglei=鼠标">鼠标</a>
						<div class="pop">
							<div class="left fl">            <!--这是左边结构，最多打六个-->
                                                            
                                                             <c:forEach items="${list9}" var="m"  begin="1" end="6">
                                                                <div>
									<div class="xuangou_left fl">
										<a href="all/soms?Module_ID=${m.getModule_ID()}">
											<div class="img fl"><img src="./images/${m.getModule_ID()}.png" alt="" width="50" height="50"></div>
											<span class="fl">${m.getModule_Brand()}</span>
											<div class="clear"></div>
										</a>
									</div>
									<div class="xuangou_right fr"><a href="all/soms?Module_ID=${m.getModule_ID()}">选购</a></div>
									<div class="clear"></div>
								</div>
                                                            
                                                             </c:forEach>
                                                            
							</div>
                                                        <div class="ctn fl">             <!--这是中间结构，最多打六个-->
								<div>
									<div class="xuangou_left fl">
										<a href="all/soms?Module_ID=J007">
											<div class="img fl"><img src="./images/J007.png" alt="" width="50" height="50"></div>
											<span class="fl">罗技</span>
											<div class="clear"></div>
										</a>
									</div>
									<div class="xuangou_right fr"><a href="all/soms?Module_ID=J007">选购</a></div>
									<div class="clear"></div>
								</div>
							</div>
							<div class="clear"></div>
						</div>
					</li>
					<li>
						<a href="all/msa?zhonglei=散热器">散热器</a>
						<div class="pop">
							<div class="left fl">       <!--这是左边结构，最多打六个-->
                                                            
                                                             <c:forEach items="${list10}" var="m" begin="1" end="6">
                                                                <div>
									<div class="xuangou_left fl">
										<a href="all/soms?Module_ID=${m.getModule_ID()}">
											<div class="img fl"><img src="./images/${m.getModule_ID()}.png" alt="" width="50" height="50"></div>
											<span class="fl">${m.getModule_Brand()}</span>
											<div class="clear"></div>
										</a>
									</div>
									<div class="xuangou_right fr"><a href="all/soms?Module_ID=${m.getModule_ID()}">选购</a></div>
									<div class="clear"></div>
								</div>
                                                            
                                                             </c:forEach>
							</div>
                                                        <div class="ctn fl">             <!--这是中间结构，最多打六个-->
								<div>
									<div class="xuangou_left fl">
										<a href="all/soms?Module_ID=L007">
											<div class="img fl"><img src="./images/L007.png" alt="" width="50" height="50"></div>
											<span class="fl">美商海盗船</span>
											<div class="clear"></div>
										</a>
									</div>
									<div class="xuangou_right fr"><a href="all/soms?Module_ID=L007">选购</a></div>
									<div class="clear"></div>
								</div>
							</div>
							<div class="clear"></div>
						</div>
					</li>
					<li>
						<a href="all/msa?zhonglei=耳机">耳机</a>
						<a href="all/msa?zhonglei=音响">音响</a>
						<div class="pop">
							<div class="left fl">           <!--这是左边结构，最多打六个-->
                                                            
                                                             <c:forEach items="${list11}" var="m" begin="1" end="6">
                                                                <div>
									<div class="xuangou_left fl">
										<a href="all/soms?Module_ID=${m.getModule_ID()}">
											<div class="img fl"><img src="./images/${m.getModule_ID()}.png" alt="" width="50" height="50"></div>
											<span class="fl">${m.getModule_Brand()}</span>
											<div class="clear"></div>
										</a>
									</div>
									<div class="xuangou_right fr"><a href="all/soms?Module_ID=${m.getModule_ID()}">选购</a></div>
									<div class="clear"></div>
								</div>							
                                                            
                                                             </c:forEach>
							</div>
                                                        <div class="ctn fl">             <!--这是中间结构，最多打六个-->
								<div>
									<div class="xuangou_left fl">
										<a href="all/soms?Module_ID=N007">
											<div class="img fl"><img src="./images/N007.png" alt="" width="50" height="50"></div>
											<span class="fl">ENKOR</span>
											<div class="clear"></div>
										</a>
									</div>
									<div class="xuangou_right fr"><a href="all/soms?Module_ID=N007">选购</a></div>
									<div class="clear"></div>
								</div>
                                                            
                                                             <c:forEach items="${list12}" var="m" begin="1" end="5">
                                                                <div>
									<div class="xuangou_left fl">
										<a href="all/soms?Module_ID=${m.getModule_ID()}">
											<div class="img fl"><img src="./images/${m.getModule_ID()}.png" alt="" width="50" height="50"></div>
											<span class="fl">${m.getModule_Brand()}</span>
											<div class="clear"></div>
										</a>
									</div>
									<div class="xuangou_right fr"><a href="all/soms?Module_ID=${m.getModule_ID()}">选购</a></div>
									<div class="clear"></div>
								</div>							
                                                            
                                                             </c:forEach>
							</div>
                                                        <div class="right fl">           <!--这是右边结构，最多打六个-->
                                                            
                                                             <c:forEach items="${list12}" var="m" begin="6" end="6">
                                                                <div>
									<div class="xuangou_left fl">
										<a href="all/soms?Module_ID=${m.getModule_ID()}">
											<div class="img fl"><img src="./images/${m.getModule_ID()}.png" alt="" width="50" height="50"></div>
											<span class="fl">${m.getModule_Brand()}</span>
                                                                                        <div class="clear"></div>
										</a>
									</div>
									<div class="xuangou_right fr"><a href="all/soms?Module_ID=${m.getModule_ID()}">选购</a></div>
									<div class="clear"></div>
								</div>							
                                                            
                                                             </c:forEach>
							</div>
							<div class="clear"></div>
						</div>
					</li>
					<li>
						<a href="all/msa?zhonglei=光驱">光驱</a>
						<div class="pop">
							<div class="left fl">           <!--这是左边结构，最多打六个-->
								
                                                             <c:forEach items="${list13}" var="m" begin="1" end="6">
                                                                <div>
									<div class="xuangou_left fl">
										<a href="all/soms?Module_ID=${m.getModule_ID()}">
											<div class="img fl"><img src="./images/${m.getModule_ID()}.png" alt="" width="50" height="50"></div>
											<span class="fl">${m.getModule_Brand()}</span>
											<div class="clear"></div>
										</a>
									</div>
									<div class="xuangou_right fr"><a href="all/soms?Module_ID=${m.getModule_ID()}">选购</a></div>
									<div class="clear"></div>
								</div>							
                                                           	
                                                             </c:forEach>
							</div>	
                                                        <div class="ctn fl">             <!--这是中间结构，最多打六个-->
								<div>
									<div class="xuangou_left fl">
										<a href="all/soms?Module_ID=M007">
											<div class="img fl"><img src="./images/M007.png" alt="" width="50" height="50"></div>
											<span class="fl">华硕</span>
											<div class="clear"></div>
										</a>
									</div>
									<div class="xuangou_right fr"><a href="all/soms?Module_ID=M007">选购</a></div>
									<div class="clear"></div>
								</div>
							</div>
							<div class="clear"></div>
						</div>
					</li>
				</ul>
			</div>
		
		</div>	

		<div class="sub_banner center">
			<div class="sidebar fl">
				<div class="fl"><a href=""><img src="./image/hjh_01.gif"></a></div>
				<div class="fl"><a href=""><img src="./image/hjh_02.gif"></a></div>
				<div class="fl"><a href=""><img src="./image/hjh_03.gif"></a></div>
				<div class="fl"><a href=""><img src="./image/hjh_04.gif"></a></div>
				<div class="fl"><a href=""><img src="./image/hjh_05.gif"></a></div>
				<div class="fl"><a href=""><img src="./image/hjh_06.gif"></a></div>
				<div class="clear"></div>
			</div>
                    <div class="datu fl"><a href=""><img src="./image/com-3.jpg" alt=""></a></div>
                    <div class="datu fl"><a href=""><img src="./image/com-2.jpg" alt=""></a></div>
                    <div class="datu fr"><a href=""><img src="./image/com-1.jpg" alt=""></a></div>
			<div class="clear"></div>


		</div>
	<!-- end banner -->
        <div class="danpin center">			
			<div class="biaoti center">求购商品信息</div>
			<div class="main center">
                             <div class="table-responsive">
                                 
                                 
                                 
        <table   width='100%' border='0' cellspacing='0' cellpadding='0' class='mytable' style=" border-collapse:collapse;border-spacing:0; border:1px  solid  #FFFFFF;">
            <tr  style="background: #222222;color: #fff;border-bottom-width: 0;  text-align: center; height: 2.2rem;">
                <td>用户名</td>
                <td>求购类型</td>
                <td>求购品牌</td>
                <td>求购型号</td>
                <td>商品详情</td>
                <td>求购价格</td>
                <td>求购商品图片</td>
            </tr>
            <c:forEach items="${showall}" var="s" >
                <tr   style="background: #ebeaea; text-align: center;height: 2.2rem;">
                <td>${s.getUsers_ID()}</td>
                <td>${s.getZhonglei()}</td>
                <td>${s.getWant_Brand()}</td>
                <td>${s.getWant_Model()}</td>
                <td>${s.getWant_Specify()}</td>
                <td>${s.getWant_Price()}</td>
                <td> <a href=""><img width="70" height="70" src="./images/${s.storepath}"></a></td>
            </c:forEach>
            </tr>
        </table>
                    </div>
				
				<div class="clear"></div>
			</div>
		</div>

	
		<footer class="mt20 center">			
			<div class="mt20">二手交易平台|Windows|聊天|书城|路由器|视频电话|天猫店|淘宝直营店|网盟|通讯移动|隐私政策|Select Region</div>
			<div>©secondhand.com 京ICP证110507号 京ICP备10046444号 京公网安备11010802020134号 京网文[2014]0059-0009号</div> 
			<div>违法和不良信息举报电话：185-0130-1238，本网站所列数据，除特殊说明，所有数据均出自我司实验室测试</div>
		</footer>
	</body>
</html>