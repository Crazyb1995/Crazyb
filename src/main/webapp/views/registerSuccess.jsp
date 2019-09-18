<%--
  Created by IntelliJ IDEA.
  User: l00426550
  Date: 2019/9/18
  Time: 14:39
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Crazyb's Home</title>
    <link rel="stylesheet" href="https://cdn.bootcss.com/bootstrap/3.3.7/css/bootstrap.min.css">
    <script src="https://cdn.bootcss.com/jquery/2.1.1/jquery.min.js"></script>
    <script src="https://cdn.bootcss.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
</head>
<body>
<div class="jumbotron text-center" style="margin-bottom:0;width: 100%;height: 100%;background: #3cb371">
    <h1 style="color: #ffffff;margin-top: 10%">Register Success!</h1>
    <p style="color: #ffffff">Welcome be a member of Crazyb's home, <span id="time">3</span> second before redirect ...</p>
</div>

<script>
    var myVar=setInterval(function(){timerInUse()}, 1000)
    function timerInUse(){
        var t=document.getElementById("time").innerText;
        t=Number(t);
        t--;
        if (t<1){
            window.location.replace("login");
        }
        document.getElementById("time").innerHTML=t;
    }
</script>
</body>
</html>
