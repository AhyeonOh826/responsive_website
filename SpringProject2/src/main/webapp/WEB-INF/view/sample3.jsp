<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!-- jstl 사용을 위한 taglib -->
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<!-- sample.css 파일 사용을 위한 태그 -->
<link rel="stylesheet" type="text/css" href="resources/css/sample4.css?ver=8"/>
<link rel="stylesheet" type="text/css" href="resources/css/font.css?ver=6"/>
<!-- Jquey를 사용을 위한 태그 -->
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<!-- smaple.js를 사용하기 위한 태그 -->
<script src="resources/js/sample.js?ver=2"></script>
<!-- fontawesome을 사용하기 위한 태그  -->
<script src="https://kit.fontawesome.com/9b2e1e411c.js" crossorigin="anonymous"></script>
<script type="text/javascript">
	document.addEventListener("DOMContentLoaded", function() {
	
	});

	var x = 0;
	var y = 0 ;
	var mx = 0;
	var my = 0;
	var speed = 0.3;
	var back;
	var flower;
	
	window.onload = function (){
	back = document.getElementsByClassName('back')[0];
	flower = document.getElementsByClassName('flower')[0];

	window.addEventListener('mousemove', mouseFunc, false);

	function mouseFunc(e){
		x = (e.clientX - window.innerWidth /2);
		y = (e.clientY - window.innerHeight / 2);

		}
		loop();
	}
  
	function loop(){
	mx += (x - mx) * speed;
	my += (y - my) * speed;
	console.log(mx, my);
	flower.style.transform = 'translate(' + -(mx/10) +'px,'+ -(my/10) +'px)';

	window.requestAnimationFrame(loop);
	}
	
</script>
</head>
<body>
	<div>
		<img class="back" alt="꽃배경" src="resources/images/제목을-입력해주세요.-1.png" width="100%" height="100%">
		<img class="flower" alt="꽃" src="resources/images/제목을-입력해주세요.-3.png" width="100%" height="100%">
	</div>
<div class="watch"><a href="sample5.do"></a></div>
</body>
</html>