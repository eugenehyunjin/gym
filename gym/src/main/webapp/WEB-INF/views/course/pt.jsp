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
<title></title>
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
                            <a href="./index.html">클래스</a>
                            <span>퍼스널 트레이닝</span>
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
            <div class="row">
                <div class="col-lg-8">
                    <div class="class-details-text">
                        <div class="cd-pic">
                            <img src="resources/img/pt.jpg" alt="">
                        </div>
                        <div class="cd-text">
                            <div class="cd-single-item">
                                <h3>Personal Training</h3>
                                <p>일대일 맞춤운동은 [피티](P.T.) 또는 [퍼스널 트레이닝](Personal Training)을 가리키는 순화어이다. 
                                ‘퍼스널 트레이닝’과 ‘피티’는 운동 지도자가 강습생을 대상으로 1대 1로 운동 방법을 가르쳐 주고 건강 관리를 
                                책임지는 프로그램을 가리킨다.</p>
                            </div>
                            <div class="cd-single-item">
                                <h3>Trainer</h3>
                                <p>한지민 트레이너
                                	대한 요가 협회 위원이며, 현재 프라이빗 짐의 대표 요가 트레이너입니다. 인도식 요가의 마스터이며, 현재 지역별 요가 클래스의 
                                	커리큘럼과 동작 연구원입니다. 
                                </p>
                            </div>
                        </div>
                        <div class="cd-trainer">
                            <div class="row">
                                <div class="col-md-6">
                                    <div class="cd-trainer-pic">
                                        <img src="resources/img/team/team-2.jpg" alt="">
                                    </div>
                                </div>
                                <div class="col-md-6">
                                    <div class="cd-trainer-text">
                                        <div class="trainer-title">
                                            <h4>Ji Min Han</h4>
                                            <span>Personal Trainer</span>
                                        </div>
                                        <div class="trainer-social">
                                            <a href="#"><i class="fa fa-facebook"></i></a>
                                            <a href="#"><i class="fa fa-twitter"></i></a>
                                            <a href="#"><i class="fa fa-youtube-play"></i></a>
                                            <a href="#"><i class="fa fa-instagram"></i></a>
                                            <a href="#"><i class="fa  fa-envelope-o"></i></a>
                                        </div>
                                        <p>대한 요가 협회 위원이며, 현재 프라이빗 짐의 대표 요가 트레이너입니다. 인도식 요가의 마스터이며, 현재 지역별 요가 클래스의 
                                	커리큘럼과 동작 연구원입니다.  </p>
                                        <ul class="trainer-info">
                                            <li><span>Age</span>35</li>
                                            <li><span>Weight</span>148lbs</li>
                                            <li><span>Height</span>171cm</li>
                                            <li><span>Occupation</span>no-founder</li>
                                        </ul>
                                        <p>대한 요가 협회 위원이며, 현재 프라이빗 짐의 대표 요가 트레이너입니다. 인도식 요가의 마스터이며, 현재 지역별 요가 클래스의 
                                	커리큘럼과 동작 연구원입니다.  </p>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="col-lg-4 col-md-8">
                    <div class="sidebar-option">
                        <div class="so-categories">
                            <h5 class="title">카테고리</h5>
                            <ul>
                               <li><a href="${contextPath }/yoga.do">Yoga </a></li>
                               <li><a href="${contextPath }/body.do">Body buiding </a></li>
                               <li><a href="${contextPath }/pt.do">Personal Training </a></li>
                               <li><a href="${contextPath }/pilates.do">Pilates </a></li>
                            </ul>
                        </div>
                        <div class="so-latest">
                            <h5 class="title">공지사항</h5>
                            <div class="latest-large set-bg" data-setbg="resources/img/letest-blog/latest-1.jpg">
                                <div class="ll-text">
                                    <h5><a href="#">This Japanese Way of Making Iced Coffee Is a Game...</a></h5>
                                    <ul>
                                        <li>Aug 20, 2019</li>
                                        <li>20 Comment</li>
                                    </ul>
                                </div>
                            </div>
                            <div class="latest-item">
                                <div class="li-pic">
                                    <img src="resources/img/letest-blog/latest-2.jpg" alt="">
                                </div>
                                <div class="li-text">
                                    <h6><a href="#">Grilled Potato and Green Bean Salad</a></h6>
                                    <span class="li-time">Aug 15, 2019</span>
                                </div>
                            </div>
                            <div class="latest-item">
                                <div class="li-pic">
                                    <img src="resources/img/letest-blog/latest-3.jpg" alt="">
                                </div>
                                <div class="li-text">
                                    <h6><a href="#">The $8 French Rosé I Buy in Bulk Every Summer</a></h6>
                                    <span class="li-time">Aug 15, 2019</span>
                                </div>
                            </div>
                            <div class="latest-item">
                                <div class="li-pic">
                                    <img src="resources/img/letest-blog/latest-4.jpg" alt="">
                                </div>
                                <div class="li-text">
                                    <h6><a href="#">Ina Garten's Skillet-Roasted Lemon Chicken</a></h6>
                                    <span class="li-time">Aug 15, 2019</span>
                                </div>
                            </div>
                            <div class="latest-item">
                                <div class="li-pic">
                                    <img src="resources/img/letest-blog/latest-5.jpg" alt="">
                                </div>
                                <div class="li-text">
                                    <h6><a href="#">The Best Weeknight Baked Potatoes, 3 Creative Ways</a></h6>
                                    <span class="li-time">Aug 15, 2019</span>
                                </div>
                            </div>
                        </div>
                        <a href="https://www.xexymix.com/"><div class="so-banner set-bg" data-setbg="resources/img/bodyjexi.jpg">
                            <h5>xexymix 트레이닝복 보러가기</h5>
                        </div></a>
                    </div>
                </div>
            </div>
        </div>
    </section>
    <!-- Class Details Section End -->
    
</body>
</html>