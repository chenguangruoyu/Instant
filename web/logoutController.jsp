<%@page language="java" import="java.util.*"  pageEncoding="utf-8"%>
<%
    session.removeAttribute("username");
    session.invalidate();
    String path = request.getContextPath();
    int port = request.getServerPort();
    String basePath = null;
    if(port==80){
        basePath=request.getScheme()+"://"+request.getServerName()+path;
    }else{
        basePath=request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path;
    }
    response.sendRedirect(basePath+"/login.jsp");
%>