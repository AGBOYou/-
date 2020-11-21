<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="utf-8">
	<title>管理员创建</title>
	<link rel="stylesheet" type="text/css" href="<%=request.getContextPath()%>/css/bootstrap.min.css">
	<link rel="stylesheet" type="text/css" href="<%=request.getContextPath()%>/css/my-login.css">


        <script>
            function checkID() {
                var userID = document.getElementById("inputAdmin").value;
                var userReg = /^[0-9a-zA-Z]{1,16}$/;
                if (!userReg.test(userID)) {
                    span_ID.innerHTML = "请输入字母、数字或者其组合"; //输入不合法，则显示提示信息
                    return false;
                } else {
                    span_ID.innerHTML = "格式正确"; //验证通过后提示
                    return true;
                }

            }
            
            

            function Password2() {
                //确认密码
                var pwd = document.getElementById("Password").value;
                var pwd2 = document.getElementById("rePassword").value;
                if (pwd !== pwd2) {
                    span_pwd2.innerHTML = "两次输入不一致";
                } else {
                    span_pwd2.innerHTML = "输入正确";
                }

            }

        </script>
</head>
<body class="my-login-page">
    
		<div class="container h-100">
			<div class="row justify-content-md-center h-100">
                            <div class="card-wrapper" style="margin:0 auto"  >
					<div class="brand">
						<img src="<%=request.getContextPath()%>/image/logo.jpg">
                                                
					</div>
                                    <div class="card fat" >
						<div class="card-body">
							<h4 class="card-title">创建账号</h4>
							<form method="POST" action="<%=request.getContextPath()%>/page/aas">
							 
								<div class="form-group">
									<label for="inputAdmin">管理员账号：</label>
									<input  type="text" class="form-control" name="inputAdmin" id="inputAdmin" placeholder="AdminID" onblur="checkID()">
                                                                        <span id="span_ID"></span>
								</div>

								<div class="form-group">
									<label for="inputPassword">密码：</label>
									<input type="password" class="form-control"  name="Password"  id="Password" placeholder="Password" onblur="Password()">
								</div>

								<div class="form-group">
									<label for="rePassword">确认密码：</label>
									<input  type="password" class="form-control" id="rePassword" name="rePassword" placeholder="rePassword" onblur="Password2()">
								</div>

								

								<div class="form-group no-margin">
									<button type="submit" class="btn btn-primary btn-block">
										创建账号
									</button>
								</div>
								
							</form>
						</div>
					</div>
                                        <div class="footer">
						简体 | 繁体 | English | 常见问题
					</div>

					<div class="footer">
						二手交易平台公司版权所有-京ICP备10046444-<img src="./image/ghs.png" alt="">京公网安备11010802020134号-京ICP证110507号
					</div>
				</div>
			</div>
		</div>
	

	
</body>
</html>