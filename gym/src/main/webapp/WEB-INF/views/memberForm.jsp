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
<title>회원 가입 페이지</title>
<script src="http://code.jquery.com/jquery-latest.js"></script>
<script type="text/javascript">
	
	function fnempty(){
		let id = document.getElementsByName("id")[0].value;
		let pwd = document.getElementsByName("pwd")[0].value;
		let pw2 = document.getElementsByName("pw2")[0].value;
		let name = document.getElementsByName("name")[0].value;
		let birth_y = document.getElementsByName("birth_y")[0].value;
		let birth_m = document.getElementsByName("birth_m")[0].value;
		let birth_d = document.getElementsByName("birth_d")[0].value;
		let gender = document.getElementsByName("gender")[0].value;
		let tel = document.getElementsByName("tel")[0].value;
		let email = document.getElementsByName("email")[0].value;
		var frm = document.frm;
		
		
		if(id==null || id == ''){
			alert('아이디를 입력해주세요');
			document.getElementsByName('id')[0].focus();
		}else if(pwd==null || pwd == ''){
			alert('비밀번호를 입력해주세요');
			document.getElementsByName('pwd')[0].focus();
		}else if(pw2==''){
			alert('비밀번호 재확인에 입력해주세요.');
			document.getElementsByName('pw2')[0].focus();
		}else if(name==null || name == ''){
			alert('이름을 입력해주세요');
			document.getElementsByName('name')[0].focus();
		}else if(birth_y==null || birth_y == ''){
			alert('생일 년도를 입력해주세요');
			document.getElementsByName('birth_y')[0].focus();
		}else if(birth_m==null || birth_m == ''){
			alert('생일 월을 입력해주세요');
			document.getElementsByName('birth_m')[0].focus();
		}else if(birth_d==null || birth_d == ''){
			alert('생일 일을 입력해주세요');
			document.getElementsByName('birth_d')[0].focus();
		}else if(gender==null || gender == ''){
			alert('성별을 선택해주세요');
			document.getElementsByName('gender')[0].focus();
		}else if(tel==null || tel == ''){
			alert('전화번호를 입력해주세요');
			document.getElementsByName('tel')[0].focus();
		}else if(email==null || email == ''){
			alert('이메일을 입력해주세요');
			document.getElementsByName('email')[0].focus();
		}else{
			frm.method = 'post';
			frm.action = '${contextPath}/join.do';
			frm.submit();
		}
	}
	
	function fncancle(){
		location.href='${contextPath }/main.do';
	} 
	
</script>
<style>
	.blog-details-section {
		padding-top: 10px;
	}
	
	.frm {
		margin-top: 50px;
	}
	
	h2{
		font-weight: 1000;
	}
	
	h2, h3{
		color: white;
		margin-bottom: 10px;
		margin-top: 30px;
	}
	
	select, option {
		background: #151515;
	}
	
	.birth_yy, .birth_mm, .birth_dd {
		display: inline-block;
		width: 30%;
		margin-right: 22px;
	}
	
	.birth_mm select, .birth_dd select {
		width: 240px;
		height: 45px;
		back-ground: none;
	}
	
	.gender {
		height: 45px;
	}
	
	.col-lg-12 .leave-comment input, select, option {
		font-size: 20px;
		color: white;
	}
	
	.btn {
		clear:both;
		width:100%;
		display: inline-flex;
		padding:50px;
		text-align:center;
	}
	
	.btn input {
		margin: 50px;
		padding: 10px; 
	}
</style>


</head>
<body>

<!-- Breadcrumb Section Begin -->
	<section class="breadcrumb-section set-bg" data-setbg="resources/img/breadcrumb-bg.jpg">
		<div class="container">
			<div class="row">
				<div class="col-lg-12 text-center">
					<div class="breadcrumb-text">
						<h2>Membership</h2>
						<div class="bt-option">
							<a href="./main.do">Home</a>
							<a href="#">Pages</a>
							<span>Membership</span>
						</div>
					</div>
				</div>
			</div>
		</div>
    </section>
    <!-- Breadcrumb Section End -->
    
    
	<section class="blog-details-section spad">
		<div class="container">
			<div class="row">
				<div class="col-lg-8 p-0 m-auto">
					<div class="blog-details-text">
						<div class="row">
							<div class="col-lg-12">
								<div class="leave-comment">
									<h2 style="color: #f36100;">MEMBERSHIP</h2>
									
									<form name="frm" class="frm">
										<h3>아이디</h3>
                                			<input type="text" name="id">
                                		<h3>비밀번호 *</h3>
                                			<input type="password" name="pwd" id = "pwChk1" class = "ip1" value = "" onkeyup="pwdChk()"/>
										<h3>비밀번호 재확인 *</h3>
                                			<input type="password" name="pw2" id = "pwChk2" class = "ip1" value = "" onkeyup="pwdChk()"/>
                                			
                                			<script>
	                                				function pwdChk(){
	                                					console.log('function');
	                                					var pw1 = document.getElementById('pwChk1').value;
	                                					var pw2 = document.getElementById('pwChk2').value;
	                                					
	                                					var result = document.getElementById('warnPw');
	                                					
	                                					if(pw1 == '' && pw2 == ''){
	                                						result.innerHTML = "";
	                                					}else{
	                                						if(pw1 != pw2) {
		                                						result.innerHTML = "*불일치";
		                                						result.setAttribute('class', 'notsame');
		                                						console.log('불일치');
		                                					}else{
		                                						result.innerHTML = "*일치";
		                                						result.setAttribute('class', 'same');
		                                						console.log('일치');
		                                					}
	                                						
	                                					}
	                                				}
	                                			</script>
	                                			<p id = "warnPw" style = "font-size:14.5px;font-style:italic;font-weight: bold;;"></p>	
										<h3>이름</h3>
                                			<input type="text" name="name"/>
										<h3>생년월일</h3>
                                		
                                		<div class="birth">
                                			<div class="birth_yy">
                                			<input type="text" placeholder="년" name="birth_y" />
                                			</div>
	                                		<div class="birth_mm">
	                                			<select name="birth_m">
	                                				<option value=selected>&nbsp;&nbsp; 월</option>
	                                				<c:forEach var="i" begin="1" end="12">
		                                				<option>${i }월</option>
	                                				</c:forEach>
	                                			</select>
	                                		</div>
	                                		<div class="birth_dd">
	                                			<select name="birth_d">
	                                				<option value=selected>&nbsp;&nbsp; 일</option>
	                                				<c:forEach var="i" begin="1" end="31">
		                                				<option>${i }일</option>
	                                				</c:forEach>
	                                			</select>
	                                		</div>
	                                	
											<h3>성별</h3>
	                                			<select class="gender" name="gender" style="width:100%">
	                                				<option>&nbsp;&nbsp; 성별</option>
	                                				<option>남자</option>
	                                				<option>여자</option>
	                                				<option>선택 안함</option>
	                                			</select>
										</div>
                                			
                                			<h3>휴대전화</h3>
                                				<input type="text" name="tel" placeholder=" (-)빼고 입력하세요" />
                                			<h3>이메일</h3>
                                				<input type="text" name="email" placeholder=" @이메일 입력" />
                               		
                               				<div class="btn">
                               					<input style="background: #f36100;" type="button" class="primary-btn" value="회원가입" onclick="fnempty()">
                               					<input style="background: #f36100;" type="button" class="primary-btn" value="취소" onclick="fncancle()">
                               				</div>
									</form>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</section>

</body>
</html>