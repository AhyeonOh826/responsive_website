<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Insert title here</title>
<!-- Jquey를 사용을 위한 태그 -->
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<!-- 합쳐지고 최소화된 최신 자바스크립트 -->
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/js/bootstrap.min.js"></script>
<!-- smaple.js를 사용하기 위한 태그 -->
<script src="resources/js/sample.js?ver=2"></script>
<style type="text/css">

* {
    margin: 0;
    padding: 0;
    list-style: none;
    text-decoration: none;
    box-sizing: border-box;
}

body{
	height: 100%;
	background: #eceff1;
	
}
.main{
	margin: auto;
	width: 50%;
	padding-top:200px; 
}

.main h2{
	text-align: center;
	margin: 20px 0;
}

.input_div{
	margin-bottom: 20px;
	display: flex;
	flex-direction: row;
	width: 66%;
	margin: auto;
	
}

.input_div > h1{
	font-size: 48px;
}

.input_div input{
	height: 60px;
	width: 37%;
	outline: none;
	border-style: none;
	margin: 0 7px;
	font-size: 40px;
	border-bottom: 2px solid black;
}

.editButton, .removeButton, .addButton{
	outline: none;
	border-style: none;
	background: white;
	font-weight: bold;
	float: right;
	background: #eceff1;
}

.editButton{
	padding:0 10px;
}


.container{
	width: 50%;
	margin: auto;
	position:relative;
}

.container input{
	outline: none;
	border-style: none;
	margin: 10px 0;
	font-size: 40px;
	background: #eceff1;
}
</style>
<script type="text/javascript">
document.addEventListener("DOMContentLoaded", function() {/* DOM(document(HTML) object(객체) model)과 연결 시켜 준다(jquery 에서는 document.ready.function 으로 연결) */
 	var addButton = document.querySelector('.addButton');
 	var input =  document.querySelector('.input');
 	var container =  document.querySelector('.container');

 	class item{
		constructor(itemName){
			this.createDiv(itemName);
		}

		createDiv(itemName){
			// input 태그 추가
			var input = document.createElement('input');
			// 태그에 input value에 input값 넣어라
			input.value= itemName;
			// 비활성화
			input.disabled = true;
			// 클래스명 추가
			input.classList.add('item_input');
			// 타입
			input.type = "text";

			// 태그 추가
			var itemBox = document.createElement('div');
			// 클래스명 추가
			itemBox.classList.add('item');

			var editButton = document.createElement('button');
			// button 이름
			editButton.innerHTML = "수정";
			editButton.classList.add('editButton');

			var removeButton = document.createElement('button');
			removeButton.innerHTML = "삭제";
			removeButton.classList.add('removeButton');
			// 자식 태그에 넣어라
			container.appendChild(itemBox);

			itemBox.appendChild(input);
			itemBox.appendChild(editButton);
			itemBox.appendChild(removeButton);

			editButton.addEventListener('click', () => this.edit(input));
			
			removeButton.addEventListener('click', () => this.remove(itemBox));
		}

		edit(input){
			input.disabled = !input.disabled;
			// 쿠키값 가져오기
			alert(document.cookie);
		}

		remove(item){
			container.removeChild(item);
		}
 	}
	// 등록하는 버튼
	function check(){
		// 넣은 값 쿠키값에 넣기 
		document.cookie = 'id=' + input.value;
		document.cookie = 'age=50';
		document.cookie = 'name= ' + encodeURIComponent('투');


		
		// 입력창에 글이 들어오면 입력 되고 입력창에서 입력값은 사라지게 해라
		if(input.value != ""){
			new item(input.value);
			input.value="";
		}

	
	}
	
 	// 버튼 클릭하면 check(등록함수)를 호출해라
 	addButton.addEventListener('click', check);
 	
 	window.addEventListener('keydown', (e) => {
		// 엔터를 누르면 등록 되게 해라
		if(e.which == 13){
			check();
		}
 	 })

	/* // 현재 위치 경도,위도 가져오기(왜 무주 나오지?ㅎㅎ)
 	 navigator.geolocation.getCurrentPosition(geoSuccess, geoError);

	 function geoSuccess(position){
		// 위도
		const lat = position.coords.latitude;
		// 경도
		const lng = position.coords.longitude;
		// 위도 경도 오차
		const accuracy = Math.floor(position.coords.accuracy);
		
		alert(lng);
		alert(lat);
		alert(accuracy);

		 setMap(lat, lng);
	}

	 function setMap(lat, lng){
		// 위도, 경도 설정
		const latlng = new google.maps.LatLng(lat, lng);s

		// 표시 추가
		const marker = new google.maps.Marker({
			map: map,
			draggable: true,
			animation: google.maps.Animation.DROP,
			position :latlng
		});
	 }
	 function geoError(){
		alert('지도 실패');
	 }
 */
	
	
	 
}); 
</script>
</head>
<body>
	<div class="main">
	    <div class="input_div">
	    	<h1>오늘은</h1>
	    	<input class="input" type="text" >
	    	<h1>할꺼야</h1>
	    	<button class="addButton"><i class="fas fa-plus" style="display:none;"></i></button>
	    </div>
	    <div class="container">
	    	<!-- 
	    		<div class="item">
		    		<input type="text" class="item_input" value="Sport" disable>
		    		<button class="editButton">EDIT</button>
	    			<button class="removeButton">REMOVE</button>
	    		</div>
	    	 -->
	    </div>
    </div>
<!-- fontawesome을 사용하기 위한 태그  -->
<script src="https://kit.fontawesome.com/9b2e1e411c.js" crossorigin="anonymous"></script>    
</body>
</html>