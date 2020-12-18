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
<link rel="stylesheet" type="text/css" href="resources/css/sample.css?ver=4"/>
<!-- Jquey를 사용을 위한 태그 -->
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<!-- smaple.js를 사용하기 위한 태그 -->
<script src="resources/js/sample.js?ver=2"></script>
</head>
<body>
<div>
	<div class="top_menu" ></div>
	<div class="container_left">
		<ul id="menu">
			<li><a href="#first">메뉴</a></li>		
			<li><a href="#fare">메뉴</a></li>		
			<li><a href="">메뉴</a></li>		
		</ul>
	</div>
	<div class="container_right">
		<div class="line" id="first">
			<div class="frame">
				<img alt="" src="resources/images/background.png" width="100%;" height="100%;"> 
			</div>
			<div class="frame">
				<img alt="" src="resources/images/spongebob.png" width="100%;" height="100%;"> 
			</div>
			<div class="frame">
				<img alt="" src="resources/images/background.png" width="100%;" height="100%;"> 
			</div>
		</div>
		<div class="line">
			<div class="frame">
				<img alt="" src="resources/images/spongebob.png" width="100%;" height="100%;"> 
			</div>
			<div class="frame">
				<img alt="" src="resources/images/background.png" width="100%;" height="100%;"> 
			</div>
			<div class="frame">
				<img alt="" src="resources/images/spongebob.png" width="100%;" height="100%;"> 
			</div>
		</div>
		<ul>
			<li><a href="#first">1</a></li>
			<li><a href="#first">2</a></li>
			<li><a href="#first">3</a></li>
		</ul>
		

		<div id="fare">
			<ul class="fuck">
				<li>하이하ㅣ</li>
				<li>하이하ㅣ</li>
				<li>하이하ㅣ</li>
				<li>하이하ㅣ</li>
				<li>하이하ㅣ</li>
				<li>하이하ㅣ</li>
			</ul>
			<ul class="fuck">
				<li>하이하ㅣ</li>
				<li>하이하ㅣ</li>
				<li>하이하ㅣ</li>
				<li>하이하ㅣ</li>
				<li>하이하ㅣ</li>
				<li>하이하ㅣ</li>
			</ul>
		</div>
		<div class="footer" style="width: 100%; height: 300px; background:lightblue;"> footer</div>
	</div>
</div>
</body>
</html>