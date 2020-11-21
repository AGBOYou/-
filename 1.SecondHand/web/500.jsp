
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE HTML>
<html>
    <head>
        <meta charset="utf-8">
        <title>这个.. 服务器出现问题！！！</title>
        
        <style type="text/css">
            body{ margin:0; padding:0; font-family: 微软雅黑; }
            div#mother{ margin:0 auto; width:943px; height:572px; position:relative; }
            div#errorBox{ background: url(${pageContext.request.contextPath}/images/longmao3.gif) no-repeat center left; width:943px; height:572px; margin:auto; }
            div#errorText{ color:#39351e; padding:185px 0 0 456px }
            div#errorText p{ width:303px; font-size:14px; line-height:26px; }
            div.link{ height:50px; width:145px; float:left;background-color:red;color: black; }
            div#home{ margin:0 0 0 444px;}
            div#contact{ margin:0 0 0 25px;}
            h1{ font-size:40px; margin-bottom:35px; }
          
        </style>

    </head>
    <body>
        <div id="mother">
            <div id="errorBox">
                <div id="errorText">
                    <h1>Sorry..服务器出现问题！</h1>
                    <p>服务器遇到内部错误，导致无法完成此请求。</p>
                    <p>请不要担心，这没事。</p>
                    <p>如果该资源对你很重要，请与<a href="">管理员</a>联系。</p>
                    <p>火星不太安全，我可以免费送你回地球！</p>
                    <p style=""><a href="index.jsp" style="color: red" >返回主页</a></p>
                </div>
            </div>
        </div>
    </body>
</html>
