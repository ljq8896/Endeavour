<%--
  Created by IntelliJ IDEA.
  User: lee
  Date: 2017/4/2
  Time: 8:07
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>上传数据</title>
    <link rel="stylesheet" type="text/css" href="/css/login.css">
    <script type="text/javascript" src="http://libs.baidu.com/jquery/1.11.3/jquery.min.js"></script>
    <script type="text/javascript">
        get=function (id){return document.getElementById(id)}
        time2String=function (t){
            with(t)return [getFullYear(),'年'
                ,('0'+(getMonth()+1)).slice(-2),'月'
                ,('0'+getDate()).slice(-2),'日 '
                ,('0'+getHours()).slice(-2),': '
                ,('0'+getMinutes()).slice(-2),': '
                ,('0'+getSeconds()).slice(-2)].join('')
        }
        setInterval(function (){
        var localtime=time2String(new Date);
        get('locale').innerHTML=localtime;
        get('formtime').value=localtime;
        },1000);
        function ajaxsubmit() {
        $.ajax({
                cache: true,
                type: "POST",
                url: "/uploadData",
                data: $('#uploadData').serialize(),// 你的formid
                async: true,
                statusCode: {
                404: function () { $("#result").text("Page not found"); },
                500: function () { $("#result").text("internal server error"); }
                },
                error: function (e) {
                     alert(e);
                },
                success: function (data) {
                    $("#result").html(data);
                }
            });
        }
    </script>
</head>
<body>
<h1 class="h1">Welcome to use data upload system</h1>
<p class="p">please input data</p>
<div class="upload">
<form method="post" id="uploadData">
    <table border="1">
        <tr>
            <th>LocalTime</th>
            <th>DeviceID</th>
            <th>Temperature</th>
            <th>Moisture</th>
        </tr>
        <tr>
            <td><span id="locale">loading...</span></td>
            <td><input name="deviceID"></td>
            <td><input name="temperature"></td>
            <td><input name="moisture"></td>
            <input type="hidden" name="date" id="formtime">
        </tr>
    </table>
    <input type="button" value="Submit" onclick="ajaxsubmit()">
</form>
</div>
<div id="result">status</div>
</body>
</html>
