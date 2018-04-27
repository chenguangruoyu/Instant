<%@page language="java" import="java.util.*,java.sql.*"  pageEncoding="utf-8"%>
<!DOCTYPE html>
<body>
<%
   request.setCharacterEncoding("utf-8");  
   String users = request.getParameter("username");  
   String psd = request.getParameter("password"); 
   String tel = request.getParameter("telphone");
   String mail = request.getParameter("email");
%>
<%
    String driver = "com.mysql.jdbc.Driver";    
    String url = "jdbc:mysql://127.0.0.1:3306/Instant";
    String use = "root";     
    String password = "123456";
    Class.forName(driver);    
    Connection conn= DriverManager.getConnection(url,use,password);    
    PreparedStatement sql =conn.prepareStatement("insert into common_user(username,passwd,telphone,email)values(?,?,?,?)");
    sql.setString(1,users);  
    sql.setString(2,psd);
    sql.setString(3, tel);
    sql.setString(4, mail);
    int rtn=sql.executeUpdate();  
    sql.close();  
    conn.close();
    if(rtn>0){
    	response.sendRedirect("login.jsp");
    }else{
    	out.print("注册失败！");%>
    	<a href="javascript:history.back()">返回</a>
    	<%
    }
%>  

</body>
