<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>

<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <title>管理员登录</title>
    <!-- 引入样式文件和动态控制 -->
    <link rel="stylesheet" href="<%=request.getContextPath()%>/css/bootstrap.min.css">
    <link rel="stylesheet" href="<%=request.getContextPath()%>/css/adminLogin.css"/>
    <script src="../js/jquery-3.2.1.min.js"></script>
    <script src="../js/bootstrap.min.js"></script>
    
   

    
</head>

<body class="text-center" style="background-image: url(../images/blank-brainstorming-business-6357.jpg);
      background-size: 100%;background-repeat: no-repeat;position: relative;
      ">
    
    <form class="form-signin" action="<%=request.getContextPath()%>/page/adminLogin" method="post">
        <h1 class="h3 mb-3 font-weight-normal" style="color: #FFFFFF">后台登录</h1>
        <input type="text" name="admin" class="form-control" placeholder="管理员账号" required autofocus>
        <input type="password" name="password" class="form-control" placeholder="密码" required>
        <div class="checkbox mb-3">
            <label for="oops">&nbsp;</label>
        </div>
        <button class="btn btn-lg btn-primary btn-block" type="submit">登陆</button>
        <a href="<%=request.getContextPath()%>/page/toindex">返回主页</a>
    </form>
    
</body>

</html>