<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
    isELIgnored="false" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>    
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%
  request.setCharacterEncoding("UTF-8");
%> 
<c:set var="contextPath"  value="${pageContext.request.contextPath}"  />

<!DOCTYPE html>
<html>
<head>
  <meta charset="UTF-8">
<title>헤더</title>
 <style type="text/css">
 .login{ color: white; font-size:13pt;}
 .login:hover { color: orange;}
 .nav-menu ul li a{
 	font-family: "Gothic","고딕";
 	font-size: 15px;
 }
 </style>
</head>
<body>
<!-- Page Preloder -->
    <div id="preloder">
        <div class="loader"></div>
    </div>

    <!-- Offcanvas Menu Section Begin -->
    <div class="offcanvas-menu-overlay"></div>
    <div class="offcanvas-menu-wrapper">
        <div class="canvas-close">
            <i class="fa fa-close"></i>
        </div>
        <div class="canvas-search search-switch">
            <i class="fa fa-search"></i>
        </div>
        <nav class="canvas-menu mobile-menu">
            <ul>
                <li><a href="${contextPath }/main.do">Home</a></li>
                <li><a href="./about-us.jsp">About Us</a></li>
                <li><a href="./classes.jsp">Classes</a></li>
                <li><a href="./services.jsp">Services</a></li>
                <li><a href="${contextPath }/team.do">Our Team</a></li>
                <li><a href="#">Pages</a>
                    <ul class="dropdown">
                        <li><a href="./about-us.jsp">About us</a></li>
                        <li><a href="./class-timetable.jsp">Classes timetable</a></li>
                        <li><a href="./bmi-calculator.jsp">Bmi calculate</a></li>
                        <li><a href="./team.jsp">Our team</a></li>
                        <li><a href="./gallery.jsp">Gallery</a></li>
                        <li><a href="./blog.jsp">Our blog</a></li>
                        <li><a href="./404.jsp">404</a></li>
                    </ul>
                </li>
                <li><a href="${contextPath }/contact.do">Contact</a></li>
            </ul>
        </nav>
        <div id="mobile-menu-wrap"></div>
        <div class="canvas-social">
            <a href="#"><i class="fa fa-facebook"></i></a>
            <a href="#"><i class="fa fa-twitter"></i></a>
            <a href="#"><i class="fa fa-youtube-play"></i></a>
            <a href="#"><i class="fa fa-instagram"></i></a>
        </div>
    </div>
    <!-- Offcanvas Menu Section End -->
                        
    <!-- Header Section Begin -->
    <header class="header-section">
        <div class="container-fluid">
            <div class="row">
                <div class="col-lg-3">
                    <div class="logo">
                        <a href="./main.do">
                            <img src="resources/img/logo2.png" alt=""> </a>
                    </div>
                </div>
                <div class="col-lg-6">
                    <nav class="nav-menu">
                        <ul>
                            <li><a href="${contextPath }/main.do">홈</a></li>
                            <li><a href="${contextPath }/about.do">소개</a>
                              <ul class="dropdown">
                                    <li><a href="${contextPath }/body.do">보디빌딩</a></li>
                                    <li><a href="${contextPath }/yoga.do">요가</a></li>
                                    <li><a href="${contextPath }/pilates.do">필라테스</a></li>
                                    <li><a href="${contextPath }/pt.do">퍼스널 트레이닝</a></li>
                                </ul>
                                </li>
                            <li><a href="${contextPath }/class.do">커리큘럼</a></li>
                            <li><a href="${contextPath }/book.do">예약페이지</a></li>
                            <li><a href="${contextPath }/team.do">팀</a></li>
                            <li><a href="${contextPath }/blog.do">공지사항</a></li>
							<li><a href="${contextPath }/contact.do">찾아오시는길</a></li>
                        </ul>
                    </nav>
                </div>
                <div class="col-lg-3">
                    <div class="top-option">
                        <div class="to-search search-switch">
                          <c:choose>
                          		<c:when test="${id == 'admin'}">
                            	     <a class="login" href="${contextPath }/myPage.do">ADMINPAGE</a>&nbsp;&nbsp;
                            	     <a class="login" href="${contextPath }/logout.do">LOGOUT</a>
                          		</c:when>
                            	<c:when test="${loginType == 'master'}">
                            	     <a class="login" href="${contextPath }/myPage.do">MASTERPAGE</a>&nbsp;&nbsp;
                            	     <a class="login" href="${contextPath }/logout.do">LOGOUT</a>
                          		</c:when>
                          		<c:when test="${loginType == 'normal'}">
                            	     <a class="login" href="${contextPath }/myPage.do">MYPAGE</a>&nbsp;&nbsp;
                            	     <a class="login" href="${contextPath }/logout.do">LOGOUT</a>
                          		</c:when>
                          		<c:otherwise>
                          			 <a class="login" href="${contextPath }/memberForm.do">JOIN</a>
                          		</c:otherwise>
                            </c:choose>
                        </div>
                        <div class="to-social">
                            <a href="#"><i class="fa fa-facebook"></i></a>
                            <a href="#"><i class="fa fa-twitter"></i></a>
                            <a href="#"><i class="fa fa-youtube-play"></i></a>
                            <a href="#"><i class="fa fa-instagram"></i></a>
                        </div>
                    </div>
                </div>
            </div>
            <div class="canvas-open">
                <i class="fa fa-bars"></i>
            </div>
        </div>
    </header>
    <!-- Header End -->

</body>
</html>