<%--
  Created by IntelliJ IDEA.
  User: 雷耀宏
  Date: 2020/1/10
  Time: 10:40
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>发布商品</title>
    <link rel="stylesheet" href="bootstrap.min.css">
    <link rel="stylesheet" href="login.css">
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
    </div>
    <div align="right" style="padding:0px 10px 0px 0px">
        <button type="button" class="btn btn-default navbar-btn">发布</button>
    </div>
</nav>
<div class="ex1">
    <div style="padding: 0px 400px">
        <h3>发布商品</h3>
        <form>
            <div class="form-group">
                <label for="exampleInputEmail1">Email address</label>
                <input type="email" class="form-control" id="exampleInputEmail1" placeholder="Email">
            </div>
            <div class="form-group">
                <label for="exampleInputPassword1">Password</label>
                <input type="password" class="form-control" id="exampleInputPassword1" placeholder="Password">
            </div>
            <div class="form-group">
                <label for="exampleInputFile">File input</label>
                <input type="file" id="exampleInputFile">
                <p class="help-block">Example block-level help text here.</p>
            </div>
            <div class="checkbox">
                <label>
                    <input type="checkbox"> Check me out
                </label>
            </div>
            <button type="submit" class="btn btn-default">Submit</button>

        </form>
    </div>


</div>

</body>
</html>
