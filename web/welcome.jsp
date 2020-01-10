<%@ page import="java.util.Date" %><%--
  Created by IntelliJ IDEA.
  User: 雷耀宏
  Date: 2020/1/9
  Time: 15:44
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<% Date createTime = new Date(session.getCreationTime());%>


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
            <a class="navbar-brand" href="/GetAllServlet">向日葵二手车</a>
        </div>
        <div>
            <p class="navbar-text">用户：${name}</p>
            <p class="navbar-text">登陆时间：<%out.print(createTime);%></p>
        </div>
        <div align="right" style="padding:0px 10px 0px 0px">
            <button onclick="window.location.href = 'release.jsp'" class="navbar-btn btn btn-primary">
                发布
            </button>
        </div>
    </nav>

    <div align="center" class="ex1">
        <h1>向日葵二手车</h1>

        <div class="box" id="searchbox">

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
        <div class="box" id="listsearch">
            <form action="" method="post">
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
        <div style="width: 900px" id="listDiv">
<%--
            <div style="height: 40px;">
                <form action="product_list" method="post" id="queryFrom"
                      class="form-inline input-group-sm"
                      role="form" style="float: left;">
                    关键字:
                    <input type="text" class="form-control" name="keyword" style="width: 110px;" value="${qo.keyword}">
                    品牌:
                    <select class="form-control" name="brand_id">
                        <option value="0">-不限-</option>
                        <c:forEach items="${brands}" var="brand">
                            <option value="${brand.id}" ${qo.brandId==brand.id?"selected":""} >${brand.name}</option>
                        </c:forEach>
                    </select>
                    <input id="currentPage" name="current_page" type="hidden" value="${qo.currentPage}">
                    <button type="submit" class="btn btn-primary btn-sm">筛选</button>
                </form>
                <!--

        <div style="float: right;">
            <a href="${pageContext.request.contextPath}/contact/edit" class="btn btn-primary btn-sm"
               role="button">新增信息</a>
            <a href="#" id="batchDelete" class="btn btn-primary btn-sm" role="button">删除选中</a>
        </div> -->
            </div>
--%>

            <table class="table table-bordered table-sm table-hover" style="width: 900px; text-align: center;">
                <thead>
                <tr>
                    <th style="text-align:center;vertical-align:middle;">商品名</th>
                    <th style="text-align:center;vertical-align:middle;">展示图</th>
                    <th style="text-align:center;vertical-align:middle;">品牌</th>
                    <th style="text-align:center;vertical-align:middle;">单价</th>
                    <th style="text-align:center;vertical-align:middle;">操作</th>
                </tr>
                </thead>
                <tbody>
                <c:forEach items="${list}" var="car">
                    <form action="" method="post">
                        <tr>
                            <td style="text-align:center;vertical-align:middle;">${car.title}</td>
                            <td style="text-align:center;vertical-align:middle;"><img src="${car.carphoto}" class="img-rounded" height="200" width="300"></td>
                            <td style="text-align:center;vertical-align:middle;">${car.carbrand}</td>
                            <td style="text-align:center;vertical-align:middle;">${car.carprice}</td>
                            <td style="text-align:center;vertical-align:middle;">
                                <input type="submit" class="btn btn-danger btn-sm" value="购买">
                            </td>
                        </tr>
                    </form>
                </c:forEach>
                </tbody>
            </table>



        </div>







    </div>




</body>
</html>
