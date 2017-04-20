<%--
  Created by IntelliJ IDEA.
  User: lee
  Date: 2017/4/1
  Time: 18:29
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>
  <head>
    <title>Welcome to Endeavour</title>
    <link rel="stylesheet" type="text/css" href="css/login.css">
    <script type="text/javascript" src="http://libs.baidu.com/jquery/1.11.3/jquery.min.js"></script>
  </head>
  <body>
  <script type="text/javascript" src="js/login.js" ></script>
  <h1>欢迎访问哲勤云</h1>
  <a href="login.jsp" id="btnlogin" onclick="return false">登录</a>
  <a href="uploadData.jsp">上传数据</a><br>
  <a href="getData.jsp">获取数据</a>
  <div id="corInsertHref" class="corInsertHref">
    <p>
      账号<input id="txtName" type="text" /></p>
    <p>
      密码<input id="txtPwd" type="text" /></p>
    <p>
      <input type="button" value="登 录" />&nbsp;&nbsp;<input id="close" type="button" value="关 闭" /></p>
  </div>
  <div id="corBackground" class="corBackground"></div>
  </body>
</html>










