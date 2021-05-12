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
<link rel="stylesheet" type="text/css" href="resources/css/sample2.css?ver=15"/>
<link rel="stylesheet" type="text/css" href="resources/css/font.css?ver=7"/>
 <!-- 부트스트랩 -->
<link href="css/bootstrap.min.css" rel="stylesheet">
<!-- 합쳐지고 최소화된 최신 CSS -->
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap.min.css">
<!-- 부가적인 테마 -->
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap-theme.min.css">
<script type="text/javascript">
	document.addEventListener("DOMContentLoaded", function() {/* DOM(document(HTML) object(객체) model)과 연결 시켜 준다(jquery 에서는 document.ready.function 으로 연결) */
		// 이모티콘 눈 깜박이기
		 openMyEyes();
		 
		// 모달창 닫기 버튼 클릭 시  유튜브 꺼지기
		 $('.close').click(function(){
			 close();
		});
			
		// 모달창 열기 버튼 클릭 시  유튜브 켜지기
		 $('.openModal').click(function(){
			 open();
		});
			
		// 레이아웃 모달 이미지 슬라이드
		$('.click1').click(function(){
			$('.modal-slider1').css({'transform':'translateY(-20px)'});
		});
		$('.click2').click(function(){
			$('.modal-slider1').css({'transform':'translateY(-905px)'});
		});
		$('.click3').click(function(){
			$('.modal-slider1').css({'transform':'translateY(-1795px)'});
		});
		$('.click4').click(function(){
			$('.modal-slider1').css({'transform':'translateY(-2685px)'});
		});

		
		// 모달 바디 내 스크롤값
		$('.modal-body2').scroll(function() {
			// 스크롤 값
		    var value = $(this).scrollTop();  
		    // 전체화면 길이
		    var height = $('.modal-body2').prop("scrollHeight");
		    var outerHeight = $('.modal-body2').outerHeight();
		    // 스크롤값을 퍼센트화 함
		    var per = Math.ceil(value / (height - (outerHeight/2-5)) * 100);

		    $('.bar').css({'top' : per + '%'});
		 });

		 
	 
	}); 

	// 모달창 닫기 버튼 클릭 시  유튜브 꺼지기
	var embed_lyaer;
	 function close()
	 {
	 	//#닫기를 눌렀을때 불리는 함수
	 	embed_lyaer=$('.modal-inner').html(); // popup id에 잇는 html을 embed_lyaer 글로벌 변수에 담아 놓음.
	 	$('.modal-inner').html(''); 
	 }
	 
	// 모달창 열기 버튼 클릭 시  유튜브 켜지기
	 function open(){		
		 $('.modal-inner').html(embed_lyaer); //닫기를 눌렀을때 저장한 글로벌 변수를 다시 popup id에 넣어줌.
	}

	// 이모티콘 눈 깜박이기
	function openMyEyes(){
		var openEyes = document.getElementById("openEyes");
		openEyes.classList.toggle("displayNone");
	}
	// 1초에 한번씩 눈을 깜빡여라
	setInterval(openMyEyes, 700);
</script>
</head>
<body>
	<!-- header -->
    <header class="header">
        <i class="fas fa-bars"></i>
        <div class="heart">&#x2665;</div>
        <ul>
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
                    <h3>개발이 재미있는 신입 '오아연'</h3>
                    <p>세계는 왜 지금 우주 개발 경쟁에 뛰어들까. 우주 비즈니스는 어디까지 확장될 수 있을까. 인류의 마지막 투자처로 불리는 우주의 가능성을 살펴본다.</p>
                </div>
            </div>
        </section>
        <!-- //content1-->
        <!-- content2 -->	
        <section class="content2">
          <div class="books">
              <div class="books_card openModal" data-toggle="modal" data-target="#layout">
              	  <h3>레이아웃</h3>
              	  <div>
				  	<img alt="레이아웃이미지" src="resources/images/layoutMain.png" width="100%" height="100%">
				  </div>
              </div>
              <div class="books_card openModal" data-toggle="modal" data-target="#clone">
			      <h3>퍼블리싱</h3>
			      <div>
				  	<img alt="퍼블리싱이미지" src="resources/images/publishing.png" width="100%" height="100%">
				  </div>         		
              </div>
              <div class="books_card openModal" data-toggle="modal" data-target="#teamPro">
         		  <h3 >팀 프로젝트</h3>
				  <div>
				  	<img alt="팀플이미지" src="resources/images/teamMain.png" width="100%" height="100%">
				  </div>              		
              </div>
              <div class="books_card openModal" data-toggle="modal" data-target="#todoList">
        	      <h3>개인 프로젝트</h3>
        	      <div>
				  	<img alt="레이아웃이미지" src="resources/images/layoutMain.png" width="100%" height="100%">
				  </div>  
              </div>
          </div>
        </section>
        <!-- //content2 -->
    </div>
    <!-- //container  -->
    
    
    
    
	<!-- layout Modal -->
	<div class="modal fade" id="layout" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
	  <div class="modal-dialog">
	    <div class="modal-content">
	      <div class="modal-header">
	        <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
	        <h4 class="modal-title" id="myModalLabel">레이아웃</h4>
	      </div>
	      <div class="modal-body">
		      <ul class="modal-slider1">
		      	<li>
			      	<img alt="레이아웃1" src="resources/images/layout_1.png" width="100%" height="100%">
		      	</li>
		      	<li>
		      		<img alt="레이아웃2" src="resources/images/layout_2.png" width="100%" height="100%">
		      	</li>
		      	<li>
		      		<img alt="레이아웃3" src="resources/images/layout_3.png" width="100%" height="100%">
		      	</li>
		      	<li>
		      		<img alt="레이아웃4" src="resources/images/layout_4.png" width="100%" height="100%">
		      	</li>
		      </ul>
	      </div>
	      <div >
	      <div class="modal-footer">
		       <button type="button" class="click1 btn btn-dark">1</button>
		       <button type="button" class="click2 btn btn-dark">2</button>
		       <button type="button" class="click3 btn btn-dark">3</button>
		       <button type="button" class="click4 btn btn-dark">4</button>
	       </div>
	       	제목 퍼블리싱 따라하기
		       소요 시간 2주
	       	사용 언어 html css
		       참고 사이트 근로복지공단,국립중앙도서관,부산시청 
	      	 <p>레이아웃 배치에 사용하는 많은 속성들이 있지만, 어떤 요소가 정확하게 영향을 받고 핸들링 되는지 파악 하기위해 display속성만 사용하여 레이아웃을 배치 해보았습니다.</p>
	      </div>
	    </div>
	  </div>
	</div>
	<!--// layout Modal -->
	<!--  clone Modal -->
	<div class="modal fade" id="clone" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
	  <div class="modal-dialog">
	    <div class="modal-content">
	      <div class="modal-header">
	        <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
	        <h4 class="modal-title" id="myModalLabel">팀 프로젝트-음식점 예약 서비스</h4>
	      </div>
	      <div class="modal-body2">
	      	<ul class="modal-slider2">
		      	<li>
			      	<img alt="레이아웃1" src="resources/images/bokgi_1.png" width="100%" height="100%">
		      	</li>
		      	<li>
		      		<img alt="레이아웃2" src="resources/images/bokgi_2.png" width="100%" height="100%">
		      	</li>
		      	<li>
		      		<img alt="레이아웃3" src="resources/images/bokgi_3.png" width="100%" height="100%">
		      	</li>
		      	<li>
		      		<img alt="레이아웃4" src="resources/images/library_1.png" width="100%" height="100%">
		      	</li>
		      	<li>
		      		<img alt="레이아웃2" src="resources/images/library_2.png" width="100%" height="100%">
		      	</li>
		      	<li>
		      		<img alt="레이아웃3" src="resources/images/library_3.png" width="100%" height="100%">
		      	</li>
		      	<li>
		      		<img alt="레이아웃4" src="resources/images/busan_1.png" width="100%" height="100%">
		      	</li>
		      </ul>
	      </div>
	       <div class="barWrap">
		      	<span class="bar"></span>
		   </div>
	      <div class="modal-footer">
	       </div>
	       	제목 퍼블리싱 따라하기
	       	소요 시간 2주
	       	사용 언어 html css
	       	참고 사이트 근로복지공단,국립중앙도서관,부산시청 
	      	<p>현재 운영 중인 공공기관(근로복지공단, 국립중앙도서관, 부산시청) 사이트를 똑같이 퍼블리싱 해보았습니다. </p>
	    </div>
	  </div>
	</div>
	<!--// clone Modal -->
	<!-- teamPro Modal -->
	<div class="modal fade" id="teamPro" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
	  <div class="modal-dialog">
	    <div class="modal-content">
	      <div class="modal-header">
	        <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
	        <h4 class="modal-title" id="myModalLabel">팀 프로젝트-음식점 예약 서비스</h4>
	      </div>
	      <div class="modal-body">
	      	<div class="modal-inner">
		        <iframe width="100%" height="315" src="https://www.youtube.com/embed/db9wzZDd0f8" title="YouTube video player" frameborder="0"  allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>
			      <div class="modal-footer">
			      </div>
			      제목 퍼블리싱 따라하기
	       	소요 시간 2주
	       	사용 언어 html css
	       	인원 3명 
			      	<p>세계는 왜 지금 우주 개발 경쟁에 뛰어들까. 우주 비즈니스는 어디까지 확장될 수 있을까. 인류의 마지막 투자처로 불리는 우주의 가능성을 살펴본다.</p>
		     </div>
	      </div>
	    </div>
	  </div>
	</div>
	<!--// teamPro Modal-->
	<!--todoList Modal -->
	<div class="modal fade" id="todoList" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
	  <div class="modal-dialog">
	    <div class="modal-content">
	      <div class="modal-header">
	        <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
	        <h4 class="modal-title" id="myModalLabel">팀 프로젝트-음식점 예약 서비스</h4>
	      </div>
	      <div class="modal-body">
	      
	      </div>
	      <div>
	      	<p>세계는 왜 지금 우주 개발 경쟁에 뛰어들까. 우주 비즈니스는 어디까지 확장될 수 있을까. 인류의 마지막 투자처로 불리는 우주의 가능성을 살펴본다.</p>
	      </div>
	    </div>
	  </div>
	</div>
	<!--//todoList Modal-->
<!-- Jquey를 사용을 위한 태그 -->
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<!-- 합쳐지고 최소화된 최신 자바스크립트 -->
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/js/bootstrap.min.js"></script>
<!-- smaple.js를 사용하기 위한 태그 -->
<script src="resources/js/sample.js?ver=2"></script>
</body>
</html>