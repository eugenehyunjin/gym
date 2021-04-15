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
		var id = document.getElementById("id");
		var pwd = document.getElementById("pwd");
		var frm = document.frm;
		if(id==null){
			alert('아이디를 입력해주세요');
		}else if(pwd==null){
			alert('비밀번호를 입력해주세요');
		}else{
			frm.method = 'get';
			frm.action = '/home.do';
			frm.submit();
		}
	}

</script>
<style type="text/css">
.primary-btn {
	margin-top: 20px;	
}

</style>

</head>
<body>
<!-- Hero Section Begin -->
<form name="frm">
    <section class="hero-section">
        <div class="hs-slider owl-carousel">
            <div class="hs-item set-bg" data-setbg="resources/img/hero/hero1.jpg">
                <div class="container">
                    <div class="row">
                        <div class="col-lg-6 offset-lg-6">
                            <div class="hi-text">
                                <span>Shape your body</span>
                                <h1>Be <strong>strong</strong> training hard</h1>
                                
                                <div class="hi-login">
	                                <h3>ID</h3>
	                                	<input type="text"  name="id"/>
	                                <h3>PW</h3>
	                                	<input type="password"  name="pwd" />
                                	<div>
                                		<input type="button" class="primary-btn" value="LOGIN" onclick="checkid()">
                                	</div>
                                </div>
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
     </form>
    <!-- Hero Section End -->

</body>

</html>