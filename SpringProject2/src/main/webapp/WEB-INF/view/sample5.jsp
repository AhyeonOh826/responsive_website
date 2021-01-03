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
<link rel="stylesheet" type="text/css" href="resources/css/sample5.css?ver=8"/>
<link rel="stylesheet" type="text/css" href="resources/css/font.css?ver=6"/>
<!-- Jquey를 사용을 위한 태그 -->
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<!-- smaple.js를 사용하기 위한 태그 -->
<script src="resources/js/sample.js?ver=2"></script>
<!-- fontawesome을 사용하기 위한 태그  -->
<script src="https://kit.fontawesome.com/9b2e1e411c.js" crossorigin="anonymous"></script>
<script type="text/javascript">
	var hiBtn = querySelector('#hiBtn');
	var noHiBtn = querySelector('#noHiBtn');
	alert(hiBtn);
	alert(noHiBtn);
</script>
</head>
<body>
	<h1>How to do grid on CSS</h1>
	<div class="container">
		<div class="div1">1</div>
		<div class="div2">2</div>
		<div class="div3">3</div>
		<div class="div4">4</div>
		<div class="div5">5</div>
		<div class="div6">6</div>
	</div>
	
	<div class="hello">
		<!--커서에 맞춰서 움직임  -->
		<div class="cusor">
			<span class="circle"></span>
		</div>
		<a href="#" id="hiBtn">안녕하세요</a>
		<a href="#" id="noHiBtn">안녕하지 못합니다</a>
	</div>
</body>
</html>