<%@ page import="cn.gzx.shop.CartItem" %>
<%@ page import="cn.gzx.shop.Book" %>
<%@ page import="java.util.*" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>添加到购物车</title>
</head>
<body>
<%
    //购物车功能
    //1:首先考虑购买的是哪一个商品，这里可以使用id确认也可以使用session中取出哪一个商品
    Book book=(Book)session.getAttribute("book");

    //2:考虑如何把商品放到购物车中
    //2.1:首先考虑是否有购物车，如果没有，则创建，如果有直接使用
    //2.2:其次先将购物车从session中拿出来，不存在就创建。
    Map<Integer,CartItem> cart=(Map<Integer,CartItem>)session.getAttribute("cart");
    //如果没有购物车，那么创建，只有第一次访问才会操作
    if(cart==null){
        //new一个购物车
        cart=new HashMap<>();
    }

    //3:考虑如何把商品放到购物车中
    //3.1:第一考虑购物车中是否有该商品，所以先从购物车中获取该商品，如果为空，那么没有该书籍
    CartItem item=(CartItem)cart.get(book.getBookid());
    if(item==null){
        //如果购物车中不存在该商品，那么创建，且数量默认为1
        item=new CartItem();
        //将商品放到购物车中
        item.setBook(book);
        //将商品的默认数量为1
        item.setNumber(1);
    }else{
        //如果购物车中以及有该商品，那么数量加1
        item.setNumber(item.getNumber()+1);
    }

    //4:考虑如何把购物车项(即挑选的商品是哪一个和商品的数量)放到购物车中
    cart.put(book.getBookid(),item);

    //5:将购物车放到session中，方便后面取出来
    session.setAttribute("cart", cart);

    response.sendRedirect("book.jsp");
%>
</body>
</html>
