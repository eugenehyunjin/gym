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
	.gym_type {
		width: 300px;
	}
	h3 {
		color: white;
		margin-right:50px;
		letter-spacing:15px;
	}
	
	.tt_social a {
		text-align: center;
	}
	
	
</style>
</head>
<body>

    <!-- Team Section Begin -->
    <section class="team-section team-page spad">
        <div class="container">
            <div class="row">
                <div class="col-lg-12">
                    <div class="team-title">
                        <div class="section-title">
                            <span>Our Team</span>
                            <h2>TRAIN WITH EXPERTS</h2>
                        </div>
                <!--         <a href="#" class="primary-btn btn-normal appoinment-btn">예약하기</a> -->
                    </div>
                </div>
            </div>
            <div class="row">
            <div class="gym_type"><h3>HEALTH</h3></div>
				<div class="col-lg-4 col-sm-6">
                    <div class="ts-item set-bg" data-setbg="resources/img/team/team-1.jpg">
                        <div class="ts_text">
                            <h4>Athart Rachel</h4>
                            <span>Gym Trainer</span>
                            <div class="tt_social">
                            	<a href="${contextPath }/class.do" class="primary-btn btn-normal appoinment-btn">예약하기</a>
     <!--                            <a href="#"><i class="fa fa-facebook"></i></a>
                                <a href="#"><i class="fa fa-twitter"></i></a>
                                <a href="#"><i class="fa fa-youtube-play"></i></a>
                                <a href="#"><i class="fa fa-instagram"></i></a>
                                <a href="#"><i class="fa  fa-envelope-o"></i></a>       -->
                            </div>
                        </div>
                    </div>
                </div>
                <div class="col-lg-4 col-sm-6">
                    <div class="ts-item set-bg" data-setbg="resources/img/team/team-2.jpg">
                        <div class="ts_text">
                            <h4>Athart Rachel</h4>
                            <span>Gym Trainer</span>
                            <div class="tt_social">
								<a href="${contextPath }/class.do" class="primary-btn btn-normal appoinment-btn">예약하기</a>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="gym_type"><h3>PILATES</h3></div>
                <div class="col-lg-4 col-sm-6">
                    <div class="ts-item set-bg" data-setbg="resources/img/team/team-3.jpg">
                        <div class="ts_text">
                            <h4>Athart Rachel</h4>
                            <span>Gym Trainer</span>
                            <div class="tt_social">
								<a href="${contextPath }/class.do" class="primary-btn btn-normal appoinment-btn">예약하기</a>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="col-lg-4 col-sm-6">
                    <div class="ts-item set-bg" data-setbg="resources/img/team/team-4.jpg">
                        <div class="ts_text">
                            <h4>Athart Rachel</h4>
                            <span>Gym Trainer</span>
                            <div class="tt_social">
								<a href="${contextPath }/class.do" class="primary-btn btn-normal appoinment-btn">예약하기</a>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="gym_type"><h3>YOGA</h3></div>
                <div class="col-lg-4 col-sm-6">
                    <div class="ts-item set-bg" data-setbg="resources/img/team/team-5.jpg">
                        <div class="ts_text">
                            <h4>Athart Rachel</h4>
                            <span>Gym Trainer</span>
                            <div class="tt_social">
								<a href="${contextPath }/class.do" class="primary-btn btn-normal appoinment-btn">예약하기</a>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="col-lg-4 col-sm-6">
                    <div class="ts-item set-bg" data-setbg="resources/img/team/team-6.jpg">
                        <div class="ts_text">
                            <h4>Athart Rachel</h4>
                            <span>Gym Trainer</span>
                            <div class="tt_social">
								<a href="${contextPath }/class.do" class="primary-btn btn-normal appoinment-btn">예약하기</a>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>
    <!-- Team Section End -->

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