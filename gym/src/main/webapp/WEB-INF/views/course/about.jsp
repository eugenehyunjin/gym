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
                        <h2>About Us</h2>
                        <div class="bt-option">
                            <a href="${contextPath }/main.do">Home</a>
                            <span>About Us</span>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>
    <!-- Breadcrumb Section End -->

    <!-- Services Section Begin -->
    <section class="services-section spad">
        <div class="container">
            <div class="row">
                <div class="col-lg-12">
                    <div class="section-title">
                        <span>What we do?</span>
                        <h2>여러분의 한계에 도전하세요!</h2>
                    </div>
                </div>
            </div>
            <div class="row">
                <div class="col-lg-3 order-lg-1 col-md-6 p-0">
                    <div class="ss-pic">
                        <img src="resources/img/services/services-1.jpg" alt="">
                    </div>
                </div>
                <div class="col-lg-3 order-lg-2 col-md-6 p-0">
                    <div class="ss-text">
                        <h4>퍼스널 트레이닝</h4>
                        <p>체계화된 커리큘럼과 최고의 트레이너들이 제공하는 1대1 트레이닝 프로그램 입니다.</p>
                        <a href="${contextPath }/pt.do">자세히</a>
                    </div>
                </div>
                <div class="col-lg-3 order-lg-3 col-md-6 p-0">
                    <div class="ss-pic">
                        <img src="resources/img/services/services-2.jpg" alt="">
                    </div>
                </div>
                <div class="col-lg-3 order-lg-4 col-md-6 p-0">
                    <div class="ss-text">
                        <h4>요가</h4>
                        <p>정신과 육체를 정화시키고 몸 전체의 힘을 올려주는 인도식 요가 프로그램입니다.</p>
                        <a href="${contextPath }/yoga.do">자세히</a>
                    </div>
                </div>
                <div class="col-lg-3 order-lg-8 col-md-6 p-0">
                    <div class="ss-pic">
                        <img src="resources/img/services/services-4.jpg" alt="">
                    </div>
                </div>
                <div class="col-lg-3 order-lg-7 col-md-6 p-0">
                    <div class="ss-text second-row">
                        <h4>보디빌딩</h4>
                        <p>인체의 아름다움을 표현하며 근육의 성장과 아름다운 몸매를 갖게 해주는 트레이닝 프로그램입니다.</p>
                        <a href="${contextPath }/body.do">자세히</a>
                    </div>
                </div>
                <div class="col-lg-3 order-lg-6 col-md-6 p-0">
                    <div class="ss-pic">
                        <img src="resources/img/services/services-3.jpg" alt="">
                    </div>
                </div>
                <div class="col-lg-3 order-lg-5 col-md-6 p-0">
                    <div class="ss-text second-row">
                        <h4>필라테스</h4>
                        <p>인체의 유연함과 균형을 잡아 최고의 건강상태로 만들어주며 올바른 자세 교정을 통해 균형잡힌 몸매로 만들어주는 프로그램입니다.</p>
                        <a href="${contextPath }/pilates.do">자세히</a>
                    </div>
                </div>
            </div>
        </div>
    </section>
    <!-- Services Section End -->

    <!-- Banner Section Begin -->
    <section class="banner-section set-bg" data-setbg="resources/img/banner-bg.jpg">
        <div class="container">
            <div class="row">
                <div class="col-lg-12 text-center">
                    <div class="bs-text service-banner">
                        <h2>Exercise until the body obeys.</h2>
                        <div class="bt-tips">지금 프라이빗 짐의 소개 영상을 확인해 보세요!</div>
                        <a href="https://www.youtube.com/watch?v=EzKkl64rRbM" class="play-btn video-popup"><i
                                class="fa fa-caret-right"></i></a>
                    </div>
                </div>
            </div>
        </div>
    </section>
    <!-- Banner Section End -->

    <!-- Pricing Section Begin -->
    <section class="pricing-section service-pricing spad">
        <div class="container">
            <div class="row">
                <div class="col-lg-12">
                    <div class="section-title">
                        <span>Our Plan</span>
                        <h2>지금 여러분이 필요한 기간을 선택하세요!</h2>
                    </div>
                </div>
            </div>
            <div class="row justify-content-center">
                <div class="col-lg-4 col-md-8">
                    <div class="ps-item">
                        <h3>Class drop-in</h3>
                        <div class="pi-price">
                            <h2>39.000원</h2>
                            <span>1개월 코스</span>
                        </div>
                        <ul>
                            <li>Free 단체 riding</li>
                            <li>모든 최신식 머신 사용</li>
                            <li>Personal trainer</li>
                            <li>다이어트 단체 classes</li>
                            <li>Month to mouth</li>
                            <li>No time restriction</li>
                        </ul>
                        <a href="${contextPath }/class.do" class="primary-btn pricing-btn">지금 예약</a>
                        <a href="#" class="thumb-icon"><i class="fa fa-picture-o"></i></a>
                    </div>
                </div>
                <div class="col-lg-4 col-md-8">
                    <div class="ps-item">
                        <h3>12 Month unlimited</h3>
                        <div class="pi-price">
                            <h2>99.000원</h2>
                            <span>12개월 코스</span>
                        </div>
                        <ul>
                            <li>Free 단체 riding</li>
                            <li>모든 최신식 머신 사용</li>
                            <li>Personal trainer</li>
                            <li>다이어트 단체 classes</li>
                            <li>Month to mouth</li>
                            <li>No time restriction</li>
                        </ul>
                        <a href="${contextPath }/class.do" class="primary-btn pricing-btn">지금 예약</a>
                        <a href="#" class="thumb-icon"><i class="fa fa-picture-o"></i></a>
                    </div>
                </div>
                <div class="col-lg-4 col-md-8">
                    <div class="ps-item">
                        <h3>6 Month unlimited</h3>
                        <div class="pi-price">
                            <h2>59.000원</h2>
                            <span>6개월 코스</span>
                        </div>
                        <ul>
                         	<li>Free 단체 riding</li>
                            <li>모든 최신식 머신 사용</li>
                            <li>Personal trainer</li>
                            <li>다이어트 단체 classes</li>
                            <li>Month to mouth</li>
                            <li>No time restriction</li>
                        </ul>
                        <a href="${contextPath }/class.do" class="primary-btn pricing-btn">지금 예약</a>
                        <a href="#" class="thumb-icon"><i class="fa fa-picture-o"></i></a>
                    </div>
                </div>
            </div>
        </div>
    </section>
    <!-- Pricing Section End -->
    
    <!-- Gallery Section Begin -->
    <div class="gallery-section gallery-page">
    		 <div class="row">
                <div class="col-lg-12">
                    <div class="section-title">
                        <span>Photo Zone</span>
                        <h2>최신식 시설을 갖춘 헬스장 갤러리</h2>
                    </div>
                </div>
            </div>
        <div class="gallery">
            <div class="grid-sizer"></div>
            <div class="gs-item grid-wide set-bg" data-setbg="resources/img/gallery/gallery-1.jpg">
                <a href="resources/img/gallery/gallery-1.jpg" class="thumb-icon image-popup"><i class="fa fa-picture-o"></i></a>
            </div>
            <div class="gs-item set-bg" data-setbg="resources/img/gallery/gallery-2.jpg">
                <a href="resources/img/gallery/gallery-2.jpg" class="thumb-icon image-popup"><i class="fa fa-picture-o"></i></a>
            </div>
            <div class="gs-item set-bg" data-setbg="resources/img/gallery/gallery-3.jpg">
                <a href="resources/img/gallery/gallery-3.jpg" class="thumb-icon image-popup"><i class="fa fa-picture-o"></i></a>
            </div>
            <div class="gs-item set-bg" data-setbg="resources/img/gallery/gallery-4.jpg">
                <a href="resources/img/gallery/gallery-4.jpg" class="thumb-icon image-popup"><i class="fa fa-picture-o"></i></a>
            </div>
            <div class="gs-item set-bg" data-setbg="resources/img/gallery/gallery-5.jpg">
                <a href="resources/img/gallery/gallery-5.jpg" class="thumb-icon image-popup"><i class="fa fa-picture-o"></i></a>
            </div>
            <div class="gs-item grid-wide set-bg" data-setbg="resources/img/gallery/gallery-6.jpg">
                <a href="resources/img/gallery/gallery-6.jpg" class="thumb-icon image-popup"><i class="fa fa-picture-o"></i></a>
            </div>
            <div class="gs-item grid-wide set-bg" data-setbg="resources/img/gallery/gallery-7.jpg">
                <a href="resources/img/gallery/gallery-7.jpg" class="thumb-icon image-popup"><i class="fa fa-picture-o"></i></a>
            </div>
            <div class="gs-item set-bg" data-setbg="resources/img/gallery/gallery-8.jpg">
                <a href="resources/img/gallery/gallery-8.jpg" class="thumb-icon image-popup"><i class="fa fa-picture-o"></i></a>
            </div>
            <div class="gs-item set-bg" data-setbg="resources/img/gallery/gallery-9.jpg">
                <a href="resources/img/gallery/gallery-9.jpg" class="thumb-icon image-popup"><i class="fa fa-picture-o"></i></a>
            </div>
        </div>
    </div>
    <!-- Gallery Section End -->

    <!-- Get In Touch Section Begin -->
    <div class="gettouch-section">
        <div class="container">
            <div class="row">
                <div class="col-md-4">
                    <div class="gt-text">
                        <i class="fa fa-map-marker"></i>
                        <p>333 Middle Winchendon Rd, Rindge,<br/> NH 03461</p>
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