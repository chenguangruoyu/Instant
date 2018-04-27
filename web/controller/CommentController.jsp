<%@page import="cn.gzx.bean.User"%>
<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
	//因为评论是需要登陆的,如果没有登陆我们就调整到登陆页面去 
	User user = (User)session.getAttribute("user");
	if(user==null){//代表用户没有登陆
		out.print("-1");
		return;
	}
	System.out.println(user.getId());
%>