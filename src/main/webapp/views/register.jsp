<%--
  Created by IntelliJ IDEA.
  User: l00426550
  Date: 2019/9/17
  Time: 14:33
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
<div class="jumbotron text-center" style="margin-bottom:0;width: 100%;height: 90%;background: #3cb371">
    <h1 style="color: #ffffff">Welcome to Crazyb's Home</h1>
    <p style="color: #ffffff">You can login directly if you already have an account,
        otherwise start your journey by register now !</p>
    <p style="color: #ffffff">Love Susu</p>
    <div class="col-md-4 col-md-offset-4" style="margin-top: 1%">
        <form role="form" action="${pageContext.request.contextPath}/register" method="post">
            <div class="form-group" style="padding: 2px;padding-top: 0px">
                <input class="form-control input" type="text" name="username" placeholder="username">
            </div>
            <div class="form-group" style="padding: 2px">
                <input class="form-control input" type="text" name="email" placeholder="email">
            </div>
            <div class="form-group" style="padding: 2px">
                <input class="form-control input" type="text" name="phone" placeholder="phone">
            </div>
            <div class="form-group" style="padding: 2px">
                <select class="form-control" name="male">
                    <option>Male</option>
                    <option>Female</option>
                </select>
            </div>
            <div class="form-group" style="padding: 2px">
                <input class="form-control input" type="text" name="password" placeholder="password">
            </div>
            <div class="form-group">
                <div style="margin: 0px;padding: 2px;">
                    <button type="submit" class="btn btn-primary btn-block" style="margin: 0px">
                        Register</button>
                </div>
            </div>
        </form>
    </div>
</div>
<div style="width: 100%;height: 10%;background: #3cb371">
    <p class="text-center" style="color: #ffffff">Copyright © 2018-2019 Crazyb All Rights Reserved.</p>
</div>
</body>
</html>
