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
                <li><a href="./team.jsp">Our Team</a></li>
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
                            <img src="resources/img/logo_pg.png" alt=""> </a>
                    </div>
                </div>
                <div class="col-lg-6">
                    <nav class="nav-menu">
                        <ul>
                            <li class="active"><a href="${contextPath }/main.do">Home</a></li>
                            <li><a href="./about-us.jsp">About Us</a></li>
                            <li><a href="./class-details.jsp">Classes</a></li>
                            <li><a href="./services.jsp">Services</a></li>
                            <li><a href="./team.jsp">Our Team</a></li>
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
                </div>
                <div class="col-lg-3">
                    <div class="top-option">
                        <div class="to-search search-switch">
                            <i class="fa fa-search"></i>
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