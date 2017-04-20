<%--
  Created by IntelliJ IDEA.
  User: lee
  Date: 2017/4/2
  Time: 12:03
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8" />
    <title>div布局</title>

    <script type="text/javascript" src="http://libs.baidu.com/jquery/1.3.2/jquery.min.js"></script>

    <style type="text/css">
        .corInsertHref
        {
            position: absolute;
            z-index: 10000;
            width: 370px;
            float: left;
            display: none;
            background-color: #fff;
            padding: 10px;
        }
        .corBackground
        {
            width: 100%;
            height: 100%;
            position: absolute;
            background-color: #000;
            top: 0;
            left: 0;
            filter: alpha(opacity=30);
            -moz-opacity: 0.30;
            -khtml-opacity: 0.30;
            opacity: 0.30;
            z-index: 9999;
            display: none;
        }
    </style>

    <script type="text/javascript">
        $(function() {
            //点击登录按钮 弹出层并初始化弹出层位置
            $("#btnlogin").click(function() {
                $("#corBackground").animate({ opacity: "show" }, "slow");
                $("#corInsertHref").animate({ opacity: "show" }, "slow");
                autoSize($("#corInsertHref"));
            });
            //窗口大小缩放事件
            $(window).resize(function() {
                autoSize($("#corInsertHref"));
            });
            //窗口大小缩放时调整弹出层的位置
            var autoSize = function(corObj) {
                var wWidth = $(window).width(), wHeight = $(window).height();
                var ihWidth = corObj.outerWidth(true), ihHeight = corObj.outerHeight(true);

                corObj.css({ "top": ((wHeight - ihHeight) / 2) + "px", "left": ((wWidth - ihWidth) / 2) + "px" });
            }
        });
    </script>

</head>
<body>
<span id="btnlogin">登录</span>
<div id="corInsertHref" class="corInsertHref">
    <p>
        账号<input id="txtName" type="text" /></p>
    <p>
        密码<input id="txtPwd" type="text" /></p>
    <p>
        <input type="button" value="登 录" /></p>
</div>
<div id="corBackground" class="corBackground">
</div>
</body>
</html>
