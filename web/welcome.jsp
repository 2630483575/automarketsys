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
    </nav>

    <div align="center" class="ex1">
        <h1>二手车</h1>

        <div class="box">

            <div align="center">
                <div class="input-group">
                    <input type="text" class="form-control" name="search" placeholder="请输入你想要查找的车">
                    <span class="input-group-btn">
                <button class="btn btn-default" type="button">
                    搜索
                </button>
            </span>
                </div>
            </div>

        </div>

        //选择搜索
        <div class="box">
            <form>
                <select>
                    <option value="0">请选择车型</option>
                    <option value="轿车">轿车</option>
                </select>
                <select>
                    <option value="0">请选择品牌</option>
                    <option value="别克">别克</option>
                </select>
                <select>
                    <option value="0">请选择详细型号</option>
                    <option value="君越">君越</option>
                </select>
                <input type="submit" value="搜索">
            </form>



        </div>

        //车辆展示
        <div class="ex2">
            <table style="width:70% " class="table table-bordered table-hover table-striped">
                <tr>

                    <td></td>
                    <td></td>
                    <td></td>
                </tr>

                <c:forEach items="${list}" var="stu">
                    <tr>
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
