<%@ page import="cn.gzx.shop.CartItem,java.util.*" %>
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


<table width="65%" align="center" border="1px">
    <tr>
        <th>编号</th>
        <th>商品名</th>
        <th>单价</th>
        <th>数量</th>
        <th>小计</th>
    </tr>
    <%
        //1:将添加到购物车里面的物品显示出来
        Map<Integer,CartItem> map = (Map<Integer,CartItem>)session.getAttribute("cart");
        //2:将购物车里面的内容遍历出来
        double count=0;//显示出总价格
        for(Map.Entry<Integer,CartItem> entry : map.entrySet()){
            //计算出每一样的物品一共花了多少钱
            double price=entry.getValue().getBook().getPrice() * entry.getValue().getNumber();
            //计算总价格
            count=count+price;
    %>
    <tr align="center">
        <td><%=entry.getKey() %></td>
        <td><%=entry.getValue().getBook().getBookname() %></td>
        <td><%=entry.getValue().getBook().getPrice() %></td>
        <td><%=entry.getValue().getNumber() %></td>
        <td><%=entry.getValue().getBook().getPrice() * entry.getValue().getNumber()%></td>

    </tr>
    <%} %>
    <tr align="center">
        <td colspan="4" align="right">价格总计</td>
        <td><%=count %></td>
    </tr>
</table>
<div style="text-align:center;font-size:26px;">
    <a href="/images/erweima.png" target="_blank">支付</a>
    &nbsp;&nbsp;&nbsp;&nbsp;
    <a href="book.jsp">再逛逛</a>
</div>

</div>
</body>
</html>
