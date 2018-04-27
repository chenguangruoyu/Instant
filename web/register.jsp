<%@page language="java" import="java.util.*"  pageEncoding="utf-8"%>
<!DOCTYPE html> 
<html>
	<head>
		<title>一念-注册</title>
		<link rel="stylesheet" href="css/demo.css">
		<link rel="stylesheet" href="css/sky-forms.css">
		<script language="javascript">    
			function isValid(form)    
			{    
				if (form.username.value=="")    
				{
					alert("用户名不能为空");
					return false;
				}    
				if (form.password.value!=form.passwordConfirm.value)    
				{    
					alert("两次输入的密码不同！");    
					return false;    
				}    
				else  if (form.password.value=="")    
				{    
					alert("用户密码不能为空！");    
					return false;    
				}    
				else return true;    
			}    
		</script>
	</head>
	<body class="bg-cyan">
		<div class="body body-s">		
			<form action="checkregister.jsp" id="sky-form" class="sky-form">
				<header>注册</header>
				<fieldset>					
					<section>
						<label class="input">
							<i class="icon-append icon-user"></i>
							<input type="text" name="username" placeholder="用户名">
							<b class="tooltip tooltip-bottom-right">请输入用户名</b>
						</label>
					</section>
					
					<section>
						<label class="input">
							<i class="icon-append icon-lock"></i>
							<input type="password" name="password" placeholder="密码" id="password">
							<b class="tooltip tooltip-bottom-right">请输入您的密码</b>
						</label>
					</section>
					
					<section>
						<label class="input">
							<i class="icon-append icon-lock"></i>
							<input type="password" name="passwordConfirm" placeholder="请再次输入您的密码">
							<b class="tooltip tooltip-bottom-right">请再次输入您的密码</b>
						</label>
					</section>
					
					<section>
						<label class="input">
							<i class="icon-append icon-envelope-alt"></i>
							<input type="text" name="telphone" placeholder="手机号">
							<b class="tooltip tooltip-bottom-right">请输入您的手机号</b>
						</label>
					</section>
					
					<section>
						<label class="input">
							<i class="icon-append icon-envelope-alt"></i>
							<input type="email" name="email" placeholder="邮箱">
							<b class="tooltip tooltip-bottom-right">请输入您的邮箱</b>
						</label>
					</section>
				</fieldset>
				
				<footer>
					<button type="submit" class="button">提交注册</button>
				</footer>
			</form>			
		</div>

	</body>
</html>