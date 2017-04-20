<%--
  Created by IntelliJ IDEA.
  User: lee
  Date: 2017/4/5
  Time: 10:50
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>getData</title>
    <script type="text/javascript" src="http://libs.baidu.com/jquery/1.11.3/jquery.min.js"></script>
    <script>
        time2String=function (t){
        with(t)return [getFullYear(),'年'
            ,('0'+(getMonth()+1)).slice(-2),'月'
            ,('0'+getDate()).slice(-2),'日 '
            ,('0'+getHours()).slice(-2),': '
            ,('0'+getMinutes()).slice(-2),': '
            ,('0'+getSeconds()).slice(-2)].join('')
        }
        function succFunction(tt) {
            $("#list").html('');

            //eval将字符串转成对象数组
            //var json = { "id": "10086", "uname": "zhangsan", "email": "zhangsan@qq.com" };
            //json = eval(json);
            //alert("===json:id=" + json.id + ",uname=" + json.uname + ",email=" + json.email);

            var json = eval(tt);//数组
            $.each(json, function (index, item) {
                //循环获取数据
                var DeviceID = json[index].DeviceID;
                var Temperature = json[index].Temperature;
                var Moisture = json[index].Moisture;
                var Date = json[index].Date.$date;
                $("#list").html($("#list").html() + Date+ "&nbsp;&nbsp;&nbsp;-&nbsp;&nbsp;&nbsp;" + DeviceID + "&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;-&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;" + Temperature + "&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;-&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;" + Moisture + "<br/>");
            });
        }
    </script>
</head>
<body>
<script>
    //setInterval(function () {
    function ajaxsubmit() {
    $.ajax({cache: true,
        type: "GET",
        url: "/getData",
        data: {"hello":"show me data"},
        async: true,
        statusCode: {
            404: function () { $("#result").text("Page not found"); },
            500: function () { $("#result").text("internal server error"); }
        },
        error: function (e) {
//            alert(e);
        },
        success: succFunction
        /*function (data) {
        $("#result").html(data);
    }*/
    })}
    //  })}, 20000);
</script>
<span>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Date &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; -DeviceID -Temperature -Moisture</span>
<p id="list"></p>
<input type="button" name="" id="" onclick="ajaxsubmit()" value="Query">
</body>
</html>
