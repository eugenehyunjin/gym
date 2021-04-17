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
<title>메인페이지</title>
<style type="text/css">
.ment{
	font-size: 25px; 
	color: white;
}
</style>
<script src="http://code.jquery.com/jquery-latest.js"></script>
<script type="text/javascript">
	
	function checkid(){
		let id = document.getElementsByName("id")[0].value;
		let pwd = document.getElementsByName("pwd")[0].value;
		var frm = document.frm;
		
		
		if(id==null || id == ''){
			alert('아이디를 입력해주세요');
			document.getElementsByName('id')[0].focus();
		}else if(pwd==null || pwd == ''){
			alert('비밀번호를 입력해주세요');
			document.getElementsByName('pwd')[0].focus();
		}else{
			frm.method = 'get';
			frm.action = '${contextPath}/checklogin.do';
			frm.submit();
		}
	}

	function memberForm(){
		location.href='${contextPath}/memberForm.do';	
	}
</script>
</head>
<body>
<!-- Hero Section Begin -->
    <section class="hero-section">
        <div class="hs-slider owl-carousel">
            <div class="hs-item set-bg" data-setbg="resources/img/hero/hero1.jpg">
                <div class="container">
                    <div class="row">
                        <div class="col-lg-6 offset-lg-6">
                            <div class="hi-text">
                                <span>Shape your body</span>
                                <h1>Be <strong>strong</strong> training hard</h1>
                                <a href="${contextPath }/contact.do" class="primary-btn">contact</a>
                               <!-- <div class="hi-login">
	                                <h3>ID</h3>
	                                	<input type="text"  name="id"/>
	                                <h3>PW</h3>
	                                	<input type="password"  name="pwd" />
                                	<div>
                                		<input type="button" class="primary-btn" value="LOGIN" onclick="checkid()">
                                	</div>
                                </div> -->
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <div class="hs-item set-bg" data-setbg="resources/img/hero/hero2.jpg">
                <div class="container">
                    <div class="row">
                        <div class="col-lg-6 offset-lg-6">
                            <div class="hi-text">
                                <span>Shape your body</span>
                                <h1>Be <strong>strong</strong> training hard</h1>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>
    
    <section class="blog-details-section spad">
        <div class="container">
            <div class="row">
                <div class="col-lg-8 p-0 m-auto">
                    <div class="blog-details-text">
						<div class="row">
						  <div class="col-lg-6">
						  	<c:choose>
                            	<c:when test="${id != null}">
                            	   	<div class="leave-comment">
							  			<h5>welcome!</h5>
							  			<form name="frm">
								  			<p class="ment">${id }님을 환영합니다.</p>
								  			<p class="ment">저희 프라이빗 짐에서 더욱 건강하고 아름다운 자신을 찾아 보세요!</p>
								  			<button type="button" onclick="location.href='${contextPath }/myPage.do'">마이페이지</button>
		                                        <p></p>
		                                    <button type="button" onclick="location.href='${contextPath }/logout.do'">로그아웃</button>
	                                    </form>
						  			</div>
                          		</c:when>
                          		<c:otherwise>
	                          		<div class="leave-comment">
	                                    <h5>LOGIN</h5>
	                                    <form name="frm">
	                                        <input type="text" placeholder="ID" name="id">
	                                        <input type="password" placeholder="PASSWORD" name="pwd">
	                                        <!-- <button type="submit" onclick="checkid()">Submit</button> -->
	                                        <button type="button" onclick="checkid()">로그인</button>
	                                        <p></p>
	                                        <button type="button" onclick="memberForm()">회원가입</button>
	                                    </form>
	                                </div>
                          		</c:otherwise>
                            </c:choose>
                            </div>
                            <div class="col-lg-6">
                                <div class="comment-option">
                                    <h5 class="co-title">This Month Events</h5>
                                    <div class="co-item">
                                        <div class="co-widget">
                                            <a href="#"><i class="fa fa-heart-o"></i></a>
                                            <a href="#"><i class="fa fa-share-square-o"></i></a>
                                        </div>
                                        <div class="co-pic">
                                            <img src="resources/img/blog/details/comment-1.jpg" alt="">
                                            <h5>학생 할인</h5>
                                        </div>
                                        <div class="co-text">
                                            <p>이번달 학생들을 위한 이벤트! 학생증 지참시 20% 할인과 동시에 이벤트 경품 증정!</p>
                                        </div>
                                    </div>
                                    <div class="co-item">
                                        <div class="co-widget">
                                            <a href="#"><i class="fa fa-heart-o"></i></a>
                                            <a href="#"><i class="fa fa-share-square-o"></i></a>
                                        </div>
                                        <div class="co-pic">
                                            <img src="resources/img/blog/details/comment-2.jpg" alt="">
                                            <h5>추첨 이벤트</h5>
                                        </div>
                                        <div class="co-text">
                                            <p>출석율 80% 달성시 추첨을매 통해 홈트 기구 세트를 증정해 드립니다!</p>
                                        </div>
                                    </div>
                                    <div class="co-item">
                                        <div class="co-widget">
                                            <a href="#"><i class="fa fa-heart-o"></i></a>
                                            <a href="#"><i class="fa fa-share-square-o"></i></a>
                                        </div>
                                        <div class="co-pic">
                                            <img src="resources/img/blog/details/comment-3.jpg" alt="">
                                            <h5>단백질 pro500s 이벤트</h5>
                                        </div>
                                        <div class="co-text">
                                            <p>저희 헬스장에서 단백질 pro500s 구매하신 모든 회원님들에게 추가로 10% 할인해 드립니다.</p>
                                        </div>
                                    </div>
                                </div>
                            </div>
                          
                        </div>
                       </div>
                      </div>
                    </div>
                 </div>
          </section> 
                        
                        
    <!-- Hero Section End -->

</body>

</html>