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
        <button type="button" class="btn btn-default navbar-btn" href="release.jsp">发布</button>
    </div>
</nav>
<div class="ex1">
    <div style="padding: 0px 400px">
        <h3>发布商品</h3>
        <form action="/ReleaseServlet" method="post">
            <div class="form-group">
                <label>车型:</label>
                <select>
                    <option value="0">请选择车型</option>
                    <option value="轿车">轿车</option>
                </select>
            </div>
            <div class="form-group">
                <label>品牌:</label>
                <select>
                    <option value="0">请选择汽车品牌</option>
                    <option value="现代">现代</option>
                </select>
            </div>
            <div class="form-group">
                <label for="carmodel">详细型号:</label>
                <input type="text" class="form-control" id="carmodel" placeholder="请填写汽车详细型号">
            </div>
            <div class="form-group">
                <label for="carmodel">车龄:</label>
                <input type="text" class="form-control" id="carage" placeholder="请填写汽车使用时间">
            </div>
            <div class="form-group">
                <label for="carmodel">里程:</label>
                <input type="text" class="form-control" id="carmile" placeholder="请填写汽车行驶里程">
            </div>
            <div class="form-group">
                <label for="carmodel">价格:</label>
                <input type="text" class="form-control" id="carprice" placeholder="请填写汽车销售价格">
            </div>


            <tr align="center">
                <button type="submit" class="btn btn-default">提交</button>
                <button type="reset" class="btn btn-default">重置</button>
                <button type="button" class="btn btn-default" href="welcome.jsp">取消发布</button>
            </tr>
            <%--差图片框，还有三个按钮的跳转--%>

        </form>
    </div>


</div>

</body>
</html>
