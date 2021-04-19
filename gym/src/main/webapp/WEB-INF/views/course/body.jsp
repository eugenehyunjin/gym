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
                            <a href="${contextPath }/about.do">클래스</a>
                            <span>보디빌딩</span>
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
                            <img src="resources/img/hero/hero-1.jpg" alt="">
                        </div>
                        <div class="cd-text">
                            <div class="cd-single-item">
                                <h3>Body buiding</h3>
                                <p>일명 육체미운동이라고도 한다. 체중의 많고 적음에 따라 체급을 나누고 그 체급별로 근육의 모양과 크기, 
                                균형 발달 정도와 대칭 여부, 피부색깔, 그리고 골격과 자세 등을 심사하여 등위 를 결정한다. 
                                보디빌딩은 예로부터 있어 왔지만, 1946년 국제보디빌딩연맹(International Federation of Body Builders, IFBB)이 
                                결성되면서 매년 이 연맹 주최로 세계적인 대회를 개최하고 있다.
								</p>
                            </div>
                            <div class="cd-single-item">
                                <h3>Trainer</h3>
                                <p>이현진 트레이너
                                	10년 이상의 트레이너 경험과 다수 대회 출전의 노하우까지 
                                    항상 회원님이 우선으로 생각하시고 항상 프라이빗 짐을 찾아주시는 
                                    회원님들께 감사하는 마음을 잊지 않으시는 프라이빗 짐 최고의 트레이너!
                                </p>
                            </div>
                        </div>
                        <div class="cd-trainer">
                            <div class="row">
                                <div class="col-md-6">
                                    <div class="cd-trainer-pic">
                                        <img src="resources/img/team/team-3.jpg" alt="">
                                    </div>
                                </div>
                                <div class="col-md-6">
                                    <div class="cd-trainer-text">
                                        <div class="trainer-title">
                                            <h4>Lee Hyun Jin</h4>
                                            <span>Body buiding Trainer</span>
                                        </div>
                                        <div class="trainer-social">
                                            <a href="#"><i class="fa fa-facebook"></i></a>
                                            <a href="#"><i class="fa fa-twitter"></i></a>
                                            <a href="#"><i class="fa fa-youtube-play"></i></a>
                                            <a href="#"><i class="fa fa-instagram"></i></a>
                                            <a href="#"><i class="fa  fa-envelope-o"></i></a>
                                        </div>
                                        <p>10년 이상의 트레이너 경험과 다수 대회 출전의 노하우까지 
                                        항상 회원님이 우선으로 생각하시고 항상 프라이빗 짐을 찾아주시는 
                                        회원님들께 감사하는 마음을 잊지 않으시는 프라이빗 짐 최고의 트레이너!
												 </p>
                                        <ul class="trainer-info">
                                            <li><span>Age</span>35</li>
                                            <li><span>Weight</span>83kg</li>
                                            <li><span>Height</span>182cm</li>
                                            <li><span>Occupation</span>no-founder</li>
                                        </ul>
                                        <p>10년 이상의 트레이너 경험과 다수 대회 출전의 노하우까지 
                                        항상 회원님이 우선으로 생각하시고 항상 프라이빗 짐을 찾아주시는 
                                        회원님들께 감사하는 마음을 잊지 않으시는 프라이빗 짐 최고의 트레이너! </p>
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
                            <h5>xexymix 보러가기</h5>
                        </div></a>
                    </div>
                </div>
            </div>
        </div>
    </section>
    <!-- Class Details Section End -->
    
</body>
</html>