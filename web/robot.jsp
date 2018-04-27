<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
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
			margin: 100px auto;
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
			height: 62px;
			width: 780px;
			outline: none;
			padding: 10px;
			background: #E8E8E8;
			float: left;
		}
		
		.robot .r-box .r-btn .r-send{
			width: 80px;
			height: 82px;
			float: right;
			border: none;
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

	<div class="robot">
		<div class="r-title">	机器人 小一  V1.0</div>
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

</body>

</html>