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
<link rel="stylesheet" type="text/css" href="resources/css/sample2.css?ver=9"/>
<link rel="stylesheet" type="text/css" href="resources/css/font.css?ver=7"/>
<!-- Jquey를 사용을 위한 태그 -->
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<!-- smaple.js를 사용하기 위한 태그 -->
<script src="resources/js/sample.js?ver=2"></script>
<!-- fontawesome을 사용하기 위한 태그  -->
<script src="https://kit.fontawesome.com/9b2e1e411c.js" crossorigin="anonymous"></script>
<script type="text/javascript">
	document.addEventListener("DOMContentLoaded", function() {/* DOM(document(HTML) object(객체) model)과 연결 시켜 준다(jquery 에서는 document.ready.function 으로 연결) */
	    // 실제 함수 호출해서 실행 됨
	    // changeColor();
		// 실행은 무조건 DOM에서 하고 변수는 아무곳에서 선언 해도 되는 듯?
		 bgChange();
		 openMyEyes();
		/* alert(str); */
	}); 

	function openMyEyes(){
		console.log("눈떠");
		var openEyes = document.getElementById("openEyes");
		openEyes.classList.toggle("displayNone");
	}
		// 1초에 한번씩 눈을 깜빡여라
		setInterval(openMyEyes, 700);
	
	// 변수는 function 안이든 밖이든 DOM 실행 안이든 어디든지 사용 할 수 있다
	var str = "안ㄴ여";
	// 1번 (랜덤으로 색 변경)
	function changeColor() {
		// 변경 될 노드
	   var back = document.getElementsByClassName("color_1");
	   // 색 배열
	   var color = ['#FF6633', '#FFB399', '#FF33FF', '#FFFF99', '#00B3E6', 
	         		 '#E6B333', '#3366E6', '#999966', '#99FF99', '#B34D4D'];
	   // 색 길이
	   var colorArrayLen = color.length;
	   // 배열의 개수 만큼 random 숫자 만들기
	   var num = Math.floor(Math.random() * colorArrayLen);

	   // 실제 실행
	   for(var j = 0 ; j < back.length; j++){
	  	 back[j].style.background = color[num];
		}
	   // 1초마다 changeColor 함수 호출하는 함수 
	   setInterval(changeColor, 1000);
	}
	
	// 2번 증감 연산자 사용 (함수 밖에 선언)
	var i = 0;
    function bgChange(){
	   // 색 배열
	   var color = ['#FF6633', '#FFB399', '#FF33FF', '#FFFF99', '#00B3E6', 
   				 '#E6B333', '#3366E6', '#999966', '#99FF99', '#B34D4D'];
		// 변경 될 노드
		var back = document.getElementsByClassName("color_1");
		// 각 class마다 색
	    back[0].style.background = color[i];// 왼쪽
	   	back[1].style.background = color[i];// 중앙
	   	back[2].style.background = color[i];// 오른쪽
	   	// 증감
	   	i++;
		// i가 배열의 길이보다 들어나면 0으로 초기화
       if(i == color.length) {
           i = 0;
        };
        // 1초마다 bgChange 함수 호출하는 함수 
        setTimeout(bgChange, 1000);
   }
</script>
</head>
<body>
	<!-- header -->
    <header class="header">
        <i class="fas fa-bars"></i>
        <div class="heart">&#x2665;</div>
        <h2 class="title">어서오세요, 포트폴리오 입니다.</h2>
        <ul>
            <!-- <li><i class="fas fa-bars"></i></li> -->
            <li><a href="#">프로필</a></li>
            <li><a href="#">작  품</a></li>
            <li><a href="#">메  일</a></li>
        </ul>
        <!-- <i class="fas fa-grip-lines what"></i> -->
    </header>
    <!-- //header -->
    <div class="container"><!-- 컨테이너 -->
        <div class="event"> <!-- 이벤트 -->
            <span>문구 들어가기</span>
            <!-- <a href="#"><i class="fas fa-arrow-right"></i></a> -->
        </div> <!-- 이벤트 끝 -->
        <section class="content1"> <!-- content1 -->
            <div class="left">
            	<div id="closeEyes">
	                <img alt="사진" src="resources/images/myFace1.jpg" width="60%" height="70%">
            	</div>
            	<div id="openEyes" class="">
	                <img alt="사진" src="resources/images/myFace1.jpg" width="100%" height="100%">
            	</div>
            </div>
            <div class="right">
                <a href="#">나</a>
                <div>
                    <h2>'나'에 투자합니다.</h2>
                    <h3>자본이 몰리는 우주 산업의 최전선</h3>
                    <p>세계는 왜 지금 우주 개발 경쟁에 뛰어들까. 우주 비즈니스는 어디까지 확장될 수 있을까. 인류의 마지막 투자처로 불리는 우주의 가능성을 살펴본다.</p>
                </div>
            </div>
        </section> <!-- content1 끝-->
        <section class="content2"><!-- content2 -->
          <h2>우주 대항해시대</h2>
          <div class="books">
              <div class="swiepr_button_prev"><i class="fas fa-arrow-circle-left"></i></div>
              <div class="books_card">
                  <img alt="사진" src="../images/river-5765785_1920.jpg" width="100%" height="100%">
                  <div>
                    <a href="#">경제</a>
                    <a href="#">테크</a>
                    <a href="#">경제</a>
                   </div>
                  <h4>우주 전쟁</h4>
                  <h6>생명을 찾아 외계로 떠나다.</h6>
                  <p>세계는 왜 지금 우주 개발 경쟁에 뛰어들까. 우주 비즈니스는 어디까지 확장될 수 있을까. 인류의 마지막 투자처로 불리는 우주의 가능성을 살펴본다.</p>
              </div>
              <div class="books_card">
                  <img alt="사진" src="../images/river-5765785_1920.jpg" width="100%" height="100%">
                  <div>
                       <a href="#">경제</a>
                       <a href="#">테크</a>
                       <a href="#">경제</a>
                   </div>
                  <h4>우주 전쟁</h4>
                  <h6>생명을 찾아 외계로 떠나다.</h6>
                  <p>세계는 왜 지금 우주 개발 경쟁에 뛰어들까. 우주 비즈니스는 어디까지 확장될 수 있을까. 인류의 마지막 투자처로 불리는 우주의 가능성을 살펴본다.</p>
              </div>
              <div class="books_card">
                  <img alt="사진" src="../images/river-5765785_1920.jpg" width="30%" height="30%">
                  <div>
                       <a href="#">경제</a>
                       <a href="#">테크</a>
                       <a href="#">경제</a>
                   </div>
                  <h4>우주 전쟁</h4>
                  <h6>생명을 찾아 외계로 떠나다.</h6>
                  <p>세계는 왜 지금 우주 개발 경쟁에 뛰어들까. 우주 비즈니스는 어디까지 확장될 수 있을까. 인류의 마지막 투자처로 불리는 우주의 가능성을 살펴본다.</p>
              </div>
              <div class="switer_button_next"><i class="fas fa-arrow-circle-right"></i></div>
          </div>
        </section><!-- content2 끝-->
<!--         <section class="content2">content2
          <h2>스타트업 101</h2>
           <div class="books">
               <div class="swiepr_button_prev"><i class="fas fa-arrow-circle-left"></i></div>
               <div class="books_card">
                   <div class="img">1</div>
                   <div>
                        <a href="#">경제</a>
                        <a href="#">테크</a>
                        <a href="#">경제</a>
                    </div>
                   <h4>우주 전쟁</h4>
                   <h6>생명을 찾아 외계로 떠나다.</h6>
                   <p>세계는 왜 지금 우주 개발 경쟁에 뛰어들까. 우주 비즈니스는 어디까지 확장될 수 있을까. 인류의 마지막 투자처로 불리는 우주의 가능성을 살펴본다.</p>
               </div>
               <div class="books_card">
                   <img alt="사진" src="../images/river-5765785_1920.jpg" width="100%" height="100%">
                   <div>
                        <a href="#">경제</a>
                        <a href="#">테크</a>
                        <a href="#">경제</a>
                    </div>
                   <h4>우주 전쟁</h4>
                   <h6>생명을 찾아 외계로 떠나다.</h6>
                   <p>세계는 왜 지금 우주 개발 경쟁에 뛰어들까. 우주 비즈니스는 어디까지 확장될 수 있을까. 인류의 마지막 투자처로 불리는 우주의 가능성을 살펴본다.</p>
               </div>
               <div class="books_card">
                   <img alt="사진" src="../images/river-5765785_1920.jpg" width="100%" height="100%">
                   <div>
                        <a href="#">경제</a>
                        <a href="#">테크</a>
                        <a href="#">경제</a>
                    </div>
                   <h4>우주 전쟁</h4>
                   <h6>생명을 찾아 외계로 떠나다.</h6>
                   <p>세계는 왜 지금 우주 개발 경쟁에 뛰어들까. 우주 비즈니스는 어디까지 확장될 수 있을까. 인류의 마지막 투자처로 불리는 우주의 가능성을 살펴본다.</p>
               </div>
               <div class="switer_button_next"><i class="fas fa-arrow-circle-right"></i></div>
           </div>
        </section>content2 끝 -->
        <section class="content3"><!-- 추천 키워드 -->
            <p>추천 키워드</p>
            <ul>
                <li>프라임 Life</li>
                <li>이코노미스트</li>
                <li>WWW</li>
                <li>뉴룰스</li>
                <li>이코노미스트</li>
            </ul>
              <a href="#"><i class="fas fa-arrow-right"></i></a>
        </section><!-- 추천 키워드 끝 -->
        <section class="news"><!-- 뉴스 -->
            <p>뉴스</p>
             <img alt="사진" src="../images/river-5765785_1920.jpg" width="50%" height="100%">
        </section><!-- 뉴스 끝-->
    </div><!-- container 끝 -->
    <section class="news_letters"><!--news letters  -->
        <div class="news_letters_card_1">
            <div class="color_1"></div>
        </div>
        <div class="news_letters_card_2">
            <div class="color_1">
                <img alt="사진" src="../images/river-5765785_1920.jpg" width="30%" height="30%">
               <div>
	                <h2>#185</h2>
	                <p>세계는 왜 지금 우주 개발 경쟁에 뛰어들까.</p>
	                <h2>#185</h2>
	                <p>세계는 왜 지금 우주 개발 경쟁에 뛰어들까.</p>
	                <h2>#185</h2>
	                <p>세계는 왜 지금 우주 개발 경쟁에 뛰어들까.</p>
	                <h2>#185</h2>
	                <p>세계는 왜 지금 우주 개발 경쟁에 뛰어들까.</p>
              </div>
            </div>
        </div>
        <div class="news_letters_card_1">
            <div class="color_1"></div>  
        </div>
    </section><!--news letters 끝 -->
    <footer class="footer"><!-- footer -->
        <div>
            <h2>THREECHAIRS</h2>
            <h2>PUBLISHING COMPANY</h2>
            <p>(주)스리체어스 서울시 중구 3층</p>
            <p>(주)스리체어스 서울시 중구 3층스리체어스 서울시 중구 3층스리체어스 서울시 중구 3층</p>
        </div>
        <div>
            <h2>THREECHAIRS</h2>
            <h2>PUBLISHING COMPANY</h2>
            <p>(주)스리체어스 서울시 중구 3층</p>
            <p>(주)스리체어스 서울시 중구 3층스리체어스 서울시 중구 3층스리체어스 서울시 중구 3층</p>
        </div>
       <div>
            <h2>THREECHAIRS</h2>
            <h2>PUBLISHING COMPANY</h2>
            <p>(주)스리체어스 서울시 중구 3층</p>
            <p>(주)스리체어스 서울시 중구 3층스리체어스 서울시 중구 3층스리체어스 서울시 중구 3층</p>
        </div>
    </footer><!-- footer 끝 -->
</body>
</html>