<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" isELIgnored="false"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"  %>
<%
  request.setCharacterEncoding("UTF-8");
%>    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>메인페이지</title>
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
			frm.action = '/#';
			frm.submit();
		}
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
                                <div class="leave-comment">
                                    <h5>LOGIN</h5>
                                    <form name="frm">
                                        <input type="text" placeholder="ID" name="id">
                                        <input type="password" placeholder="PASSWORD" name="pwd">
                                        <button type="button" onclick="checkid()">Submit</button>
                                    </form>
                                </div>
                            </div>
                            <div class="col-lg-6">
                                <div class="comment-option">
                                    <h5 class="co-title">Comment</h5>
                                    <div class="co-item">
                                        <div class="co-widget">
                                            <a href="#"><i class="fa fa-heart-o"></i></a>
                                            <a href="#"><i class="fa fa-share-square-o"></i></a>
                                        </div>
                                        <div class="co-pic">
                                            <img src="resources/img/blog/details/comment-1.jpg" alt="">
                                            <h5>Brandon Kelley</h5>
                                        </div>
                                        <div class="co-text">
                                            <p>Neque porro quisquam est, qui dolorem ipsum dolor sit amet, consectetur,
                                                adipisci velit dolore.</p>
                                        </div>
                                    </div>
                                    <div class="co-item reply-comment">
                                        <div class="co-widget">
                                            <a href="#"><i class="fa fa-heart-o"></i></a>
                                            <a href="#"><i class="fa fa-share-square-o"></i></a>
                                        </div>
                                        <div class="co-pic">
                                            <img src="resources/img/blog/details/comment-2.jpg" alt="">
                                            <h5>Brandon Kelley</h5>
                                        </div>
                                        <div class="co-text">
                                            <p>Neque porro quisquam est, qui dolorem ipsum dolor sit amet, consectetur,
                                                adipisci velit dolore.</p>
                                        </div>
                                    </div>
                                    <div class="co-item">
                                        <div class="co-widget">
                                            <a href="#"><i class="fa fa-heart-o"></i></a>
                                            <a href="#"><i class="fa fa-share-square-o"></i></a>
                                        </div>
                                        <div class="co-pic">
                                            <img src="resources/img/blog/details/comment-3.jpg" alt="">
                                            <h5>Brandon Kelley</h5>
                                        </div>
                                        <div class="co-text">
                                            <p>Neque porro quisquam est, qui dolorem ipsum dolor sit amet, consectetur,
                                                adipisci velit dolore.</p>
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