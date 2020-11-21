

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <link href="<%=request.getContextPath()%>/css/bootstrap.min.css" rel="stylesheet">
        <link rel="stylesheet" href="<%=request.getContextPath()%>/css/style.css"/>
        <script src="<%=request.getContextPath()%>/js/jquery-3.2.1.min.js"></script>
        <script src="<%=request.getContextPath()%>/js/bootstrap.min.js"></script>
    </head>
    <body>
        <nav class="navbar navbar-inverse" role="navigation">
            <div class="container-fluid">
                <div class="navbar-header">
                    <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#example-navbar-collapse">
                        <span class="sr-only">切换导航</span>
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                    </button>
                    <a class="navbar-brand" href="#">
                        <img src="<%=request.getContextPath()%>/images/setting.png" height="100%" />
                    </a>
                </div>
                <div class="collapse navbar-collapse" id="example-navbar-collapse">
                    <ul class="nav navbar-nav">
                        <li  id="zjgl"><a href="<%=request.getContextPath()%>/page/toadminpage">组件管理</a>
                        </li>
                        <li class="active"><a href="<%=request.getContextPath()%>/page/sus">用户管理</a>
                        </li>
                        <li class="active"><a href="<%=request.getContextPath()%>/page/heihei">求购信息管理</a>
                        </li>

                    </ul>
                    <ul class="nav navbar-nav navbar-right">
                        <li><a>欢迎您,${admin.getAdmin_ID()}</a>
                        </li>
                        <li><a href="<%=request.getContextPath()%>/page/adminLoginOut">登出</a>
                        </li>
                    </ul>
                </div>
            </div>
        </nav>

        <div class="container-fluid">
            <div class="row">
                <div class="col-sm-2">
                    <a href="#" class="list-group-item active">
                        <span class="glyphicon glyphicon-home">    
                        </span>&nbsp;求购信息管理</a>
                </div>
                <div class="col-sm-10">
                    <ol class="breadcrumb">
                        <li class="active">求购信息
                        </li>
                        <li class="active">
                        </li>
                    </ol>

                    <div class="panel panel-default">
                        <div class="panel-heading">
                            所有求购信息
                        </div>
                    </div>
                    <div class="table-responsive">
                        <table class="table table-hover table-striped text-center" id="moduletable">
                            <tr>
                                <th>用户名</th>
                                <th>求购类型</th>
                                <th>求购品牌</th>
                                <th>求购型号</th>
                                <th>详情</th>
                                <th>求购价格</th>
                                <th>操作</th>

                            </tr>
                            <c:forEach items="${proall}" var="s" >
                                    <td>${s.getUsers_ID()}</td>
                                    <td>${s.getZhonglei()}</td>
                                    <td>${s.getWant_Brand()}</td>
                                    <td>${s.getWant_Model()}</td>
                                    <td>${s.getWant_Specify()}</td>
                                    <td>${s.getWant_Price()}</td>
                                    <td>
                                        &nbsp;
                                        <a href="<%=request.getContextPath()%>/page/glyshanchu?uid=${s.getUsers_ID()}&uzl=${s.getZhonglei()}&ub=${s.getWant_Brand()}&um=${s.getWant_Model()}&us=${s.getWant_Specify()}&up=${s.getWant_Price()}" >删除</a>
                                        

                                    </td>
                                </tr>
                            </c:forEach>
                        </table>
                    </div>
                </div>
            </div>
        </div>
    </body>
                </html>
