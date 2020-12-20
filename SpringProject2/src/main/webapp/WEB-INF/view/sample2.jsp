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
<link rel="stylesheet" type="text/css" href="resources/css/sample2.css?ver=6"/>
<link rel="stylesheet" type="text/css" href="resources/css/font.css?ver=6"/>
<!-- Jquey를 사용을 위한 태그 -->
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<!-- smaple.js를 사용하기 위한 태그 -->
<script src="resources/js/sample.js?ver=2"></script>
<!-- fontawesome을 사용하기 위한 태그  -->
<script src="https://kit.fontawesome.com/9b2e1e411c.js" crossorigin="anonymous"></script>
</head>
<body>
	<!-- 로그인 회원가입  -->
	<div class="header">
		<i class="fas fa-bars"></i>
		<h2>Read a book</h2>
		<ul>
			<li><i class="fas fa-bars"></i></li>
			<li><a href="#">로그인</a></li>
			<li><a href="#">회원가입</a></li>
		</ul>
		<i class="fas fa-grip-lines what"></i>
	</div>
	<!-- 컨테이너 -->
	<div class="container">
		<!-- 이벤트 -->
		<div class="event">
			<span>
				기간 한정: 지금 멤버십에 가입하시면 2021년 다이어리, 한정판 종이책, 스티커를 드려요.더 알아보기
			</span>
			<a href="#"><i class="fas fa-arrow-right"></i></a>
		</div>
		<section>
			<div class="left">
				<img alt="사진" src="resources/images/spongebob.png" width="100%" height="100%">
			</div>
			<div class="right">
				<a href="#">책</a>
				<div>
					<a href="#">경제</a>
					<a href="#">경제</a>
					<a href="#">경제</a>
					<a href="#">New</a>
				</div>
				<div>
					<h2>우주에 투자합니다.</h2>
					<h3>자본이 몰리는 우주 산업의 최전선</h3>
					<p>세계는 왜 지금 우주 개발 경쟁에 뛰어들까. 우주 비즈니스는 어디까지 확장될 수 있을까. 인류의 마지막 투자처로 불리는 우주의 가능성을 살펴본다.</p>
				</div>
			</div>
		</section>
	</div>
</body>
</html>