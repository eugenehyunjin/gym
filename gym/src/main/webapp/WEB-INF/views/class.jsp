<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" isELIgnored="false"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"  %>
<%
  request.setCharacterEncoding("UTF-8");
%>
	<c:set var="contextPath" value="${pageContext.request.contextPath }"/>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title><tiles:insertAttribute name="title"/></title>
<link rel="stylesheet" href="//code.jquery.com/ui/1.12.1/themes/smoothness/jquery-ui.css">
<script src="//code.jquery.com/jquery-1.12.4.js"></script>
<script src="//code.jquery.com/ui/1.12.1/jquery-ui.js"></script>


<script>
$(function($){
     
    $(".datepicker").datepicker({
    	maxDate: '+1m +1w',
   		minDate: '-0d',
    	dateFormat: 'yy-mm-dd' 
    });
    
});

function frm1(){
	var frm = document.frm1;
	var course_id = frm.course_id.value;
	var date = frm.book_date.value;
	
	if(date == ''){
		alert('시작날짜를 선택해 주세요.');
	}else{
		frm.method='post';
		frm.action='${contextPath }/booking.do';
		frm.submit();
	}
}
function frm2(){
	var frm = document.frm2;
	var course_id = frm.course_id.value;
	var date = frm.book_date.value;
		
	if(date == ''){
		alert('시작날짜를 선택해 주세요.');
	}else{
		frm.method='post';
		frm.action='${contextPath }/booking.do';
		frm.submit();
	}
}
function frm3(){
	var frm = document.frm3;
	var course_id = frm.course_id.value;
	var date = frm.book_date.value;
			
	if(date == ''){
		alert('시작날짜를 선택해 주세요.');
	}else{
		frm.method='post';
		frm.action='${contextPath }/booking.do';
		frm.submit();
	}
}
</script>
</head>

<body>

<!-- Classes Section Begin -->
    <section class="classes-section spad">
        <div class="container">
            <div class="row">
                <div class="col-lg-12">
                    <div class="section-title">
                        <span>Our Classes</span>
                        <h2>WHAT WE CAN OFFER</h2>
                    </div>
                </div>
            </div>
            <div class="row">
                <div class="col-lg-4 col-md-6">
                    <div class="class-item">
                        <div class="ci-pic">
                            <img src="resources/img/classes/class-1.jpg" alt="">
                        </div>
                        <div class="ci-text">
                            <span>Health</span>
                            <form name="frm1">
                            <h5>1개월 이용권</h5>
                            <input type="hidden" name="course_id" value="1개월 이용권">
                            <input type="hidden" name="member_id" value="${id }">
                            <p>1개월 동안 모든 시설을 이용 하실 수 있습니다.<br>
                           		금액 : 39,000원
                           		</p>
                            <input style="background-color: lightgray;" type="text" name="book_date" class="datepicker" placeholder="시작 날짜를 선택하세요." />
                            <c:if test="${id == null }">
                        	<a href="${contextPath }/needLogin.do" style="font-size: 10px">예약</a>
                        	</c:if>
                        	<c:if test="${id != null }">
                        	<a href="javascript:frm1()" style="font-size: 10px">예약</a>
                        	</c:if>
                        	</form>
                        </div>
                    </div>
                </div>
                <div class="col-lg-4 col-md-6">
                    <div class="class-item">
                        <div class="ci-pic">
                            <img src="resources/img/classes/class-2.jpg" alt="">
                        </div>
                        <div class="ci-text">
                         <span>Health</span>
                          <form name="frm2">
                           <h5>6개월 이용권</h5>
                           <input type="hidden" name="course_id" value="6개월 이용권">
                           <input type="hidden" name="member_id" value="${id }">
                              <p>6개월 동안 모든 시설을 이용 하실 수 있습니다.<br>
                           		금액 : 59,000원
                           		</p>
                            <input style="background-color: lightgray;" type="text" name="book_date" class="datepicker" placeholder="시작 날짜를 선택하세요." />
                        	<c:if test="${id == null }">
                        	<a href="${contextPath }/needLogin.do" style="font-size: 10px">예약</a>
                        	</c:if>
                        	<c:if test="${id != null }">
                        	<a href="javascript:frm2()" style="font-size: 10px">예약</a>
                        	</c:if>
                        	</form>
                        </div>
                    </div>
                </div>
                <div class="col-lg-4 col-md-6">
                    <div class="class-item">
                        <div class="ci-pic">
                            <img src="resources/img/classes/class-3.jpg" alt="">
                        </div>
                        <div class="ci-text">
                         <span>Health</span>
                         <form name="frm3">
                           <h5>12개월 이용권</h5>
                            <input type="hidden" name="course_id" value="12개월 이용권">
                            <input type="hidden" name="member_id" value="${id }">
                              <p>12개월 동안 모든 시설을 이용 하실 수 있습니다.<br>
                           		금액 : 99,000원
                           		</p>
                            <input style="background-color: lightgray;" type="text" name="book_date" class="datepicker" placeholder="시작 날짜를 선택하세요." />
                       		<c:if test="${id == null }">
                        	<a href="${contextPath }/needLogin.do" style="font-size: 10px">예약</a>
                        	</c:if>
                        	<c:if test="${id != null }">
                        	<a href="javascript:frm3()" style="font-size: 10px">예약</a>
                        	</c:if>
                        	</form>
                        </div>
                    </div>
                </div>
                
                <c:choose>
                <c:when test="${courselist != null }">
                <c:forEach var="courselist" items="${courselist }">
                <div class="col-lg-6 col-md-6">
                    <div class="class-item">
                        <div class="ci-pic">
                            <img src="resources/img/classes/class-4.jpg" alt="">
                        </div>
                        <div class="ci-text">
                          <span>${courselist.type }</span>
                           <h5>강사 : ${courselist.id }</h5>
                            <p>내용 : ${courselist.content }<br>
                            금액 : ${courselist.price} 원</p>
                       		<c:if test="${id == null }">
                        	<a href="${contextPath }/needLogin.do" style="font-size: 10px">예약</a>
                        	</c:if>
                        	<c:if test="${id != null }">
                        	<a href="${contextPath }/book.do" style="font-size: 10px">예약</a>
                        	</c:if>
                        </div>
                    </div>
                </div>
                </c:forEach>
                </c:when>
				</c:choose>
            </div>
        </div>
    </section>
    <!-- ChoseUs Section End -->
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