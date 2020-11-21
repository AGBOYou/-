

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>会员登录</title>
        <link rel="stylesheet" type="text/css" href="<%=request.getContextPath()%>/css/login.css">
    </head>
    <body>
		<!-- login -->
		<div class="top center">
			<div class="logo center">
				<a href="toindex" target="_blank"><img src="../image/mistore_logo.png" alt=""></a>
			</div>
		</div>
		<form  method="post" action="<%=request.getContextPath()%>/all/ls" class="form center">
		<div class="login">
			<div class="login_center">
				<div class="login_top">
					<div class="left fl">会员登录</div>
					<div class="right fr">您还不是我们的会员？<a href="toregister" target="_self">立即注册</a></div>
					<div class="clear"></div>
					<div class="xian center"></div>
				</div>
				<div class="login_main center">
					<div class="username">用户名:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<input class="shurukuang" type="text" name="username" placeholder="请输入你的用户名" value="${cookie.userid.value}"/></div>
					<div class="username">密&nbsp;&nbsp;&nbsp;&nbsp;码:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<input class="shurukuang" type="password" name="password" placeholder="请输入你的密码" value="${cookie.password.value}"/></div>
					<div class="username"><input name="remember" value="Y" checked type="checkbox" id="rem"><label for="rem">记住密码</label>
						
						
						<div class="clear"></div>
					</div>
				</div>
				<div class="login_submit" style="margin-top: -20px">
                                    <input class="submit" type="submit" name="submit" value="立即登录" >
                                        <a href="toamdinLogin">
                                        <input class="reset" type="button" style="
                                            background-color: #555555; /* black */
                                            border: none;float: right;
                                            color: white;margin-right: 140px;
                                            padding: 10px 20px;
                                            border-radius: 8px;
                                            text-align: center;
                                            text-decoration: none;
                                            display: inline-block;
                                            font-size: 12px;" name="reset" value="管理员登陆">
                                        </a>
				</div>
				
			</div>
		</div>
		</form>
		<footer>
			<div class="copyright">简体 | 繁体 | English | 常见问题</div>
			<div class="copyright">二手交易平台公司版权所有-京ICP备10046444-<img src="./image/ghs.png" alt="">京公网安备11010802020134号-京ICP证110507号</div>

		</footer>
	</body>
</html>
