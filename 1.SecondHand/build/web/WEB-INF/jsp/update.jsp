
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>update user</title>
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
                        <img src="images/setting.png" height="100%" />
                    </a>
                </div>
                <div class="collapse navbar-collapse" id="example-navbar-collapse">
                    <ul class="nav navbar-nav">
                        <li  id="zjgl"><a href="adminPage.jsp">组件管理</a>
                        </li>
                        <li class="active"><a href="#">用户管理</a>
                        </li>
                        <li><a href="#">订单管理</a>
                        </li>

                    </ul>
                    <ul class="nav navbar-nav navbar-right">
                        <li><a>欢迎您,${admin.admin}</a>
                        </li>
                        <li><a href="logout">登出</a>
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
                        </span>&nbsp;管理</a>
                    <a href="#" class="list-group-item">
                        <span class="glyphicon glyphicon-plus" aria-hidden="true">
                        </span>&nbsp;创建管理员</a>
                </div>
                <!--左边菜单栏-->
                <div class="col-sm-10">
                    <ol class="breadcrumb">
                        <li class="active">列表
                        </li>
                        <li class="active">
                        </li>
                    </ol>
                    <div>
                        <form action="us" method="post" style="width: 1200px;text-align: center; "  >
                            <p>用户名：<input type="text" name="uid" value="${user.users_ID}" readonly class="readonly" style="background-color:darkgrey "></p>
                            <p>姓名：<input type="text" name="uname" value="${user.users_Name}"></p>
                            <p>密码：<input type="text" name="upwd" value="${user.users_pwd}"></p>
                            <p>电话：<input type="text" name="uphone" value="${user.users_phoneNum}" >
                            </p>
                            <p>邮箱：<input type="text" name="uemail" value="${user.e_mail}"  ></p>
                            <!--这里用了隐藏字段提交以下该学生在列表中的索引，方便在列表中操作该学生-->
                            <input type="hidden" name="index" value="${param.index}">
                            <input type="submit" value="提交更改" class="btn btn-success">
                        </form>
                    </div>





                    <!--
                        列表展示
                    -->


                </div>
            </div>
        </div>
    </body>
</html>
