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
<link rel="stylesheet" type="text/css" href="resources/css/sample2.css?ver=2"/>
<!-- Jquey를 사용을 위한 태그 -->
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<!-- smaple.js를 사용하기 위한 태그 -->
<script src="resources/js/sample.js?ver=2"></script>
</head>
<body>
<div class="container">
	<div class="header">
		<div class="top">
			<img alt="작은 로고" src="">
			<ul>
				<li><a href="#">메뉴</a>
				<li><a href="#">메뉴</a>
				<li><a href="#">메뉴</a>
				<li><a href="#">메뉴</a>
			</ul>
			<ul class="login">
				<li><a href="#">로그인</a>
				<li><a href="#">회원가입</a>
				<li><a href="#">전자우편</a>
			</ul>
		</div>
		<div class="bottom">
			<img alt="로고" src="resources/images/spongebob.png" width="20%;" height="5%;">
			<div>
				<input type="text">
				<button>검색</button>
			</div>
			<div class="time">현재 시간</div>
		</div>
	</div>
</div>
</body>
</html>