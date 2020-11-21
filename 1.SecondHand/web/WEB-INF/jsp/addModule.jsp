<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="utf-8">
	<title>添加组件</title>
	<link rel="stylesheet" type="text/css" href="<%=request.getContextPath()%>/css/bootstrap.min.css">
	<link rel="stylesheet" type="text/css" href="<%=request.getContextPath()%>/css/my-login.css">



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
							<h4 class="card-title">添加组件</h4>
							<form method="POST" action="<%=request.getContextPath()%>/page/am">
							 
								<div class="form-group">
									<label for="Module_ID">编号：</label>
									<input  type="text" class="form-control"  name="Module_ID">
								</div>
								<div class="form-group">
									<label for="zhonglei" >类型：</label>
									<input type="text" class="form-control" name="zhonglei">
								</div>
                                                                <div class="form-group">
									<label for="zhonglei" >品牌：</label>
									<input type="text" class="form-control" name="Module_Brand">
								</div>
                                                                <div class="form-group">
									<label for="zhonglei" >型号：</label>
									<input type="text" class="form-control" name="Module_Model">
								</div>
                                                                <div class="form-group">
									<label for="zhonglei" >详情：</label>
									<input type="text" class="form-control" name="Module_Specify">
								</div>
								<div class="form-group">
									<label for="zhonglei" >价格：</label>
									<input type="text" class="form-control" name="Module_Price">
								</div>

								

								<div class="form-group no-margin">
									<button type="submit" class="btn btn-primary btn-block" value="添加">
										添加组件
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
