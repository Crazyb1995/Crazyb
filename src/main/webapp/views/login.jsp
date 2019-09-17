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
    <div class="jumbotron text-center" style="margin-bottom:0;width: 100%;height: 90%;background: forestgreen">
        <h1 style="color: #ffffff">Welcome to Crazyb's Home</h1>
        <p style="color: #ffffff">You can login by your account or register now if you don't register yet !</p>
        <div class="col-md-4 col-md-offset-4" style="margin-top: 100px">
            <form role="form">
                <div class="form-group" style="padding: 1px">
                    <input class="form-control input" type="text" placeholder="username">
                </div>
                <div class="form-group" style="padding: 1px">
                    <input class="form-control input" type="text" placeholder="password">
                </div>
                <div class="form-group">
                    <div class="col-md-9" style="margin: 0px;padding: 1px;">
                        <button type="submit" class="btn btn-primary btn-block" style="margin: 0px">
                            Login</button>
                    </div>
                    <div class="col-md-3" style="margin: 0px;padding: 1px">
                        <button type="submit" class="btn btn-warning btn-block" style="margin: 0px">
                            Register</button>
                    </div>
                </div>
                <div class="form-group">
                    <span class="text-left" style="color: #ffffff;float: left;text-decoration: underline;margin-top: 10px">
                        Forget password?</span>
                </div>
            </form>
        </div>
    </div>
    <div style="width: 100%;height: 100%;background: forestgreen">
        <p class="text-center" style="color: #ffffff">Copyright © 2018-2019 Crazyb All Rights Reserved.</p>
    </div>
</body>
</html>
