
$(document).ready(function(){
    // callback이란? A callback function is executed after the current effect is 100% finished. 
    // hide 후에 alert 창 뜸
    $("button").click(function(){
        // $(selector).hide(speed,callback);
        // callback - function(){ 안에 내용 적음};
        $("p").hide("slow", function(){
          alert("The paragraph is now hidden");
        });
      });
    // callback 사용 안하면 클릭 시 alert 창 뜨고 확인 누른 후에 사라짐
    $("button").click(function(){
        $("p").hide(1000);
        alert("The paragraph is now hidden");
      });
    
    // Chaining 이란?  to run multiple jQuery methods (on the same element) within a single statement.
    // This way, browsers do not have to find the same element(s) more than once.
    $("button").click(function(){
        $("#p1").css("color", "red").slideUp(2000).slideDown(2000); // 색 변경 -> 업 >  다운 (toggle 같이)
    
     /*
        $("#p1").css("color", "red")
        .slideUp(2000)
        .slideDown(2000);
     */
    });
    
    $('#oh').click(function(){
       $('#transform').css('background','red').slideToggle(1000,function(){
           alert('클릭 해야 왔다리 갔다리 하나보다~~');
       });
    });
    
});