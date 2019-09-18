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
<div class="jumbotron text-center" style="margin-bottom:0;width: 100%;height: 95%;background: #3cb371">
    <h1 style="color: #ffffff">Welcome to Crazyb's Home</h1>
    <p style="color: #ffffff">You can login directly if you already have an account,
        otherwise start your journey by register now !</p>
    <p style="color: #ffffff">Love Susu</p>
    <div class="col-md-4 col-md-offset-4" style="margin-top: 1%">
        <form role="form" name="register" action="${pageContext.request.contextPath}/register" method="post">
            <div class="form-group" style="padding: 2px;padding-top: 0px">
                <input class="form-control input" type="text" name="username" placeholder="username" required
                       pattern="^[0-9a-zA-Z]{6,16}$" title="please enter your nickname, 6-16 character">
            </div>
            <div class="form-group" style="padding: 2px">
                <input class="form-control input" type="text" name="email" placeholder="email" required
                       pattern="^[a-zA-Z0-9_-]+@[a-zA-Z0-9_-]+(\.[a-zA-Z0-9_-]+)+$" title="please use valid email address">
            </div>
            <div class="form-group" style="padding: 2px">
                <input class="form-control input" type="text" name="phone" placeholder="phone" required
                       pattern="^[0-9]{11}$" title="please use valid phone number">
            </div>
            <div class="form-group" style="padding: 2px">
                <select class="form-control" name="sex">
                    <option>Male</option>
                    <option>Female</option>
                </select>
            </div>
            <div class="form-group" style="padding: 2px">
                <input class="form-control input" type="password" name="password" placeholder="password" required
                       pattern="^[!_.?@0-9a-zA-Z]{6,16}$" title="6-16 character, include a-zA-Z0-9!_.?@.etc">
            </div>
            <div class="form-group">
                <div style="margin: 0px;padding: 2px;">
                    <button type="submit" class="btn btn-primary btn-block" style="margin: 0px">
                        Register</button>
                </div>
            </div>
            <div class="form-group">
                    <span class="text-left" style="color: #ffffff;float: left;text-decoration: underline;padding-left: 2px;cursor: pointer"
                    onclick="window.location.href='login'">
                        Already have account, Login now</span>
            </div>
        </form>
    </div>
</div>
<div style="width: 100%;height: 5%;background: #3cb371">
    <p class="text-center" style="color: #ffffff">Copyright © 2018-2019 Crazyb All Rights Reserved.</p>
</div>
</body>
</html>
