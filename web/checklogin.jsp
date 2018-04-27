<%@page language="java" import="java.util.*"  pageEncoding="utf-8"%>
<%@page import="java.sql.*"%>
<body>
<%
	String username = new String(request.getParameter("Username").getBytes("utf-8"),"ISO8859-1");
	String password = new String(request.getParameter("Password").getBytes("utf-8"),"GBK");
	try{
		
		// 加载数据库驱动，注册到驱动管理器
		Class.forName("com.mysql.jdbc.Driver");
		// 数据库连接字符串
		String url = "jdbc:mysql://localhost:3306/Instant";
		// 数据库用户名
		String usename = "root";
		// 数据库密码
		String psw = "123456";
		// 创建Connection连接
		Connection conn = DriverManager.getConnection(url,usename,psw);
		// 判断 数据库连接是否为空
		if(conn != null){			
			String sql="select * from common_user where username='"+username+"' and passwd='"+ password + "'";
			Statement stmt = conn.createStatement();
			ResultSet rs=stmt.executeQuery(sql);
			if(rs.next()){
				session.setAttribute("username", username);
				response.sendRedirect("index.jsp");
			}else{
				out.print("用户名或密码错误，请重新输入！");
%>

				<a href="javascript:history.back()">返回</a>
<%
			}			
			// 输出连接信息
			//out.println("数据库连接成功！");
			// 关闭数据库连接
			conn.close();
		}else{
			// 输出连接信息
			out.println("数据库连接失败！");						
		}
		
	} catch (ClassNotFoundException e){
		e.printStackTrace();
	} catch (SQLException e){
		e.printStackTrace();
	}
	
%>
</body>
