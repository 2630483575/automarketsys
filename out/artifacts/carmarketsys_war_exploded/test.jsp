<%--
  Created by IntelliJ IDEA.
  User: 雷耀宏
  Date: 2020/1/9
  Time: 16:47
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>向日葵二手车主页</title>
    <link rel="stylesheet" href="bootstrap.min.css">
    <script src="jquery-3.4.1.min.js"></script>
    <script src="bootstrap.min.js"></script>
    <style>
        .ex1{padding: 70px}
        .ex2{padding: 50px 50px 0px}
        .box{width: 700px ;padding: 50px 100px 50px}
    </style>
</head>
<body>
<%--顶部导航栏--%>
<nav class="navbar navbar-default navbar-fixed-top" role="navigation">
    <div class="navbar-header">
        <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1" aria-expanded="false">
        </button>
        <a class="navbar-brand" href="welcome.jsp">向日葵二手车</a>
    </div>
    <div>
        <p class="navbar-text">${username} Name</p>
        <p class="navbar-text">${creattime} Date</p>
        <div align="right" style="padding:0px 10px 0px 0px">
            <button type="button" class="btn btn-default navbar-btn">发布</button>
        </div>
    </div>
</nav>
<div align="center" class="ex1">

</div>

</body>
</html>
