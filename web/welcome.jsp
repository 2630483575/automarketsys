<%--
  Created by IntelliJ IDEA.
  User: 雷耀宏
  Date: 2020/1/9
  Time: 15:44
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<html>
<head>
    <title>向日葵二手车主页</title>
    <link rel="stylesheet" href="bootstrap.min.css">
    <script src="jquery-3.4.1.min.js"></script>
    <script src="bootstrap.min.js"></script>
    <style>
        .ex1{padding: 70px}
        .ex2{padding: 50px 50px 0px}
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
    </nav>

    <div align="center" class="ex1">
        <h1>二手车</h1>

        <div class="row">
            <div class="col-md-4">
                <%--留空--%>
            </div>
            <div class="col-md-4">
                <div class="input-group">
                    <input type="text" class="form-control" name="search" placeholder="请输入你想要查找的车">
                    <span class="input-group-btn">
                <button class="btn btn-default" type="button">
                    搜索
                </button>
            </span>
                </div>
            </div>
            <div class="col-md-4">
                <%--留空--%>
            </div>
        </div>

        //选择搜索
        <div class="row">
            <div class="col-md-4">
                <%--留空--%>
            </div>
            <div class="col-md-4">
                <div class="btn-group">
                    <button type="button" class="btn btn-default dropdown-toggle" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                        Action <span class="caret"></span>
                    </button>
                    <ul class="dropdown-menu">
                        <li><a href="#">Action</a></li>
                        <li><a href="#">Another action</a></li>
                        <li><a href="#">Something else here</a></li>
                        <li role="separator" class="divider"></li>
                        <li><a href="#">Separated link</a></li>
                    </ul>
                </div>
                <div class="dropdown">
                    <button class="btn btn-default dropdown-toggle" type="button" id="dropdownMenu1" data-toggle="dropdown" aria-haspopup="true" aria-expanded="true">
                        车型
                        <span class="caret"></span>
                    </button>
                    <ul class="dropdown-menu">
                        <li><a href="#">奔驰</a></li>
                        <li role="separator" class="divider"></li>
                        <li><a href="#">宝马</a></li>
                        <li role="separator" class="divider"></li>
                        <li><a href="#">别克</a></li>
                        <li role="separator" class="divider"></li>
                        <li><a href="#">现代</a></li>
                    </ul>
                </div>
            </div>
            <div class="col-md-4">
                <%--留空--%>
            </div>
        </div>

        //车辆展示
        <div class="ex2">
            <table style="width:70% " class="table table-bordered table-hover table-striped">
                <tr>
                    <td align="center">
                        <input type="checkbox" onclick="checkAll()" id="chkAll">
                    </td>
                    <td></td>
                    <td></td>
                    <td></td>
                </tr>

                <c:forEach items="${list}" var="stu">
                    <tr>
                        <td><input type="checkbox" value="${stu.id}" name="chk" onclick="unchk(this)"></td>
                        <td>${stu.id}</td>
                        <td>${stu.name}</td>
                        <td>${stu.age}</td>
                        <td>${stu.tel}</td>
                        <td>${stu.sex}</td>
                    </tr>
                </c:forEach>
            </table>


        </div>








    </div>




</body>
</html>
