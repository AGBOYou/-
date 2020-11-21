<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
	<head>
            <meta charset="UTF-8">
            <meta name="author" content="by Eden"/>
            <title>用户注册</title>
            <link rel="stylesheet" type="text/css" href="<%=request.getContextPath()%>/css/login.css">

            <script>
                function checkID(){
                    var userID = document.getElementById("userID").value;
                    var userReg = /^[0-9a-zA-Z]{1,16}$/;
                    if (!userReg.test(userID)) {   
                        span_ID.innerHTML = "请输入字母、数字或者其组合"; //输入不合法，则显示提示信息
                        return false; 
                    }else{
                        span_ID.innerHTML = "格式正确"; //验证通过后提示
                        return true;   
                    }
                    
                }
                
                function Name(){
                    var userName = document.getElementById("userName").value;
                    var nameReg = /^[\u4e00-\u9fa5]{2,6}$/;
                    if (!nameReg.test(userName)) {   
                        var t = span_name.innerHTML = "请输入2~6个汉字"; //输入不合法，提示信息
                        return false; 
                    }else{
                        span_name.innerHTML = "格式正确"; //验证通过后提示
                        return true;   
                    }
                    
                }
                
                function Password() {
                //密码
                    var pwd = document.getElementById("userpwd").value;
                    var pwdReg = /^[\d\w]{6,12}$/;
                    if (!pwdReg.test(pwd)) {
                        span_pwd.innerHTML = "请输入6~12以内数字、字母或组合密码";
                    }else{
                        span_pwd.innerHTML = "格式正确";
                    }
            
                }
                
                function Password2() {
                //确认密码
                    var pwd = document.getElementById("userpwd").value;
                    var pwd2 = document.getElementById("userpwd2").value;
                if (pwd != pwd2) {
                    span_pwd2.innerHTML = "两次输入不一致";
                }else{
                    span_pwd2.innerHTML = "输入正确";
                }
                
                }
                
                function Tel() {
                //电话
                    var tel = document.getElementById("usertel").value;
                    var telReg = /^1\d{10}$/;
                    if (!telReg.test(tel)) {
                        span_tel.innerHTML = "请输入正确格式的手机号";
                    }else{
                        span_tel.innerHTML = "格式正确";
                    }
            
                }
                
                function Email() {
                //邮箱验证
                    var email = document.getElementById("useremail").value;
                    var emailReg = /^[\w\d]{1,12}@[\w\d]{1,9}\.[\w]{2,3}$/;
                    if (!emailReg.test(email)) {
                        span_email.innerHTML = "错误!如:Eden@qdu.com";
                    }else{
                    span_email.innerHTML = "邮箱格式正确";
                    }
                    
                }
                
            </script> 
            
	</head>
	<body>
		<form action="<%=request.getContextPath()%>/all/register" method="post" onsubmit="return checkForm()">
		<div class="regist">
			<div class="regist_center">
				<div class="regist_top">
					<div class="left fl">会员注册</div>
                                        <div class="right fr"><a href="./index.jsp" target="_self">DIYComputer</a></div>
					<div class="clear"></div>
					<div class="xian center"></div>
				</div>
				<div class="regist_main center">
                                    <div class="username">用&nbsp;&nbsp;户&nbsp;&nbsp;名:&nbsp;&nbsp;
                                        <input class="shurukuang" type="text" name="userID" id="userID" placeholder="请输入你的用户名" onblur="checkID()"/>
                                        <span id="span_ID">请勿输入汉字</span>
                                    </div>
                                    <div class="username">姓&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;名:&nbsp;&nbsp;
                                        <input class="shurukuang" type="text" name="username" id="userName" placeholder="请输入你的姓名" onblur="Name()"/>
                                        <span id="span_name">请输入真实姓名</span>
                                    </div>
                                    <div class="username">密&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;码:&nbsp;&nbsp;
                                        <input class="shurukuang" type="password" name="password" id="userpwd" placeholder=" 请输入你的密码" onblur="Password()"/>
                                        <span id="span_pwd">请输入6~12个字符</span>
                                    </div>
			
                                    <div class="username">确认密码:&nbsp;&nbsp;
                                        <input class="shurukuang" type="password" name="repassword" id="userpwd2" placeholder="请确认你的密码" onblur="Password2()"/>
                                        <span id="span_pwd2">两次密码应一致</span>
                                    </div>
                                    <div class="username">手&nbsp;&nbsp;机&nbsp;&nbsp;号:&nbsp;&nbsp;
                                        <input class="shurukuang" type="text" name="tel" id="usertel" placeholder="请填写正确的手机号" onblur="Tel()"/>
                                        <span id="span_tel">请填写手机号，方便我们联系您！</span>
                                    </div>
                                    <div class="username">邮&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;箱:&nbsp;&nbsp;
                                        <input class="shurukuang" type="email" name="email" id="useremail" placeholder="请填写正确的邮箱地址" onblur="Email()"/>
                                        <span id="span_email">请填写邮箱</span>
                                    </div>
					
				</div>
				<div class="regist_submit">
                                    <input class="submit" style="width: 360px;" type="submit" name="submit" value="立即注册" >
                                        
                                        <input class="reset" type="reset" style="
                                            background-color: #555555; /* black */
                                            border: none;
                                            color: white;
                                            padding: 10px 20px;
                                            border-radius: 8px;
                                            text-align: center;
                                            text-decoration: none;
                                            display: inline-block;
                                            font-size: 12px;" name="reset" value="重置">
                                        
				</div>
				
			</div>
		</div>
		</form>
	</body>
</html>
