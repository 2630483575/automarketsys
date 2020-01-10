<%--
  Created by IntelliJ IDEA.
  User: 雷耀宏
  Date: 2020/1/10
  Time: 8:35
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>欢迎登陆二手车网</title>
    <link rel="stylesheet" href="bootstrap.min.css">
    <link rel="stylesheet" href="login.css">
    <script src="jquery-3.4.1.min.js"></script>
    <script src="bootstrap.min.js"></script>
    <style>
        .ex1{padding: 70px}
        .ex2{padding: 50px 50px 50px}
    </style>
    <script>

    </script>
</head>
<body>
    <%--顶部导航栏--%>
    <nav class="navbar navbar-default navbar-fixed-top" role="navigation">
        <div class="navbar-header">
            <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1" aria-expanded="false"></button>
            <a class="navbar-brand" href="welcome.jsp">向日葵二手车</a>
        </div>
    </nav>

    <%--主体--%>
    <div class="box">
        <h2>登陆</h2>
        <form action="LoginServlet" method="post">
            <div class="inputbox">
                <input type="text" name="username" required>
                <label>用户名</label>
            </div>
            <div class="inputbox">
                <input type="password" name="pwd" required>
                <label>密码</label>
            </div>
            <input  class="btn btn-default" type="submit" name="" value="登陆" style="margin-right: 230px;">
            <a class="btn btn-default" href="register.jsp">注册</a>
        </form>
        <p>${msg}</p>
    </div>



</body>
</html>
