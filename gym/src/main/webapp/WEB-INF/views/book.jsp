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
<style>
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
	
	<!-- 타임테이블 시작 -->
	.timetable_title {
		height: 30px;
		
	}
	.timetable_title span {
		color: white;
		font-size: 30px;
		font-weight: bold;
		font-family: '고딕';
		margin-left: 200px;
	}
	
	.today_button_div {
		text-align: right;
		margin-bottom: 5px;
	}
	
	.month span{
		 color: white;
		 font-size: 20px;
	}
	
	.today_button_div span {
		line-height: 30px;
		margin-left: 20px;
	}
	
	.today_button_div a {
		color: white;
	}
	
	.today_button_div a:hover {
		color: #f36100;
		font-weight: 100px;
	}
	
	input {
		border: none;
		color: #363636;
		width: 100px;
	}
	input:hover {
		color: white;
	}
	table tr {
		font-family: "고딕"; 
		color:white;
	}


	a:link { font-size:13pt; font-family:"고딕";color:#000000; text-decoration:none; }
	a:visited { font-size:13pt; font-family:"고딕"; text-decoration:none; }
	.calendar_body a:active {
		font-size:13pt; 
		font-family:"고딕";
		color:red; 
		text-decoration:none; 
	}
	.calendar_body a:hover { 
		font-size:13pt; 
		color: #f36100;
		text-decoration:none;
	}
	
	.day{
		width:100px; 
		height:30px;
		font-weight: bold;
		font-size:15px;
		font-weight:bold;
		text-align: center;
		background-color: #f36100;
	}
	.sat{
		color:blue;
	}
	.sun{
		color:red;
	}
	.calendar_body .sun_day .sun button:hover{
		color:#f36100;
	}
	.today_button_div a {
		float: right;
		text-align: center;
		padding:3px 10px 3px 10px;
		margin-bottom: 15px;
		color: white;
		border: 2px solid #f36100;
		background-color: none;
		margin-left: 10px;
	}
	.today_button_div a:hover {
		color: white;
		background-color: #f36100;
	}
	
	.calendar{
		width:80%;
		margin:auto;
	}
	.navigation{
		margin-bottom:30px;
		text-align: center;
		font-size: 25px;
		vertical-align: middle;
		background-color: none;
		color: white;
	}
	.navigation a{
		color: white;
	}
	.calendar_body{
		width:100%;
		background-color: none;
		border:1px solid white;
		margin-bottom: 50px;
		border-collapse: collapse;
	}
	.calendar_body .today{
		border:1px solid white;
		height:120px;
		background-color: #505050;
		text-align: right;
		vertical-align: top;
	}
	
	.calendar_body .today button {
		border: none;
		background-color: #505050;
		color: white;
		margin: 5px;
		font-size: 20px;
		font-family:"고딕";
		font-weight: bold;
	}
	.calendar_body .today button:hover, .calendar_body .sat_day .sat button:hover, .calendar_body .date button:hover {
		color: #f36100;
	}
	.calendar_body .today button, .calendar_body .normal_day button {
		color: white;
	}
	.calendar_body .date{
		border: none;
		font-weight: bold;
		font-size: 20px;
		padding: 5px;
		text-align: right;
	}
	.calendar_body .date button {
		border: none;
		color: white;
		background-color:#282828;
		padding: 5px;
		font-size: 20px;
		font-family:"고딕";
		font-weight: bold;
	}
	.calendar_body .sat_day {
		border:1px solid white;
		height:120px;
		background-color:#282828;
		text-align:right;
		vertical-align: top;
	}
	.calendar_body .sat_day button {
		border: none;
		color: blue;
		background-color:#282828;
		padding: 5px;
		margin: 5px;
		font-size: 20px;
		font-family:"고딕";
		font-weight: bold;
		text-align: right;
	}
	.calendar_body .sun_day{
		border:1px solid white;
		height:120px;
		background-color:#282828;
		text-align: right;
		vertical-align: top;
	}
	.calendar_body .sun_day .sun button {
		border: none;
		color: red;
		background-color:#282828;
		margin: 5px;
		font-weight: bold;
		font-size: 20px;
		font-family:"고딕";
		padding: 5px;
		
	}
	.calendar_body .normal_day{
		border:1px solid white;
		height:120px;
		background-color:#282828;
		vertical-align: top;
		text-align: right;
	}
	.before_after_month{
		margin: 10px;
		font-weight: bold;
	}
	.before_after_year{
		font-weight: bold;
	}
	.this_month{
		margin: 10px;
	}
	
	
    /* 팝업 배경 css */
    #popup_mask {
		position: fixed;
		width: 100%;
		height: 1000px;
		top: 0px;
		left: 0px;
		display: none; 
		background-color: #000;
		opacity: 0.8;
    }
    /* 팝업창 css */
	#popupDiv {  
	    top : 0px;
	    position: absolute;
	    background: black;
	    width: 400px;
	    height: 700px;
	    display: none;
	    padding: 20px 20px;
    }
    
    .popupDiv h3{
    	border-bottom: 1px solid #363636;
    	padding-bottom: 10px;
    	margin-bottom: 20px;
    }
    .popupDiv span {
    	color: white;
    	margin-bottom: 50px;
    	margin-right: 50px;
    	margin-left: 15px;
    	font-size: 18px;
    }
    .popupDiv input {
		border: none;
		color: white;
		width: 70px;
		margin-bottom: 10px;
		margin-left: 5px;
		background-color: #f36100;
		font-size: 18px;
	}
	.popupDiv .btn_book {
		width: 90px;
	}

	.popupDiv input:hover {
		color: red;
	}
	.popupDiv button {
		border: 1px solid white;
		background-color: black;
		padding: 10px 30px;
		margin-top: 30px;
		margin-left: 50px;
		color: white;
		font-size: 20px;
	}
	
</style>



<script src="http://code.jquery.com/jquery-latest.js"></script>
<script>
	
	$(function(){
		$('.btn_book').click(function(event){	
			var i = $('.btn_book').index(this);
			var lessonTime = this.getAttribute("id");
			if(this.value == "예약"){
				if(confirm(lessonTime + " 타임으로 예약하시겠습니까?")){
					this.value = "예약불가";
					this.setAttribute("style", "color:red;");
					var btn_del = document.getElementsByClassName("btn_del");
					btn_del[i].removeAttribute("disabled");
				} 
			} else {
				alert('예약이 불가합니다. 다른 시간을 선택하세요');
			}
		});
		$('.btn_del').click(function(event){	
			var i = $('.btn_del').index(this);
			var lessonTime = this.getAttribute("id");
			if(confirm(lessonTime + " 타임 예약을 취소하시겠습니까?")){
				var btn_book = document.getElementsByClassName("btn_book");
				btn_book[i].removeAttribute("disabled");			
				btn_book[i].setAttribute("value", "예약");
				btn_book[i].setAttribute("style", "color: white, this:hover{color: red};");
				this.setAttribute("disabled", "disabled");
				//전달할 값 입력해야함.
			}
		});
	});

		// 오늘 이전 날짜는 못들어가게 했는데 관리자랑 강사는 들어가서 스케쥴 볼수있게 해야함. 
		$(document).ready(function(){
			$(".popOpenBtn").click(function(event){
				var popTitle = document.getElementById('popTitle');
				popTitle.innerHTML = this.id + ' 예약 스케쥴';
				var today = new Date();
	 			var year = today.getFullYear();
	 			var month = today.getMonth()+1;
	 			var date = today.getDate();
	 			
	 			if(month < 10){
	 				month = "0"+month;
	 			}
	 			var today = year+""+month+""+date;
	 			console.log(today);
	 			console.log(this.id);
	 			if(this.id >= today){
					$("#popupDiv").css({
						"top": (($(window).height()-$("#popupDiv").outerHeight())/2+$(window).scrollTop())+"px",
						"left": (($(window).width()-$("#popupDiv").outerWidth())/2+$(window).scrollLeft())+"px"
					}); 
		            
					$("#popup_mask").css("display","block");
					$("#popupDiv").css("display","block");
		            
					$("body").css("overflow","hidden");
	 			} else{
	 				alert('예약가능한 날짜가 아닙니다.');
	 				
	 			}
			});
	        
			// 예약한 시간 넘겨줘야함. 
			$("#bookCommitBtn").click(function(event){
				alert('예약이 완료되었습니다. 결제완료 시 예약이 확정됩니다.');
				$("#popup_mask").css("display","none");
				$("#popupDiv").css("display","none");
				$("body").css("overflow","auto");
			});
			
			$("#popCloseBtn").click(function(event){
				if(confirm('예약을 취소하시겠습니까?')){
					$("#popup_mask").css("display","none");
					$("#popupDiv").css("display","none");
					$("body").css("overflow","auto");
					location.href="${contextPath}/book.do";
				}
			});
		});

</script>
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
    <div class="radioBtn">
      <label><input type="radio" class="course_id" name="course_id" id="헬스">헬스</label>
   </div>
   <div class="radioBtn">
      <label><input type="radio" class="course_id" name="course_id" id="필라테스">필라테스</label>
   </div>
   <script>
      $(".course_id").click(function(event){
         var course_id = document.getElementsByClassName('course_id');
         console.log(this.id);
         $(".bookcalender").show();
      });
   </script>
    	<div class="bookcalender" style="display: none">
		<div class="timetable_title">
			<span>Classes timetable</span>
		</div>
		
		<div id ="popup_mask" class="popup_mask"></div>
		

		<form name="calendarFrm" id="calendarFrm" action="" method="GET">

		<div class="calendar" >
			<!--날짜 네비게이션  -->	
			<div class="navigation">
				<a class="before_after_year" href="./book.do?book_year=${today_info.search_year-1}&book_month=${today_info.search_month}">
					&lt;&lt;
				<!-- 이전해 -->
				</a> 
				<a class="before_after_month" href="./book.do?book_year=${today_info.after_year}&book_month=${today_info.before_month+1}">
					&lt;
				<!-- 이전달 -->
				</a> 
				<span class="this_month">
					&nbsp;${today_info.search_year}. 
					<c:if test="${today_info.search_month<10}">0</c:if>${today_info.search_month}
				</span>
				<a class="before_after_month" href="${contextPath}/book.do?book_year=${today_info.after_year}&book_month=${today_info.after_month+1}">
				<!-- 다음달 -->
					&gt;
				</a> 
				<a class="before_after_year" href="${contextPath}/book.do?book_year=${today_info.search_year+1}&book_month=${today_info.search_month}">
					<!-- 다음해 -->
					&gt;&gt;
				</a>
			</div>
			<div class="today_button_div">
				<span><a href="${contextPath }/team.do">강사목록보기</a></span>
				<span><a href="${contextPath }/viewBook.do">예약목록보기</a></span>
				<span><a class="today_button" href="${contextPath }/book.do">이번달</a></span>
			</div>
			<div class="today_button_div">
				
			</div>
			<table class="calendar_body">
				<thead>
					<tr>
						<td class="day sun">일</td>
						<td class="day">월</td>
						<td class="day">화</td>
						<td class="day">수</td>
						<td class="day">목</td>
						<td class="day">금</td>
						<td class="day sat">토</td>
					</tr>
				</thead>
				<tbody>
					<tr>
						<c:forEach var="dateList" items="${dateList}" varStatus="date_status"> 
							<c:choose>
								<c:when test="${dateList.book_value=='today'}">
									<td class="today">
									<c:if test="${(dateList.book_month+1) < 10}">
										<button type="button" class="popOpenBtn" id="${dateList.book_year }0${dateList.book_month+1 }${dateList.book_date }">${dateList.book_date}</button>
									<!-- <input type="hidden" class="titleM" id="${dateList_month+1 }"> -->
									</c:if>	
									<c:if test="${(dateList.book_month+1) >=10 }">
										<button type="button" class="popOpenBtn" id="${dateList.book_year }${dateList.book_month+1 }${dateList.book_date }">${dateList.book_date}</button>
									</c:if>
									</td>
								</c:when>
								<c:when test="${date_status.index%7==6}">
									<td class="sat_day">
										<div class="sat">
										<c:if test="${(dateList.book_month+1) < 10 }">
											<button type="button" class="popOpenBtn" id="${dateList.book_year }0${dateList.book_month+1 }${dateList.book_date }">${dateList.book_date}</button></div>
										</c:if>
										<c:if test="${(dateList.book_month+1) >= 10 }">
											<button type="button" class="popOpenBtn" id="${dateList.book_year }${dateList.book_month+1 }${dateList.book_date }">${dateList.book_date}</button></div>
										</c:if>
									</td>
								</c:when>
								<c:when test="${date_status.index%7==0}">
					</tr>
					<tr>	
						<td class="sun_day">
							<div class="sun">
								<c:if test="${(dateList.book_month+1) < 10 }">
									<button type="button" class="popOpenBtn" id="${dateList.book_year }0${dateList.book_month+1 }${dateList.book_date }">${dateList.book_date}</button></div>
								</c:if>
								<c:if test="${(dateList.book_month+1) >= 10 }">
									<button type="button" class="popOpenBtn" id="${dateList.book_year }${dateList.book_month+1 }${dateList.book_date }">${dateList.book_date}</button></div>
								</c:if>
						</td>
								</c:when>
								<c:otherwise>
						<td class="normal_day">
							<div class="date">
								<c:if test="${(dateList.book_month+1) < 10 }">
									<button type="button" class="popOpenBtn" id="${dateList.book_year }0${dateList.book_month+1 }${dateList.book_date }">${dateList.book_date}</button></div>
								</c:if>
								<c:if test="${(dateList.book_month+1) >= 10 }">
									<button type="button" class="popOpenBtn" id="${dateList.book_year }${dateList.book_month+1 }${dateList.book_date }">${dateList.book_date}</button></div>
								</c:if>
							<input type="hidden" value="${contextPath}/book.do?book_year=${dateList.book_year}&book_month=${dateList.book_month}&book_date=${dateList.book_date}">
						</td>
								</c:otherwise>
							</c:choose>
						</c:forEach>
				</tbody>
			</table>
		</div>
		
		<!-- POPUP -->
		<div id="popupDiv" class="popupDiv">
				<h3 style="border-bottom-color: gray; color: white;" id="popTitle"></h3>
				<span>09.00-09.50</span><input type="button" id="9시" class="btn_book" name="book" value="예약">
								<input type="button" id="9시" class="btn_del" value="취소" disabled="disabled"><br>
				<c:forEach var="i" begin="10" end="21" step="1">
					<span>${i }.00-${i }.50</span><input type="button" id="${i }시" class="btn_book" name="book" value="예약">
							<input type="button" id="${i }시" class="btn_del" value="취소" disabled="disabled"><br>
				</c:forEach>
				<button type="button" id="bookCommitBtn">확인</button>
				<button type="button" id="popCloseBtn">취소</button>
		</div>
	</form>        
</div>
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