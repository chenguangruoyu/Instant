<%@page language="java" import="java.util.*,cn.gzx.user.*"  pageEncoding="utf-8"%>
<!doctype html>
<html>
<head>
<title>一念-登录</title>
<link rel="stylesheet" type="text/css" href="css/styles.css">
</head>
<body>
<div class="htmleaf-container">
	<div class="wrapper">
		<div class="container">
			<h1>Welcome</h1>
			<form class="form" action="checklogin.jsp" method="post">
				<input type="text" placeholder="Username" name="Username">
				<input type="password" placeholder="Password" name="Password">
				<button type="submit" id="login-button">Login</button>
			</form>
		</div>
		
	</div>
</div>

</body>
</html>