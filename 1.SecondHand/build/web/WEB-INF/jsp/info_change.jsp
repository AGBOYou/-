
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>信息修改</title>
		<link rel="stylesheet" type="text/css" href="<%=request.getContextPath()%>/css/login.css">
                
	</head>
	<body>
		<form  method="post" action="<%=request.getContextPath()%>/all/infochange" onsubmit="return checkForm()">
		<div class="regist">
			<div class="regist_center">
				<div class="regist_top">
					<div class="left fl">会员信息修改</div>
					<div class="right fr"><a href="<%=request.getContextPath()%>/page/toindex" target="_self">返回主页</a></div>
					<div class="clear"></div>
					<div class="xian center"></div>
				</div>
				<div class="regist_main center">
					<div class="username">名&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;称:&nbsp;&nbsp;
                                            <input class="shurukuang" type="text" value="" name="users_name" placeholder="请输入你的新名子" id="userName" />
                                            <span>请输入新的姓名</span>
                                        </div>
					<div class="username">密&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;码:&nbsp;&nbsp;
                                            <input class="shurukuang" type="password" name="user_password" placeholder="请输入你的旧密码"/>
                                            <span>请输入旧密码</span>
                                        </div>
					<div class="username">确认密码:&nbsp;&nbsp;
                                            <input class="shurukuang" type="password" value="" name="users_pwd" id="userpwd" placeholder="请输入你的新密码" />
                                            <span>请输入6~12个字符</span>
                                        </div>
					<div class="username">手&nbsp;&nbsp;机&nbsp;&nbsp;号:&nbsp;&nbsp;
                                            <input class="shurukuang" type="text" value="" name="tel" id="usertel" placeholder="请填写正确的手机号" />
                                            <span>请填写新的手机号</span>
                                        </div>
                                        <div class="username">新&nbsp;的&nbsp;邮&nbsp;箱&nbsp;号&nbsp;码：&nbsp;
                                            <input class="shurukuang" type="text" value="" name="email" id="useremail" placeholder="请填写正确的邮箱号" />
                                            <span>输入新的邮箱号</span>
                                        </div>
					<div class="username">
						<div class="left fl">验&nbsp;&nbsp;证&nbsp;&nbsp;码:&nbsp;&nbsp;
                                                    <input class="yanzhengma" type="text" name="username" placeholder="请输入验证码"/>
                                                </div>
						<div class="right fl">
                                                    <img src="<%=request.getContextPath()%>/image/yanzhengma.jpg">
                                                </div>
						<div class="clear"></div>
					</div>
				</div>
				<div class="regist_submit">
					<input class="submit" type="submit" name="submit" value="立即修改"  >
				</div>
				
			</div>
                    </div>
		</form>
	</body>
</html>
