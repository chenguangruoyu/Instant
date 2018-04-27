<%@page language="java" import="java.util.*"  pageEncoding="utf-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE HTML>
<html>
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<title>一念校园</title>
<meta name="viewport" content="width=device-width, initial-scale=1">


<link href="https://fonts.googleapis.com/css?family=Oxygen:300,400"
	rel="stylesheet">
<link
	href="https://fonts.googleapis.com/css?family=Source+Sans+Pro:400,600,700"
	rel="stylesheet">

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

</head>
<body>

	<div class="fh5co-loader"></div>

	<div id="page">
		<nav class="fh5co-nav" role="navigation">
			<div class="container-wrap">
				<div class="top-menu">
					<div class="row">
						<div class="col-xs-2">
							<div id="fh5co-logo">
								<a href="index.jsp">Instant</a>
							</div>
						</div>
						<div class="col-xs-10 text-right menu-1">
							<ul>
								<li class="active"><a href="index.jsp">主页</a></li>
								<li><a href="work-single.jsp">小一</a></li>
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
		<div class="container-wrap">
			<aside id="fh5co-hero">
				<div class="flexslider">
					<ul class="slides">
						<li style="background-image: url(images/img_bg_1.jpg);">
							<div class="overlay-gradient"></div>
							<div class="container-fluid">
								<div class="row">
									<div class="col-md-6 col-md-offset-3 col-md-pull-3 slider-text">
										<div class="slider-text-inner">
											<h1>一念 - 领略快意人生</h1>
											<h2></h2>
										</div>
									</div>
								</div>
							</div>
						</li>
						<li style="background-image: url(images/img_bg_2.jpg);">
							<div class="overlay-gradient"></div>
							<div class="container-fluid">
								<div class="row">
									<div class="col-md-6 col-md-offset-3 col-md-push-3 slider-text">
										<div class="slider-text-inner">
											<h1>创意、超乎想象</h1>
											<h2></h2>
										</div>
									</div>
								</div>
							</div>
						</li>
						<li style="background-image: url(images/img_bg_3.jpg);">
							<div class="overlay-gradient"></div>
							<div class="container-fluids">
								<div class="row">
									<div class="col-md-6 col-md-offset-3 slider-text">
										<div class="slider-text-inner text-center">
											<h1>世界这么大</h1>
											<h2>我们的相遇、也是一种缘分</h2>
										</div>
									</div>
								</div>
							</div>
						</li>
						<li style="background-image: url(images/img_bg_4.jpg);">
							<div class="overlay-gradient"></div>
							<div class="container-fluid">
								<div class="row">
									<div class="col-md-6 col-md-offset-3 col-md-push-3 slider-text">
										<div class="slider-text-inner">
											<h1>We Love to Tell Our Storys</h1>
											<h2>我们的团队一直在追求更远的目标！</h2>
											
										</div>
									</div>
								</div>
							</div>
						</li>
					</ul>
				</div>


			</aside>
			<div id="fh5co-services">
				<div class="row">
					<div class="col-md-4 text-center animate-box">
						<div class="services">
							<span class="icon"> <i class="icon-diamond"></i>
							</span>
							<div class="desc">
								<h3>
									<a href="contact.html">B计划</a>
								</h3>
								<p>
									遇到麻烦、和原计划不符？<br>快来启动B计划、召唤大神吧！
								</p>
							</div>
						</div>
					</div>
					<div class="col-md-4 text-center animate-box">
						<div class="services">
							<span class="icon"> <i class="icon-lab2"></i>
							</span>
							<div class="desc">
								<h3>
									<a href="contact.html">“二货”</a>
								</h3>
								<p>
									旧物留之无用、弃之可惜?<br>来这，让它做一只有价值的“二货”！
								</p>
							</div>
						</div>
					</div>
					<div class="col-md-4 text-center animate-box">
						<div class="services">
							<span class="icon"> <i class="icon-settings"></i>
							</span>
							<div class="desc">
								<h3>
									<a href="contact.html">约吗</a>
								</h3>
								<p>
									想打球、人数不够？<br>你不该是孤独一人！一起来赛场驰骋吧！
								</p>
							</div>
						</div>
					</div>
				</div>
			</div>

			<div id="fh5co-work" class="fh5co-light-grey">
				<div class="row animate-box">
					<div class="col-md-6 col-md-offset-3 text-center fh5co-heading">
						<h2>机器人 小一</h2>
						<p>一个集智慧与可爱为一身的机器人</p>
					</div>
				</div>
				<div class="row">
					<div class="col-md-4 text-center animate-box">
						<a href="work-single.jsp" class="work"
							style="background-image: url(images/robot1.png);">
							<div class="desc">
								<h3>智慧</h3>
								<span>谈古论今的小一</span>
							</div>
						</a>
					</div>
					<div class="col-md-4 text-center animate-box">
						<a href="work-single.jsp" class="work"
							style="background-image: url(images/robot2.png);">
							<div class="desc">
								<h3>性格</h3>
								<span>可爱至极的小一</span>
							</div>
						</a>
					</div>
					<div class="col-md-4 text-center animate-box">
						<a href="work-single.jsp" class="work"
							style="background-image: url(images/robot3.png);">
							<div class="desc">
								<h3>感情</h3>
								<span>感情至深的小一</span>
							</div>
						</a>
					</div>
				</div>
			</div>
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