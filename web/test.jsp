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
    <title>test</title>
    <link rel="stylesheet" href="bootstrap.min.css">
    <script src="bootstrap"></script>
    <link rel="stylesheet" href="login.css">

</head>
<body>
<div class="box">
    <h2>登陆</h2>
    <form>
        <div class="inputbox">
            <input type="text" name="username" required="">
            <label>用户名</label>
        </div>
        <div class="inputbox">
            <input type="password" name="pwd" required="">
            <label>密码</label>
        </div>
        <input  class="btn btn-default" type="submit" name="" value="登陆">
        <a class="btn btn-default" href="resister.jsp">注册</a>
    </form>
</div>


</body>
</html>
