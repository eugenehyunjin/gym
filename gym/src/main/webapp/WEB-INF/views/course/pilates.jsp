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
                            <span>필라테스</span>
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
                            <img src="resources/img/pilates.jpg" alt="">
                        </div>
                        <div class="cd-text">
                            <div class="cd-single-item">
                                <h3>pilates</h3>
                                <p>동양의 요가와 선(禪), 고대 로마 및 그리스에서 행해지던 양생법 등을 접목하여 만든 것으로 반복된 동작을 중심으로 
                                이루어지는 신체 단련 운동이다. 육체적으로 단련시킨 몸을 이완하고 이를 통해 활력을 얻을 수 있도록 하는 것이 목표이며 
                                이 목표를 달성하기 위해 동양적인 기운의 흐름을 도입하였다. 그러므로 단순한 스트레칭이라고 볼 수 없고 일부 정신 
                                수양적 특성을 보유한 것으로 여겨진다.

								필라테스를 창시한 사람은 독일의 스포츠 연구가인 요제프 필라테스라는 사람이다. 
								그는 어렸을 때 병을 앓아 몸이 허약했는데 건강을 위해 다이빙, 스키 등의 운동을 
								하게 되어 성장한 다음에는 체육교사로 활동하게 되었다. 제1차 세계대전 때 램커스터 
								포로수용소에서 인턴으로 근무하면서 포로들의 건강을 위하여 다양한 운동 방법을 고안하였는데 
								이것이 필라테스의 원형이 되었다. 미국으로 건너간 그는 필라테스를 보급하기에 힘썼고 
								일반인들에게 널리 보급되기에 이르렀다.
												</p>
                            </div>
                            <div class="cd-single-item">
                                <h3>Trainer</h3>
                                <p>서윤정 트레이너
                                	필라테스는 재활을 목적으로 만들어진 운동방법이기 때문에 풍부한 의학적인 경험을 바탕으로
									기존의 필라테스를 한 단계 더 전문적으로 체계화 시키기 위해 노력하고 있습니다.
									현재 물리치료사들을 위한 도수치료 교육과 필라테스 지도자를 위한 진단 및 평가 방법,
									연부조직에 대한 치료방법, Medical Exercise등을 가르치고 있습니다. 
                                </p>
                            </div>
                        </div>
                        <div class="cd-trainer">
                            <div class="row">
                                <div class="col-md-6">
                                    <div class="cd-trainer-pic">
                                        <img src="resources/img/team/team-5.jpg" alt="">
                                    </div>
                                </div>
                                <div class="col-md-6">
                                    <div class="cd-trainer-text">
                                        <div class="trainer-title">
                                            <h4>Yoon Jeong</h4>
                                            <span>Pilates Trainer</span>
                                        </div>
                                        <div class="trainer-social">
                                            <a href="#"><i class="fa fa-facebook"></i></a>
                                            <a href="#"><i class="fa fa-twitter"></i></a>
                                            <a href="#"><i class="fa fa-youtube-play"></i></a>
                                            <a href="#"><i class="fa fa-instagram"></i></a>
                                            <a href="#"><i class="fa  fa-envelope-o"></i></a>
                                        </div>
                                        <p>필라테스는 재활을 목적으로 만들어진 운동방법이기 때문에 풍부한 의학적인 경험을 바탕으로
									기존의 필라테스를 한 단계 더 전문적으로 체계화 시키기 위해 노력하고 있습니다. </p>
                                        <ul class="trainer-info">
                                            <li><span>Age</span>35</li>
                                            <li><span>Weight</span>45kg</li>
                                            <li><span>Height</span>171cm</li>
                                            <li><span>Occupation</span>no-founder</li>
                                        </ul>
                                        <p>필라테스는 재활을 목적으로 만들어진 운동방법이기 때문에 풍부한 의학적인 경험을 바탕으로
									기존의 필라테스를 한 단계 더 전문적으로 체계화 시키기 위해 노력하고 있습니다.  </p>
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
                        <a href="https://www.xexymix.com/"><div class="so-banner set-bg" data-setbg="resources/img/jexi.jpg">
                            <h5>AD</h5>
                        </div></a>
                    </div>
                </div>
            </div>
        </div>
    </section>
    <!-- Class Details Section End -->
    
</body>
</html>