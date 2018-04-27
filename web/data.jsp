<%@ page language="java" import="java.util.*,cn.gzx.util.*" pageEncoding="UTF-8"%>

<%
	request.setCharacterEncoding("utf-8");
	String info = request.getParameter("info");
	String answer = RobotChatUtil.getResult(info);
	
	//out.println(answer);
	response.getWriter().write(answer);
%>