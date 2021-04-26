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
    });
    
});
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
                            <h5>1개월 이용권</h5>
                            <p>1개월 동안 모든 시설을 이용 하실 수 있습니다.<br>
                           		금액 : 33,000원
                           		</p>
                            <input style="background-color: lightgray;"color="black" type="text" class="datepicker" placeholder="시작 날짜를 선택하세요." />
                            <a href="#" style="font-size: 10px">예약</a>
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
                           <h5>6개월 이용권</h5>
                              <p>6개월 동안 모든 시설을 이용 하실 수 있습니다.<br>
                           		금액 : 66,000원
                           		</p>
                            <input style="background-color: lightgray;"color="black" type="text" class="datepicker" placeholder="시작 날짜를 선택하세요." />
                        	<a href="#" style="font-size: 10px">예약</a>
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
                           <h5>12개월 이용권</h5>
                              <p>12개월 동안 모든 시설을 이용 하실 수 있습니다.<br>
                           		금액 : 99,000원
                           		</p>
                            <input style="background-color: lightgray;"color="black" type="text" class="datepicker" placeholder="시작 날짜를 선택하세요." />
                       		<a href="#" style="font-size: 10px">예약</a>
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
                            <input style="background-color: lightgray;"color="black" type="text" class="datepicker" placeholder="시작 날짜를 선택하세요." />
                       		<a href="#" style="font-size: 10px">예약</a>
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

    

</body>

</html>