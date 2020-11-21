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
         <script src="<%=request.getContextPath()%>/js/script.js"></script>
        
        <base href="${pageContext.request.contextPath}/">
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
                        <li  id="zjgl"><a href="<%=request.getContextPath()%>/page/toadminpage">组件管理</a>
                        </li>
                        <li class="active"><a href="<%=request.getContextPath()%>/page/sus">用户管理</a>
                        </li>
                        <li class="active"><a href="<%=request.getContextPath()%>/page/heihei">求购信息管理</a>
                        </li>
                        

                    </ul>
                    <ul class="nav navbar-nav navbar-right">
                        <li><a>欢迎您</a>
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
                        </span>&nbsp;用户管理</a>
                </div>
                <!--左边菜单栏-->
                <div class="col-sm-10">
                    <ol class="breadcrumb">
                        <li class="active">用户列表
                        </li>
                        <li class="active">
                        </li>
                    </ol>

                    <div class="panel panel-default">
                        <div class="panel-heading">
                            搜索用户
                        </div>
                        <div class="panel-body">
                             <hr>
            <a href="javascript:findAll();" class="btn btn-info">查询所有用户</a>
            &nbsp;&nbsp;
            <a href="javascript:popupAdd();" class="btn btn-warning">+添加新用户</a>
            &nbsp;&nbsp;
            
            <br>
            <hr>
                        </div>
                    </div>
                    
                    <!--
                        列表展示
                    -->
                    <div class="table-responsive">
                        <table class="table table-hover table-striped text-center" id="dataTable">
                            <tr>
                                <th>用户名</th>
                                <th>姓名</th>
                                <th>密码</th>
                                <th>电话</th>
                                <th>邮箱</th>
                                <th>操作</th>

                            </tr>
                           
                        </table>
                    </div>
                     <!-- Modal -->
            <div class="modal fade text-center" id="editModal" tabindex="-1" role="dialog" aria-labelledby="editModalLabel">
                <div class="modal-dialog" role="document">
                    <div class="modal-content">
                        <div class="modal-header">
                            <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
                            <h2 class="modal-title text-danger" id="editModalLabel">编辑用户信息</h2>
                        </div>
                        <div class="modal-body">
                            <form id="editForm" class="form-inline" method="post">
                                <span>用户名：</span>
                                <input type="text" id="inputId" name="users_ID" class="form-control" readonly>
                                <br><br>
                                <span>姓名：</span>
                                <input type="text" id="inputName" name="users_Name" class="form-control">
                                <br><br>
                                <span>密码：</span>
                                <input type="text" id="inputpwd" name="users_pwd" class="form-control">
                                <br><br>
                                <span>电话：</span>
                                <input type="text" id="inputphone" name="users_phoneNum" class="form-control">   
                                <br><br>
                                <span>邮箱：</span>
                                <input type="text" id="inputemail" name="e_mail" class="form-control">
                            </form>
                        </div>
                        <div class="modal-footer">
                            <button type="button" class="btn btn-default" data-dismiss="modal">关闭</button>
                            <button id="btnEdit" type="button" class="btn btn-primary">保存修改</button>
                        </div>
                    </div>
                </div>
            </div>
            
            <div class="modal fade text-center" id="addModal" tabindex="-1" role="dialog" aria-labelledby="addModalLabel">
                <div class="modal-dialog" role="document">
                    <div class="modal-content">
                        <div class="modal-header">
                            <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
                            <h2 class="modal-title text-danger" id="addModalLabel">添加新用户</h2>
                        </div>
                        <div class="modal-body">
                            <form id="addForm" class="form-inline" method="post">
                                <span>用户名：</span>
                                <input type="text" id="proid" name="users_ID" class="form-control" placeholder="在此输入用户名">
                                <br><br>
                                <span>姓名：</span>
                                <input type="text" id="proName" name="users_Name" class="form-control" placeholder="在此输入姓名">
                                <br><br>
                                <span>密码：</span>
                                <input type="text" id="propwd" name="users_pwd" class="form-control" placeholder="在此输入用户密码">
                                <br><br>
                                <span>电话：</span>
                                <input type="text" id="prophone" name="users_phoneNum" class="form-control" placeholder="在此输入新的电话">   
                                <br><br>
                                <span>邮箱：</span>
                                <input type="text" id="proemail" name="e_mail" class="form-control" placeholder="在此输入新的邮箱">
                            </form>
                        </div>
                        <div class="modal-footer">
                            <button type="button" class="btn btn-default" data-dismiss="modal">关闭</button>
                            <button id="btnAdd" type="button" class="btn btn-danger">添加</button>
                        </div>
                    </div>
                </div>
            </div>
                    
                </div>
            </div>
        </div>

        

    </body>
</html>
