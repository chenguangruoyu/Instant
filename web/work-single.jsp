<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE HTML>
<html>
	<head>
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	<title>机器人</title>
	<meta name="viewport" content="width=device-width, initial-scale=1">
	

	<link href="https://fonts.googleapis.com/css?family=Oxygen:300,400" rel="stylesheet">
	<link href="https://fonts.googleapis.com/css?family=Source+Sans+Pro:400,600,700" rel="stylesheet">
	
	<!-- Animate.css -->
	<link rel="stylesheet" href="css/animate.css">
	<!-- Icomoon Icon Fonts-->
	<link rel="stylesheet" href="css/icomoon.css">
	<!-- Bootstrap  -->
	<link rel="stylesheet" href="css/bootstrap.css">

	<!-- Magnific Popup -->
	<link rel="stylesheet" href="css/magnific-popup.css">

	<!-- Flexslider  -->
	<link rel="stylesheet" href="css/flexslider.css">

	<!-- Theme style  -->
	<link rel="stylesheet" href="css/style.css">

	<!-- Modernizr JS -->
	<script src="js/modernizr-2.6.2.min.js"></script>
	<!-- FOR IE9 below -->
	<!--[if lt IE 9]>
	<script src="js/respond.min.js"></script>
	<![endif]-->

	<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
	<style type="text/css">
		*{
			padding: 0;
			margin: 0 auto;
		}
		body{
			background: url("images/logo.jpg");
			background-size: cover;	
			font-size: 12px;
			font-family: "微软雅黑";
			color:#666; 	
		}
		
		.robot{
			width: 880px;
			height: 530px;
			background: #ffcc00;
			margin: 30px auto;
		}
		.robot .r-title{
			height: 68px;
			background:#66ccff;
			line-height: 68px;
			font-size: 18px;
			color: #ffffff;
			padding-left: 10px;
		}
		.robot .r-con{
			height: 380px;
			background: #EFF0F2;
			overflow: auto;

		}
		.robot .r-con .r-left img{
			border-radius: 50%;
			vertical-align: middle;
		}	
		.robot .r-con .r-right img{
			border-radius: 50%;
			vertical-align: middle;
		}		
		
		.robot .r-con .r-right{
			text-align: right;
			padding: 10px,10px,0,0;		
		}
		
		.robot .r-box{
			height: 82px;
			background: #E3E3E3;
		}
		.robot .r-box .r-message{
			height: 82px;
			width: 800px;
			outline: none;
			padding: 10px;
			background: #E8E8E8;
			float: left;
		}
		
		.robot .r-box .r-btn .r-send{
			width: 80px;
			height: 82px;
			float: right;
			border:none;
			outline: none;
			cursor: pointer;
			background: #dfdfdf;
		}
		.robot .r-box .r-btn .r-send:hover{
			background: #cacaca;		
		}
		
	</style>

	</head>
	<body>
		
	<div class="fh5co-loader"></div>
	
	<div id="page">
	<nav class="fh5co-nav" role="navigation">
		<div class="container-wrap">
			<div class="top-menu">
				<div class="row">
					<div class="col-xs-2">
						<div id="fh5co-logo">小一</div>
					</div>
					<div class="col-xs-10 text-right menu-1">
						<ul>
							<li><a href="index.jsp">主页</a></li>
							<li class="active"><a href="work-single.jsp">小一</a></li>
							<li class="has-dropdown"><a href="article.jsp">分享</a
							</li>
							<li><a href="/shop/book.jsp">二货天下</a></li>

							<c:choose>
								<c:when test="${empty sessionScope.username}">
									<li><a href="login.jsp">登陆</a></li>
									<li><a href="register.jsp">注册</a></li>
								</c:when>
								<c:otherwise>
									<li><a href="#">欢迎您，${sessionScope.username}</a></li>
									<li><a href="logoutController.jsp">注销</a></li>
								</c:otherwise>
							</c:choose>

						</ul>
					</div>
				</div>
				
			</div>
		</div>
	</nav>
	
	<div class="robot">
		<div class="r-title"> 机器人 小一  V1.0</div>
		<div class="r-con">
		
		</div>
		<div class="r-box">
			<div class="r-message" contenteditable="true"></div>
			<div class="r-btn">
				<input type="button" value="发送" class="r-send"/>
			</div>
		</div>
	</div>
	
	
	<script type="text/javascript" src="js/jquery-1.11.1.min.js"></script>
	<script type="text/javascript">
		jQuery(function(){
			
			$(".r-send").click(function(){
				var value = $(".r-message").text();
				$(".r-con").append('<div class="r-right">'+
						' '+value+'<img src="images/my.png" alt="My" width="50" height="50"/>'+
						'</div>');
				
				$.ajax({
					type:"POST",
					url:"data.jsp",
					data:{info:value},
					success:function(data){
						var json = JSON.parse(data);
						$(".r-con").append('<div class="r-left">'+
								'<img src="images/rot.png" alt="Robot" width="50" height="50"/>'+json.text+''
								+'</div>');
					}
				});
			});
		});
	</script>

<!-- END container-wrap -->
				<div class="col-md-12 text-center">
					<p>
						<small class="block">&copy; 一念校园 | 校园侠 - Design by 北极星团队</a></small>
					</p>
				</div>
<!-- END container-wrap -->
	</div>

	<div class="gototop js-top">
		<a href="#" class="js-gotop"><i class="icon-arrow-up2"></i></a>
	</div>
	
	<!-- jQuery -->
	<script src="js/jquery.min.js"></script>
	<!-- jQuery Easing -->
	<script src="js/jquery.easing.1.3.js"></script>
	<!-- Bootstrap -->
	<script src="js/bootstrap.min.js"></script>
	<!-- Waypoints -->
	<script src="js/jquery.waypoints.min.js"></script>
	<!-- Flexslider -->
	<script src="js/jquery.flexslider-min.js"></script>
	<!-- Magnific Popup -->
	<script src="js/jquery.magnific-popup.min.js"></script>
	<script src="js/magnific-popup-options.js"></script>
	<!-- Counters -->
	<script src="js/jquery.countTo.js"></script>
	<!-- Main -->
	<script src="js/main.js"></script>
	</body>
</html>

