<%@ page import="cn.gzx.shop.Book" %>
<%@ page import="cn.gzx.shop.service.impl.BookServiceImpl" %>
<%@ page import="cn.gzx.shop.service.BookService" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
</head>
<body>

<%
    Book book=new Book();
    String sid=request.getParameter("id");
    Integer id=Integer.parseInt(sid);
    BookService service=new BookServiceImpl();
    book.setBookid(id);
    Book books=service.getBook(book);
    session.setAttribute("book", books);
    response.sendRedirect("detail.jsp");
%>

</body>
</html>
