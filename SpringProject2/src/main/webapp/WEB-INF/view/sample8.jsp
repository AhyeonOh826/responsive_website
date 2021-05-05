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
 <!-- 부트스트랩 -->
<link href="css/bootstrap.min.css" rel="stylesheet">
<!-- 합쳐지고 최소화된 최신 CSS -->
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap.min.css">
<!-- 부가적인 테마 -->
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap-theme.min.css">
<!-- Jquey를 사용을 위한 태그 -->
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<!-- 합쳐지고 최소화된 최신 자바스크립트 -->
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/js/bootstrap.min.js"></script>
<!-- smaple.js를 사용하기 위한 태그 -->
<script src="resources/js/sample.js?ver=2"></script>
<script type="text/javascript">
	document.addEventListener("DOMContentLoaded", function() {/* DOM(document(HTML) object(객체) model)과 연결 시켜 준다(jquery 에서는 document.ready.function 으로 연결) */
	    // changeColor();
		// bgChange();
		 openMyEyes();

		 $('.close').click(function(){
			  close();
		});
			
		 
		 
	}); 


	var embed_lyaer;
	 function close()
	 {
	 	//#닫기를 눌렀을때 불리는 함수
	 	embed_lyaer=$('.modal-body').html(); // popup id에 잇는 html을 embed_lyaer 글로벌 변수에 담아 놓음.
	 	$('.modal-body').html(''); 
	 }

	//	
	function openMyEyes(){
		var openEyes = document.getElementById("openEyes");
		openEyes.classList.toggle("displayNone");
	}
		// 1초에 한번씩 눈을 깜빡여라
		setInterval(openMyEyes, 700);
	
/* 	// 변수는 function 안이든 밖이든 DOM 실행 안이든 어디든지 사용 할 수 있다
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
	  // setInterval(changeColor, 1000);
	} */
	
/* 	// 2번 증감 연산자 사용 (함수 밖에 선언)
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
   } */
</script>
</head>
<body>
	<!-- header -->
    <header class="header">
        <i class="fas fa-bars"></i>
        <div class="heart">&#x2665;</div>
        <h2 class="title">Yoni's Portfolio</h2>
        <ul>
            <li><a href="#">프로필</a></li>
            <li><a href="#">프로젝트</a></li>
            <li><a href="#">이메일</a></li>
        </ul>
    </header>
    <!-- //header -->
    <!-- container -->
    <div class="container">
    	<!-- sub title -->
        <div class="event">
            <span>아무렇게나 하면 아무렇게나 되어 버리고, 결국엔 더 힘만 들게 된다.</span>
        </div>
        <!-- //sub title -->
         <!-- content1 -->
        <section class="content1">
            <div class="left">
            	<div id="closeEyes">
	                <img alt="사진" src="resources/images/myFace2.jpg" width="" height="">
            	</div>
            	<div id="openEyes" class="">
	                <img alt="사진" src="resources/images/myFace.jpg" width="" height="">
            	</div>
            </div>
            <div class="right">
                <a href="#">프로필</a>
                <div>
                    <h2>'나'에 투자합니다.</h2>
                    <h3>상상이 몰리는 IT 산업의 최전선</h3>
                    <p>세계는 왜 지금 우주 개발 경쟁에 뛰어들까. 우주 비즈니스는 어디까지 확장될 수 있을까. 인류의 마지막 투자처로 불리는 우주의 가능성을 살펴본다.</p>
                </div>
            </div>
        </section>
        <!-- //content1-->
        <!-- content2 -->
        <section class="content2">
          <div class="books">
              <div class="books_card">
              	  <h3>레이아웃</h3>
                  <p>레이아웃 배치에 사용하는 많은 속성들이 있지만, 어떤 요소가 정확하게 영향을 받고 핸들링 되는지 파악 하기위해 display속성만 사용하여 레이아웃을 배치 해보았습니다.</p>
              </div>
              <div class="books_card">
			      <h3>퍼블리싱 따라하기</h3>          		
                  <p>현재 운영중인 공공기관 사이트를 똑같이 퍼블리싱 해보았습니다. </p>
              </div>
              <div class="books_card">
        		  <h3>팀 프로젝트-음식점 예약 서비스</h3>
                  <p>세계는 왜 지금 우주 개발 경쟁에 뛰어들까. 우주 비즈니스는 어디까지 확장될 수 있을까. 인류의 마지막 투자처로 불리는 우주의 가능성을 살펴본다.</p>
              </div>
              <div class="books_card">
        	      <h3>개인 프로젝트-ToDoList(진행 중)</h3>
                  <p>세계는 왜 지금 우주 개발 경쟁에 뛰어들까. 우주 비즈니스는 어디까지 확장될 수 있을까. 인류의 마지막 투자처로 불리는 우주의 가능성을 살펴본다.</p>
              </div>
          </div>
          
        </section>
        <!-- //content2 -->
    </div>
    <!-- container 끝 -->
    
    
    <!-- <section class="news_letters">news letters 
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
    </section>
 -->
    <!-- footer -->
<!--     <footer class="footer">
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
    </footer>
    footer 끝 -->
    
    <!-- Button trigger modal -->
<button type="button" class="btn btn-primary btn-lg" data-toggle="modal" data-target="#myModal">
  Launch demo modal
</button>

<!-- Modal -->
<div class="modal fade" id="myModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
  <div class="modal-dialog">
    <div class="modal-content">
      <div class="modal-header">
        <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
        <h4 class="modal-title" id="myModalLabel">Modal title</h4>
      </div>
      <div class="modal-body">
        <iframe width="560" height="315" src="https://www.youtube.com/embed/db9wzZDd0f8" title="YouTube video player" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>
      </div>
      <div class="modal-footer">
        <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
        <button type="button" class="btn btn-primary">Save changes</button>
      </div>
    </div>
  </div>
</div>
    
</body>
</html>