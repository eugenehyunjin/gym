<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" isELIgnored="false"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"  %>
<%
  request.setCharacterEncoding("UTF-8");
%>
	<c:set var="contextPath" value="${pageContext.request.contextPath }"/>

<!DOCTYPE html>
<html lang="zxx">
<head>
<meta charset="UTF-8">
<title><tiles:insertAttribute name="title"/></title>
<script src="http://code.jquery.com/jquery-latest.js"></script>
<link rel="stylesheet" href="//code.jquery.com/ui/1.12.1/themes/smoothness/jquery-ui.css">
<script src="//code.jquery.com/jquery-1.12.4.js"></script>
<script src="//code.jquery.com/ui/1.12.1/jquery-ui.js"></script>
<link rel="stylesheet" href="//cdnjs.cloudflare.com/ajax/libs/timepicker/1.3.5/jquery.timepicker.min.css">
<script src="//cdnjs.cloudflare.com/ajax/libs/timepicker/1.3.5/jquery.timepicker.min.js"></script>
<script>
$(function(){
    var $j = jQuery.noConflict();
    $(".datepicker").datepicker({
    	dateFormat: 'yy/mm/dd',
    	monthNames: ['1월','2월','3월','4월','5월','6월','7월','8월','9월','10월','11월','12월'],
    	monthNamesShort: ['1월','2월','3월','4월','5월','6월','7월','8월','9월','10월','11월','12월'],
    	dayNames:['일','월','화','수','목','금','토'],
    	dayNamesShort:['일','월','화','수','목','금','토'],
    	dayNamesMin:['일','월','화','수','목','금','토'],
    	showMonthAfterYear: true,
    	yearSuffix: '년',
   		prevText: '이전 달',
   		nextText: '다음 달',
    	maxDate: '+1m +1w',
   		minDate: '-0d',
   		showButtonPanel: true,
   		closeText: '닫기',
   		onSelect: function(clickDate){
       		alert(clickDate + "선택");
       		console.log(clickDate);
       		$(".timepicker").show();
   		}
    });
    $('.timepicker').timepicker({
	    timeFormat: 'HH:mm',
	    interval: 60,
	    startTime: '8:00',
	    minTime: '8:00',
	    maxTime: '22:00',
	    dynamic: false,
	    dropdown: true,
	    scrollbar: true,
	    
	});
    
});
</script>

<style>
input::placeholder {
  color: white;
  font-style: italic;
}
	.class-details-section .container .row {
		width: 1000px;
	}
	
	.class-details-section {
		padding-top: 50px
	}
	
	.cd-trainer-pic {
		width: 390px;
	}
	
	.class-details-text .cd-trainer .cd-trainer-text ul{
		padding-top: 50px;
	}
	.class-details-text .cd-trainer .cd-trainer-text .trainer-info li span {
		width: 500px;
	}
	.col-md-6 .cd-trainer-text {
		padding: 30px;
		width: 400px;
	}
	
	.cd-trainer-text {
		margin-left: 150px;
	}

	.trainer-info li {
		padding-left: 10px;
	}
	
	.trainer-info span {
		font-size: 20px;
		margin-left: -10px;
	}
	
	.trainer-social {
		margin-top: 50px;
		margin-right: 50px;
	}

	/**/
	.container h3 {
		font-family: '고딕';
		font-weight: bold;
		color: white;
		margin-bottom: 30px;
	}
	label {
		width: 150px;
		margin-right: 30px;
		color: white;
	}
	.course_id {
		width: 30px;
	}
	
	/* datepicker */ 
	#datepicker {
		background-color: none;
		color: white;
		height: 30px;
		font-size: 18px;
		border: 2px solid white;
		text-align: center;
		width: 300px;
		margin-right: 20px;
	}
	
	.ui-datepicker-trigger {
		height: 20px;
	}
	.ui-datepicker {
		width: 400px;
		background-color: black;
	} 
	.calendar {  
		width: 1000px;  
		background-color: none;  
		border-radius: 4px;  
		overflow: hidden;
		margin: 10px;
		font-size: 20px;
		display: inline-block;
	}
	.calendar h6 {
		color: white;
		display: inline-block;
		margin-left: 50px;
	}
	.ui-datepicker-header {  
		height: 70px;  
		background: black;
		color: white;  
		border-radius: 0px;  
		padding-bottom: 10px;
		font-size: 30px;
		font-family: '고딕';
	} 
	.ui-datepicker-header a {
		background-color: black;
		border: thin;
		
	}
	a.ui-datepicker-prev.ui-corner-all,
	a.ui-datepicker-next.ui-corner-all {
		width: 30px;
		height: 30px;
		background-color: black;
		margin: 15px;
	}
	
	.ui-datepicker-prev,  
	.ui-datepicker-next {  
		width: 3px;  
		height: 3px;  
		line-height: 5px;
		border-radius: 100%;
		cursor: pointer;
	}  
	.ui-datepicker-prev {  
		float: left;
		margin: 3px;  
	}  
	
	.ui-datepicker-next {  
		float: right;  
		margin: 3px;  
	}  
	
	.ui-datepicker-prev:after,  
	.ui-datepicker-next:after {  
		position: absolute;  
		display: block;  
		width: 3px;  
		height: 3px;  
	}  
	
	.ui-datepicker-title {  
		text-align: center;  
	}  
	.ui-datepicker-calendar {  
		width: 100%;
		text-align: center;
		background-color: black;
	}
	.ui-datepicker-calendar thead tr th span {  
		display: block;  
		width: 40px;  
		color: white;  
		margin-bottom: 5px;  
		font-size: 18px;  
	}
	.ui-datepicker-calendar a.ui-state-default{
		color: #f36100;
		font-weight: bold;
		font-family: '고딕';
	}
	.ui-state-default {  
		display: block;  
		text-decoration: none;  
		line-height: 35px;  
		font-size: 15px;
	}
	
	.ui-state-default:hover {  
		background: black;
		border-color: #f36100;
		color: white !important;
	}
	
	/* timpicker */
	.timepicker {
		background-color: none;
		color: white;
		height: 30px;
		width: 300px;
		font-size: 18px;
		border: 2px solid white;
		text-align: center;
		font-family: '고딕';
	}
	ul.ui-timepicker-viewport {
		background-color: black;
	}
	a.ui-corner-all {
		color: #f36100;
		font-family: '고딕';
		font-size: 18px;
	}
	a.ui-corner-all:hover {
		color: #f36100;
	}		
    
</style>


</head>

<body>

    <!-- Breadcrumb Section Begin -->
    <section class="breadcrumb-section set-bg" data-setbg="resources/img/breadcrumb-bg.jpg">
        <div class="container">
            <div class="row">
                <div class="col-lg-12 text-center">
                    <div class="breadcrumb-text">
                        <h2>Classes detail</h2>
                        <div class="bt-option">
                            <a href="./index.html">Home</a>
                            <a href="#">Classes</a>
                            <span>Body building</span>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>
    <!-- Breadcrumb Section End -->

    <!-- Class Details Section Begin -->
    <section class="class-details-section spad">
        <div class="container">
            
                <div class="col-lg-8">
                    <div class="class-details-text">
                        <div class="cd-text">
                            <div class="cd-single-item">
                                <h3>Trainer</h3>
                            </div>
                        </div>
                        <div class="cd-trainer">
                            <div class="row">
                                <div class="col-md-6">
                                	<% String bgimg = request.getParameter("bgimg"); %>
                                    <div class="cd-trainer-pic"><%=bgimg %>
                                        <img src="resources/img/classes/class-details/trainer-profile.jpg" alt="">
                                    </div>
                                </div>
                                <div class="col-md-6">
                                    <div class="cd-trainer-text">
                                        <div class="trainer-title">
                                            <h4>Athart Rachel</h4>
                                            <span>Gym Trainer</span>
                                        </div>
                                        <div class="trainer-social">
                                            <a href="#"><i class="fa fa-facebook"></i></a>
                                            <a href="#"><i class="fa fa-twitter"></i></a>
                                            <a href="#"><i class="fa fa-youtube-play"></i></a>
                                            <a href="#"><i class="fa fa-instagram"></i></a>
                                            <a href="#"><i class="fa  fa-envelope-o"></i></a>
                                        </div>
                                        <ul class="trainer-info">
                                            <li><span>Course</span>필라테스</li>
                                            <li><span>Detail</span>항상 건강이 우선이죠!<br>저와 함께 신나게 운동해요!</li>
                                            <li><span>Note</span>필라테스링 / 짐볼</li>
                                            <li><span>Price</span>50,000</li>
                                        </ul>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
			</div>
    </section>
    <!-- Class Details Section End -->

	
	



    <!-- Class Timetable Section Begin -->
    <section class="class-timetable-section class-details-timetable spad">
    <form method="get" action="#" name="frm">
    <div class="container">
    	<h3>BOOKING</h3>
	    <div class="calendar">
			<label><input type="radio" class="course_id" name="course_id"  value="헬스">헬스</label>
			<label><input type="radio" class="course_id" name="course_id"  value="필라테스">필라테스</label>
			 <input type="hidden" name="member_id" id="member_id" value="${id }">
			<h6>* 커리큘럼을 선택하세요. 수업은 50분 진행됩니다.</h6>
		</div>
		<div class="calendar">
			<input type="text" name="book_date" value="" class="datepicker" id="datepicker" placeholder="날짜를 선택하세요." style="display:none;background-color:#f36100;">
			<input type="text" name="book_time" class="timepicker" placeholder="시간을 선택하세요." style="display:none; background-color:#f36100;">
			<input type="button" class="bookBtn" value="예약" style="width:80px; background-color:#f36100; margin-left: 20px; font-family:고딕; font-size: 20px;" onclick="bookCheck()">
		</div>
	</div>
	
	<script>
	$(".course_id").click(function(event){
        var course_id = document.getElementsByClassName('course_id');
        console.log(this.id);
        
        $(".datepicker").show();
     });
	
	
	function bookCheck(){
	      var radio = document.getElementsByName('course_id');
	      
	      var date = $.datepicker.formatDate("yymmdd", $('.datepicker').datepicker("getDate"));
	      date = $('.datepicker').val();
	      console.log(date);
	      
	      var time = document.getElementsByName('.timepicker');
	      time = time.value;
	      console.log(time);
	     
	      var id = '<%=(String)session.getAttribute("id")%>';
	    
	      if(!radio[0].checked && !radio[1].checked){
	         alert('커리큘럼을 선택하세요.');
	      }else if(date == ""){
	         alert('날짜를 선택하세요.');
	         console.log(date);
	      }else if(time == ""){
	         alert('시간을 선택하세요.');
	      }else if(id == "null"){
	    	  console.log(id);
	    	  alert('로그인이 필요한 서비스입니다.')
	      } else {
	      
	    	 var frm = document.frm;
	         frm.method = 'post';
	         frm.action = '${contextPath}/booking.do';
	         frm.submit();
	      }
	      
		
	}
	
	</script>
   
	<div class="bookcalender">
		
	</div>
	</form>
</section>
    <!-- Class Timetable Section End -->

    <!-- Get In Touch Section Begin -->
    <div class="gettouch-section">
        <div class="container">
            <div class="row">
                <div class="col-md-4">
                    <div class="gt-text">
                        <i class="fa fa-map-marker"></i>
                        <p>경기도 구리시 인창동 670-1 태영빌딩<br/> 4층 409호</p>
                    </div>
                </div>
                <div class="col-md-4">
                    <div class="gt-text">
                        <i class="fa fa-mobile"></i>
                        <ul>
                            <li>125-711-811</li>
                            <li>125-668-886</li>
                        </ul>
                    </div>
                </div>
                <div class="col-md-4">
                    <div class="gt-text email">
                        <i class="fa fa-envelope"></i>
                        <p>Support.gymcenter@gmail.com</p>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!-- Get In Touch Section End -->

</body>

</html>