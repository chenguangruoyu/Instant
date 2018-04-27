<%@ page import="cn.gzx.shop.*" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<%@page language="java" import="java.util.*"  pageEncoding="utf-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<head>

    <link href="https://fonts.googleapis.com/css?family=Oxygen:300,400"
          rel="stylesheet">
    <link
            href="https://fonts.googleapis.com/css?family=Source+Sans+Pro:400,600,700"
            rel="stylesheet">

    <!-- Animate.css -->
    <link rel="stylesheet" href="/css/animate.css">
    <!-- Icomoon Icon Fonts-->
    <link rel="stylesheet" href="/css/icomoon.css">
    <!-- Bootstrap  -->
    <link rel="stylesheet" href="/css/bootstrap.css">

    <!-- Magnific Popup -->
    <link rel="stylesheet" href="/css/magnific-popup.css">

    <!-- Flexslider  -->
    <link rel="stylesheet" href="/css/flexslider.css">

    <!-- Theme style  -->
    <link rel="stylesheet" href="/css/style.css">

    <!-- Modernizr JS -->
    <script src="/js/modernizr-2.6.2.min.js"></script>
    <!-- FOR IE9 below -->
    <!--[if lt IE 9]>
    <script src="/js/respond.min.js"></script>
    <![endif]-->

</head>
<body>

<div id="page">
    <nav class="fh5co-nav" role="navigation">
        <div class="container-wrap">
            <div class="top-menu">
                <div class="row">
                    <div class="col-xs-2">
                        <div id="fh5co-logo">
                            <a href="/shop/book.jsp">二货</a>
                        </div>
                    </div>
                    <div class="col-xs-10 text-right menu-1">
                        <ul>
                            <li ><a href="/index.jsp">主页</a></li>
                            <li><a href="/work-single.jsp">小一</a></li>
                            <li class="has-dropdown"><a href="/article.jsp">分享</a
                            </li>
                            <li class="active"><a href="/shop/book.jsp">二货天下</a></li>

                            <c:choose>
                                <c:when test="${empty sessionScope.username}">
                                    <li><a href="/login.jsp">登陆</a></li>
                                    <li><a href="/register.jsp">注册</a></li>
                                </c:when>
                                <c:otherwise>
                                    <li><a href="#">欢迎您，${sessionScope.username}</a></li>
                                    <li><a href="/logoutController.jsp">注销</a></li>
                                </c:otherwise>
                            </c:choose>

                        </ul>
                    </div>
                </div>

            </div>
        </div>
    </nav>

    <%
        Book book=(Book)session.getAttribute("book");
    %>
    <div style="text-align:right;font-size:36px;">

        <a href="docart.jsp">我的购物车</a>
    </div>
    <table align="center" width="65%">
        <tr>
            <td>编号</td>
            <td>物品名</td>
            <td>价格</td>
            <td>主人</td>
            <td>图片</td>
            <td>描述</td>
        </tr>
        <tr>
            <td><%=book.getBookid() %></td>
            <td><%=book.getBookname() %></td>
            <td><%=book.getPrice() %></td>
            <td><%=book.getAuthor() %></td>
            <td><img src="/images/<%=book.getPic()%>"  width="100px" height="100px"></td>
            <td><%=book.getDescription() %></td>
        </tr>
        <tr>
            <td colspan="2"></td>
            <td><a href="cart.jsp">添加到购物车</a></td>
            <td><a href="book.jsp">“二货”列表</a></td>

            <td colspan="2"></td>
        </tr>
    </table>
</div>
</body>
</html>
