<%@ page import="cn.gzx.shop.*" %>
<%@ page import="java.util.*" %>
<%@ page import="cn.gzx.shop.service.impl.BookServiceImpl" %>
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
        //实体类创建一个对象
        Book book=new Book();
        //业务逻辑层
        BookServiceImpl service=new BookServiceImpl();
        List<Book> list = service.select(book);
    %>



    <div style="text-align:right;font-size:28px;">
        <a href="docart.jsp">进入购物车</a>
    </div>
    <hr />


    <div>
        <table align="center" width="65%">
            <tr align="center">
                <td><b>编号</b></td>
                <td><b>商品名</b></td>
                <td><b>价格</b></td>

                <td><b>图片</b></td>
                <td><b>描述</b></td>
            </tr>
            <tr><td>&nbsp;</td></tr>
            <%
                for(Book b:list){
            %>
            <tr align="center">
                <td height="120px"><%=b.getBookid() %></td>
                <td height="120px"><a href="dobook.jsp?id=<%=b.getBookid()%>"><%=b.getBookname() %></a></td>
                <td height="120px"><%=b.getPrice() %></td>
                <td height="120px"><img src="/images/<%=b.getPic() %>" width="100px" height="100px"></td>
                <td height="120px" width="200px"><%=b.getDescription() %></td>
            </tr>
            <%} %>
        </table>
    </div>


</div>

</body>
</html>
