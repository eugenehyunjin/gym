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
<title>강사 등록 페이지</title>
<script src="http://code.jquery.com/jquery-latest.js"></script>
<script type="text/javascript">
	
	window.onload = function(){
		document.getElementsByName('id')[0].focus();
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
	.notsame{color:rgba(255,0,0, 0.6);}
	.same{color:rgba(0,255,0, 0.6);}
	
	#telId, #emailId {
		width:100%;
		color:white;
		font-size: 20px;
		height:46px;
		border: 1px solid #363636;
		padding-left: 20px;
		padding-right: 5px;
		background: transparent;
	}
	
	#idIpChk {
		color:rgba(255,0,0,0.6);
		font-style:italic;
		font-size:14px;
		}
	#ChkId{
		border:1px solid #c4c4c4;
		padding: 0px 10px;
		background: transparent;
		font-size:14px;
		text-align: center;
		padding; 3px;
		width: 13%;
		color:#c4c4c4;
		font-weight: bold;
	}
	#ChkId:hover {color:black;background-color:white;opacity: 0.8;}
	.trunRed {color:red;}
	.truenGreen{color:green;}
</style>


</head>
<body>
<c:if test="${id != 'admin'}">
<script>alert('접근 권한 없음');location.href = "${contextPath}/main.do"</script>
</c:if>
<!-- Breadcrumb Section Begin -->
	<section class="breadcrumb-section set-bg" data-setbg="resources/img/breadcrumb-bg.jpg">
		<div class="container">
			<div class="row">
				<div class="col-lg-12 text-center">
					<div class="breadcrumb-text">
						<h2>Master Form</h2>
						<div class="bt-option">
							<a href="./main.do">Home</a>
							<a href="#">Pages</a>
							<span>Master Form</span>
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
									<h2 style="color: #f36100;">MASTER FORM</h2>
									
									<form name="frm" class="frm" >
										<h3>강사 아이디</h3>
                                			<input type="text" name="id" class = "ip1" id = "userId"/>
                                			<div>
                                			<!-- 
                                				<input type = "button" onclick = "availableChk()" value = "ID 중복체크" id = "ChkId" >
                                				<span id = "alertAvailable" style = "font-size:14.5px;font-style:italic;font-weight: bold;color:white;padding-left:20px;">
                                					<script>	
                                				function availableChk() {
                                					var userId = document.getElementById('userId').value;
                                					console.log(userId)
                                					location.href = "${contextPath}/idCheck.do?userId="+userId;
                                					
                                						$.ajax({
                                    						url : "${contextPath}/idCheck.do",
                                    						type : "get",
                                    						data : {"userId": userId},
                                    						success : function(data) {
                                    							alert(data);
                                    							if(data == 1){
                                    								document.getElementById('alertAvailable').innerHTML = "사용 불가능";
                                    								document.getElementById('alertAvailable').removeAttribute('class');
                                    								document.getElementById('alertAvailable').setAttribute('class', 'trunRed');
                                    								alert('사용 불가능');
                                    							}else if(data == 0){
                                    								document.getElementById('alertAvailable').innerHTML = "사용 가능";
                                    								document.getElementById('alertAvailable').removeAttribute('class');
                                    								document.getElementById('alertAvailable').setAttribute('class', 'trunGreen');
                                    								alert('사용 가능');
                                    							}
                                    						}
                                    					})
                                					
                                				}
                                			</script>
                                			 -->
                                				</span>
                                			</div>
                                			
										<h3>강사 비밀번호</h3>
                                			<input type="password" name="pwd" id = "pwChk1" class = "ip1" value = "" onkeyup="pwdChk()"/>
										<h3>강사 비밀번호 재확인 *</h3>
                                			<input type="password" name="pw2" id = "pwChk2" class = "ip1" value = "" onkeyup="pwdChk()"/>
                                		
                                			<script>
	                                				function pwdChk(){
	                                					console.log('function');
	                                					var pw1 = document.getElementById('pwChk1').value;
	                                					var pw2 = document.getElementById('pwChk2').value;
	                                					
	                                					var result = document.getElementById('warnPw');
	                                					
	                                					if(pw1 == "" && pw2 == ""){
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
	                                			<p id = "warnPw" style = "font-size:14.5px;font-style:italic;font-weight: bold;"></p>
	                                	<h3>강사 이름</h3>
                                		<input type="text" name="name" id = "name" class = "ip1" value = "" />
                                			
										<h3>강사 생년월일</h3>
                                		<div class="birth">
                                			<div class="birth_yy">
                                			<input type="text" placeholder="년" name="birth_y"  class = "ip1"/>
                                			</div>
                                			<div class = "birth_m_d">
	                                		<div class="birth_mm">
	                                			<select name="birth_m_select" onchange="dayByMonth()" class = "selectChk" >
	                                				<option value=selected >&nbsp;&nbsp; 월</option>
	                                				<c:forEach var="i" begin="1" end="12">
		                                				<option>${i }월</option>
	                                				</c:forEach>
	                                			</select>
	                                			<input type = "hidden" name = "birth_m" class = "ip1" value = "">
	                                		</div>
	                                		
	                                		<div class="birth_dd">
	                                			<select name="birth_d_select" class = "selectChk" onchange="newDay()" >
	                                				<option value=selected >&nbsp;&nbsp; 일</option>
	                                				<c:forEach var="i" begin="1" end="31">
		                                				<option id = ${i }>${i }일</option>
	                                				</c:forEach>
	                                			</select>
	                                			<input type = "hidden" name = "birth_d" value = "" class = "ip1" />
	                                		</div>
	                                		</div>
	                                		<script>
	                                		function dayByMonth() {
	                                			var newMonth = document.getElementsByName('birth_m_select')[0].value;
	                                			console.log(newMonth);
	                                			document.getElementsByName('birth_m')[0].value = newMonth;
	                                			console.log('birth_m : '+document.getElementsByName('birth_m')[0].value);
	                                			
	                                			var newMonthSplit = newMonth.split('월')[0];
	                                			console.log(newMonthSplit);
	                                			
	                                			if(isNaN(newMonthSplit)){
	                                				console.log("isNaN");
	                                			}else{
	                                				console.log("!isNaN");
	                                			}
	                                			
	                                			
	                                			if(newMonthSplit == 2) { // ~ 29일
	                                				console.log("newMonth = 2 : ");
	                                				console.log(document.getElementById('30').value);
	                                				document.getElementById('30').disabled = "true";
	                                				document.getElementById('31').disabled = "true";
	                                				
	                                			}else if(newMonthSplit == 4 || newMonthSplit == 6 || newMonthSplit == 9 || newMonthSplit == 11){ // ~ 30일
	                                				console.log("newMonth%2 == 0 : ");
	                                				console.log(document.getElementById('31'));
	                                				document.getElementById('30').removeAttribute("disabled");
	                                				document.getElementById('31').disabled = "true";
	                                			}else{ // ~ 31일
	                                				console.log("newMonth%2 == 1 || newMonth == 8) : ");
	                                				document.getElementById('30').removeAttribute("disabled");
	                                				document.getElementById('31').removeAttribute("disabled");
	                                				
	                                			}
	                                		}
	                                		
	                                		function newDay() {
	                                			var day = document.getElementsByName('birth_d_select')[0].value;
	                                			console.log(day);
	                                			document.getElementsByName('birth_d')[0].value = day;
	        	                       			console.log('birth_d : '+document.getElementsByName('birth_d')[0].value);
	                                		}

	                                		</script>
	                                	</div>
											<h3>강사 성별</h3>
	                                			<select class="gender" name="gender_select" style="width:100%" onchange="genderHidden()" >
	                                				<option>&nbsp;&nbsp; 성별</option>
	                                				<option>남성</option>
	                                				<option>여성</option>
	                                				<option>선택 안함</option>
	                                			</select>
	                                			</select>
	                                			<input type = "hidden" name = "gender" class = "ip1"/>
	                                			<script type="text/javascript">
	                                				function genderHidden(){
	                                					var select = document.getElementsByName('gender_select')[0].value;
	                                					document.getElementsByName('gender')[0].value = select;
	                                					console.log('gender : '+document.getElementsByName('gender')[0].value);
	                                				}
	                                			</script>
										</div>
										
                                			<h3>강사 휴대전화 *</h3>

                                				<input type="text" name="tel" placeholder=" (-)빼고 입력하세요" class = "ip1" id = "telId"/>
                                			<h3>강사 이메일</h3>
                                				<input type="text" name="email" placeholder=" @이메일 입력" class = "ip1" id = "emailId"/>
                                			<h3>강사 사진</h3><p>*강사 사진은 png 파일로 강사 이름과 같은 파일명으로 업로드 해주세요.</p>
                                				<input type="button"  value="파일추가" onClick="fn_addFile()"/><br>
												<div id="d_file"></div>
                                				<script>
													var cnt=1;
													function fn_addFile(){
														$("#d_file").append("<br>"+"<input  type='file' name='file"+cnt+"' />");
														cnt++;
													}
												</script>
                               		
                               				<div class="btn">
                               					<input style="background: #f36100;" type="button" class="primary-btn" value="강사등록" onclick="chkForm()">
                               					
                               					<script>
													function chkForm(){                               						
                               						var frm = document.frm;

													
                               					/*
                               						if(document.getElementById('alertAvailable').innerHTML.length = 0){
                               								

                       								}else if(document.getElementById('alertAvailable').innerHTML = "사용 불가능"){
        	           									alert('사용 불가능한 아이디입니다');
            	       									return;
                               					}
                               						**/

                       								for(var i = 0;i<9;i++) {
                           							
                           							var inputChk = document.getElementsByClassName('ip1')[i].value;
                           							console.log('input '+i +' : '+ inputChk);
                           							
                           							if(inputChk == null || inputChk== ''){
                           								//console.log(inputChk + ' null');
                           								
                           								console.log('inputChk.length : '+ document.getElementsByClassName('ip1').length);
                           								
                           								console.log('ipChk[6] : '+inputChk[6]);
                           								console.log('nullChk birth_d : '+ document.getElementsByName('birth_d').value);
                           								if(document.getElementById('warnPw').innerHTML == '*불일치'){
                               								alert('비밀번호가 일치하지 않습니다');
                               								document.getElementById('pwChk1').value = "";
                               								document.getElementById('pwChk2').value = "";
                              								document.getElementById('pwChk1').focus();
                         									return;
                                       					}else if(i == 4){
                           									alert('생년월일 입력을 완료해주십시오');
                           									return;
                           									break;
                           								}else if(i == 5){
                           									var birth_D = document.getElementsByName('birth_d')[0].value;
                           									if(birth_D == null || birth_D == ''){
                           										alert('생년월일 입력을 완료해주십시오');
                           										return;
                               									break;
                           									}
                           									
                           								}else if(i == 6){
                           										var gender = document.getElementsByName('gender')[0].value;
                           										if(gender == null || gender == ''){
                           											alert('성별 입력을 완료해주십시오');
                               										return;	
                           										}
                           										
                           								}else{
                           									alert('입력을 완료하십시오');
                           									document.getElementsByClassName('ip1')[i].focus();
                           									return;
                           								}
                           							}
                           							
                           						}
                       								if(confirm('강사를 등록하시겠습니까?')){
                               							frm.method = 'post';
                               							frm.action = '${contextPath}/addMaster.do';
                               							frm.enctype="multipart/form-data";
                               							frm.submit();
                               						}else{
                               							alert('강사 등록을 취소하였습니다');
												/*


                               						for(var i = 0;document.getElementsByClassName('ip1').length;i++) {
                               							
                               							var inputChk = document.getElementsByClassName('ip1')[i];
                               							
                               							if(inputChk.value == null || inputChk.value == ''){
                               								console.log(inputChk + ' null');
                               								alert('입력을 완료해주십시오');
                               								inputChk.focus();
                               								break;
                               							}else{
                               								var test = document.getElementById('warnPw').value;
                               								console.log(test);
                               								if(document.getElementById('warnPw').innerHTML == '*일치'){
                               											frm.method = 'post';
                                       									frm.action = '${contextPath}/addMaster.do';
                                       									frm.enctype= 'multipart/form-data';
                                       									frm.submit();	
                               								}else if(document.getElementById('warnPw').innerHTML == '*불일치'){
                               									alert('비밀번호가 일치하지 않습니다');
                               									document.getElementById('pwChk1').value = "";
                               									document.getElementById('pwChk2').value = "";
                               									document.getElementById('pwChk1').focus();
                               									break;
                               								}
                               								
                               							}

                               						}
                               						**/
                               					}

                               				}
                               						
                               						
                               					</script>
                               					
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