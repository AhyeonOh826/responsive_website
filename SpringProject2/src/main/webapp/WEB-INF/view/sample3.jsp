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
<link rel="stylesheet" type="text/css" href="resources/css/sample3.css?ver=87"/>
<link rel="stylesheet" type="text/css" href="resources/css/font.css?ver=6"/>
<!-- Jquey를 사용을 위한 태그 -->
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<!-- smaple.js를 사용하기 위한 태그 -->
<script src="resources/js/sample.js?ver=2"></script>
<!-- fontawesome을 사용하기 위한 태그  -->
<script src="https://kit.fontawesome.com/9b2e1e411c.js" crossorigin="anonymous"></script>
<script type="text/javascript">
	document.addEventListener("DOMContentLoaded", function() {
		// 화면 뜨자마자 click 했다고 바로 효과 주기 click 하면 showMycity가 자동으로 실행 됨
		document.getElementById("defaultOpen").click();
	});

function showMyCity(city,x,color){
		var content = document.getElementsByClassName('con');
		var button = document.getElementsByClassName('button1');
		// 모두 리셋 한다
		for(var i = 0; i < content.length; i++){
			content[i].style.display = 'none';
		}
		// 버튼 색도 리셋 한다
		for(var j = 0; j < button.length; j++){
			button[j].style.background = "";
		}

		document.getElementById(city).style.background = color;
		document.getElementById(city).style.display = 'block';
		x.style.background = color;
	}
</script>
</head>
<body>
	<div class="container">
		<div id="Busan" class="con">
			<p>Busan</p>
		</div>
		<div id="Ulsan" class="con">
			<p>Ulsan</p>
		</div>
		<div id="Seoul" class="con">
			<p>Seoul</p>
		</div>
	</div>
 	<div class="button">
	 	<button class="button1" onclick="showMyCity('Busan',this,'pink');" id="defaultOpen">Busan</button>
	 	<button class="button1" onclick="showMyCity('Ulsan',this,'red');">Ulsan</button>
	 	<button class="button1" onclick="showMyCity('Seoul',this,'blue');">Seoul</button>
 	</div>
</body>
</html>