<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=utf-8">
        <!-- 引入样式文件和动态控制 -->
        <link href="<%=request.getContextPath()%>/css/bootstrap.min.css" rel="stylesheet">
        <link rel="stylesheet" href="<%=request.getContextPath()%>/css/style.css"/>
        <script src="<%=request.getContextPath()%>/js/jquery-3.2.1.min.js"></script>
        <script src="<%=request.getContextPath()%>/js/bootstrap.min.js"></script>
          <base href="${pageContext.request.contextPath}/">
        <title>后台管理界面</title>
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
                        </span>&nbsp;管理</a>
                    <a href="<%=request.getContextPath()%>/page/toaddadminpage" class="list-group-item">
                        <span class="glyphicon glyphicon-plus" aria-hidden="true">
                        </span>&nbsp;创建管理员</a>
                    <a href="<%=request.getContextPath()%>/page/toaddmodulepage" class="list-group-item">
                        <span class="glyphicon glyphicon-plus" aria-hidden="true">
                        </span>&nbsp;添加组件</a>
                </div>
                <!--左边菜单栏-->
                <div class="col-sm-10">
                    <ol class="breadcrumb">
                        <li class="active">列表
                        </li>
                        <li class="active">
                        </li>
                    </ol>

                    <div class="panel panel-default">
                        <div class="panel-heading">
                            组件搜索
                        </div>
                        <div class="panel-body">
                            <form role="form" action="module/findmodule" class="form-inline" >                               
                                <div class="form-group">
                                 
                                    <select class="form-control" name="zhonglei" >
                                        <option value="all">全部</option>
                                        <option value="处理器">处理器</option>
                                        <option value="主板">主板</option>
                                        <option value="内存">内存</option>
                                        <option value="硬盘">硬盘</option>
                                        <option value="显卡">显卡</option>
                                        <option value="机箱">机箱</option>
                                        <option value="电源">电源</option>
                                        <option value="显示器">显示器</option>
                                        <option value="鼠标">鼠标</option>
                                        <option value="音响">音响</option>
                                        <option value="散热器">散热器</option>
                                        <option value="光驱">光驱</option>
                                        <option value="耳机">耳机</option>
                                        
                                        
                                    </select>
                                </div>
                                <div class="form-group">
                                    <input id="search" type="submit" class="btn btn-default" value="开始搜索">
                                </div>
                            </form>
                        </div>
                        
<div >
    <form action="module/mohufind" class="parent" method="post">
        <input type="text" name="sname">
        <input type="submit" value="百度一下">
    </form>
</div>

                    </div>
                    <!--
                        列表展示
                    -->
                    <div class="table-responsive">
                        <table class="table table-hover table-striped text-center" id="moduletable">
                                <tr>
                                    <th>编号</th>
                                    <th>类型</th>
                                    <th>品牌</th>
                                    <th>型号</th>
                                    <th>详情</th>
                                    <th>价格</th>
                                    <th>操作</th>
                                </tr>
                                 <c:forEach items="${moduleList}" var="s" >
                                <tr id="tr${s.getModule_ID()}">
                                    <td>${s.getModule_ID()}</td>
                                    <td>${s.zhonglei}</td>
                                    <td>${s.module_Brand}</td>
                                    <td>${s.getModule_Model()}</td>
                                    <td>${s.getModule_Specify()}</td>
                                    <td>${s.getModule_Price()}</td>
                                    <td>
                                        <a href="">编辑</a>
                                        &nbsp;
                                        <a href="javascript:deleteModule('${s.getModule_ID()}');">删除</a>
                                    </td>
                                
                                </tr>
                            </c:forEach>
                           
                                
                        </table>
                    </div>
                    
                    <script>  //定义一个函数,根据学号删除学生
               function deleteModule(mid) {
                    $.ajax({
                        url: 'module/delete',
                        type: 'POST',
                        data: {mid: mid}, //发送一个请求参数，参数名为stuId，参数值为传入的stuId变量的值
                        success: function () {
                            //如果能执行到success，说明后台删除成功，这里同时将表格中对应的数据行删除
                            $("#tr" + mid).remove(); // remove是删除当前元素和其内容
                        },
                        error: function (req, status, error) {
                            alert("Ajax请求失败，错误：" + error);
                        }
                    });
                }
                
    function popupEdit(mid) {


    currentProductId = uid;
    $.ajax({
        url: 'module/findbyid',
        type: 'POST',
        data: {mid:mid}, //发送一个请求参数，参数名为proId，参数值为传入的pid变量的值
        success: function (pro) {
            $("#inputId").val(pro.Module_ID);
            $("#inputName").val(pro.zhonglei);
            $("#inputpwd").val(pro.Module_Brand);
            $("#inputphone").val(pro.Module_Model);
            $("#inputemail").val(pro.Module_Price);
            $('#editModal').modal('show');
        },
        error: function (req, status, error) {
            alert("Ajax请求失败，错误：" + error);
        }
    });
}
            </script>

                </div>
            </div>
        </div>
       
    </body>
</html>
