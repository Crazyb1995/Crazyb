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
    <p style="color: #ffffff;margin-left: 8%;margin-right: 8%">Hello ,  Have you forget your password? You can reset your password by verify your phone number or email address which are provided when you register</p>
    <div class="col-md-4 col-md-offset-4" style="margin-top: 3%">
        <form role="form" action="${pageContext.request.contextPath}/resetPassword" method="post">
            <p class="text-left" style="color: firebrick;padding-left: 2px;font-size: small">${msg}</p>
            <div class="form-group" style="padding: 2px">
                <input class="form-control input" type="text" name="username" placeholder="username" required>
            </div>
            <div class="form-group" style="padding: 2px">
                <select class="form-control" name="type" id="type">
                    <option>Phone</option>
                    <option>Email</option>
                </select>
            </div>
            <div class="form-group" style="padding: 2px">
                <input class="form-control input" type="text" id="changeType" name="phone" placeholder="phone number" required>
            </div>
            <div class="form-group" style="padding: 2px">
                <input class="form-control input" type="password" name="password" placeholder="new password" required
                       pattern="^[!_.?@0-9a-zA-Z]{6,16}$" title="6-16 character, include a-zA-Z0-9!_.?@.etc">
            </div>
            <div class="form-group">
                <div style="margin: 0px;padding: 2px;">
                    <button type="submit" class="btn btn-primary btn-block" style="margin: 0px">
                        Reset Password Now</button>
                </div>
            </div>
        </form>
    </div>
</div>
<div style="width: 100%;height: 5%;background: #3cb371">
    <p class="text-center" style="color: #ffffff">Copyright © 2018-2019 Crazyb All Rights Reserved.</p>
</div>
<script>
    $(document).ready(function () {
        $("#type").change(function () {
            var selected = $(this).children('option:selected').val();
            if (selected == "Email"){
                $("#changeType")[0].placeholder="Email address";
                $("#changeType")[0].name="email"
            }else if (selected == "Phone"){
                $("#changeType")[0].placeholder="Phone number";
                $("#changeType")[0].name="phone"
            }
        })
    })
</script>
</body>
</html>
