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
<title>마이 페이지</title>
<style type="text/css">
/*---------------------
  My Info Section
-----------------------*/
.myPage-table{width:100%;}
.myPage-table-line {border-right: 1px solid #c4c4c4; width:65%; padding: 0px 30px;}
.myPage-table td {padding: 0px 30px;}

.myPage-myInfo input[type='text'], .myPage-myInfo input[type='password']{
   font-size: 15px;
   /*color: #c4c4c4;**/
   color: black;
   width: 100%;
   height: 46px;
   border: 1px solid #363636;
   padding-left: 20px;
   padding-right: 5px;
   background: rgba(255,255,255,0.95);
   margin-bottom: 20px;
   font-weight: bold;
   
}

.myPage-myInfo h3 {color:white; margin: 5px;}

.myPage-myInfo form input::-webkit-input-placeholder {
   color: #c4c4c4;
}

.myPage-myInfo form input::-moz-placeholder {
   color: #c4c4c4;
}

.myPage-myInfo form input:-ms-input-placeholder {
   color: #c4c4c4;
}

.myPage-myInfo form input::-ms-input-placeholder {
   color: #c4c4c4;
}

.myPage-myInfo form input::placeholder {
   color: #c4c4c4;
}

.myPage-myInfo select{
   background-color: white;
}

.myPage-myInfo input[type ='button'] {
   font-size: 14px;
   width: 100%;
   color: #ffffff;
   border: 1px solid #363636; 
   background: transparent;
}

/* h5 title**/
.myPage-table-title h5 {color: white; padding-bottom: 10px;}

/* myPage-myClass*/
.myPage-myClass-box{border-bottom: 20px solid lightGray;color:white; text-align:center;padding-bottom: 20px;}
.myPage-myClass-bookNull{
   height: 200px;
   border: 3px solid #c4c4c4;
   font-size: 13px;
   text-align: center;
   background:white;
   color:black;
}
.myPage-myClass-exist{
   margin:0px 0px;
   color: black;
   height: 200px;
   border: 3px solid #c4c4c4;
   font-size: 12px;
   text-align: left;
   background-color: white;
}
#delOutline{outline: none;border:none;background:none;}
#warnnigMsg{font-size: 12px; color:red; font-style: italic; opacity: 0.7;font-weight: bold;text-align: right;line-height: 60%;}
#disabledId{background:#c4c4c4;}
.myPage-birth_m-d{width: 100%; text-align: center;}
.myPage-birth_m-d select{margin-right: 60px; padding: 7px 20px; border-radius: 4px; background-color: rgba(255,255,255,0.95);}
#genderSelect{ padding: 7px 20px; border-radius: 4px; background-color: rgba(255,255,255,0.95);}
</style>
<script src="http://code.jquery.com/jquery-latest.js"></script>
<script type="text/javascript">
	
	
	function modid(){
		
		console.log(document.getElementsByName('id')[0].value)
		
		if(confirm('수정하시겠습니까?')) {
			/*document.getElementsByName('id')[0].removeAttribute("disabled");**/
			//document.getElementsByName('id')[0].removeAttribute('type');
			document.getElementsByName('id')[0].setAttribute('id', 'disabledId');
			
			document.getElementsByTagName('h5')[0].innerHTML = 'MY INFO > 수정';
			
			document.getElementById('mod1').removeAttribute('hidden');
			console.log(document.getElementById('mod1'));
			document.getElementById('mod2').innerHTML = "수정";
			console.log(document.getElementById('mod2'));
			
			document.getElementsByTagName('p')[0].innerHTML = "*아이디는 수정이 불가능합니다";
			
			document.getElementsByName('pw')[0].removeAttribute("disabled");
			document.getElementsByName('pw')[0].removeAttribute("type");
			document.getElementsByName('pw')[0].setAttribute('type', 'password');
			document.getElementsByName('pw')[0].focus();
			
			document.getElementsByName('pwChkTxt')[0].removeAttribute('type');
			document.getElementsByName('pwChk')[0].removeAttribute('type');
			document.getElementsByName('pwChk')[0].setAttribute('type', 'password');
			
			document.getElementsByName('name')[0].removeAttribute("disabled");
			document.getElementsByName('myPage-birth_y')[0].removeAttribute("disabled");
			document.getElementsByName('myPage-birth_m')[0].removeAttribute("disabled");
			document.getElementsByName('myPage-birth_d')[0].removeAttribute("disabled");
			document.getElementsByName('gender')[0].removeAttribute("disabled");
			document.getElementsByName('tel')[0].removeAttribute("disabled");
			document.getElementsByName('email')[0].removeAttribute("disabled");
			
			var modBtn = document.getElementById('modBtn');
			console.log(modBtn.value);
			modBtn.value = "저장";
			modBtn.removeAttribute("onClick");
			modBtn.setAttribute("onClick", "saveBtn()");
			
			
		}else{
			location.replace('${contextPath}/myPage.do');
			alert('수정이 취소되었습니다');
		}
		
	}
	
	function saveBtn() {
		
		for(var i=0;i<12;i++) {
			var inputVal = document.getElementsByTagName('input')[i].value;
			
			console.log("input : "+i);
			
			if(inputVal ==null || inputVal == ''){
				alert('입력을 완료해주십시오');
				document.getElementsByTagName('input')[i].focus();
				break;
			}else{
				if(inputVal == 10) {
					if(document.getElementsByTagName('select')[0].value == '선택안함'){
						alert('성별을 입력해주세요');
					}
				}
			}
		}
		frm.method = 'post';
		frm.action = '${contextPath}/join.do';
		frm.submit();
		
	}
	
	function newBirth() {
		var newMonth = document.getElementsByName('myPage-birth_m')[0].value;
		console.log(newMonth);
		var changeDate;
		
	}

</script>
</head>
<body>

<!-- Breadcrumb Section Begin -->
    <section class="breadcrumb-section set-bg" data-setbg="resources/img/breadcrumb-bg.jpg">
        <div class="container">
            <div class="row">
                <div class="col-lg-12 text-center">
                    <div class="breadcrumb-text">
                        <h2>MY PAGE</h2>
                        <div class="bt-option">
                            <a href="${contextPath }/main.do" class = "fontA">Home</a>
                            <a href="#" class = "fontA">Pages</a>
                            <a hidden="hidden" href = "${contextPath }/myPage.do" id = "mod1" class = "fontA">MY PAGE</a>
                            <span id="mod2">MY PAGE</span>
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
						  <table class = "myPage-table">
						  <tr class = "myPage-table-title">
						  <td><h5>MY INFO</h5></td>
						  <td><h5>MY CLASS</h5></td>
						  </tr>
						  <tr><td class = "myPage-table-line">
                                <div class="myPage-myInfo">
                                    <form name="frm">
                                       <h3>아이디</h3>
                                	<input type="text" name="id" disabled="disabled" value = "test"/>
                                	<p id="warnnigMsg"></p>
                                	<!--  <input type="text" name="id" disabled="disabled" value = "${member.id}"/>-->
                                <h3>비밀번호</h3>
                                	<input type="text" name="pw" disabled="disabled" value = "test" />
                                <h3><input type = "hidden" value = "비밀번호 확인" name = "pwChkTxt" id="delOutline"disabled="disabled"></h3>
                                	<input type="hidden" name="pwChk" disabled="disabled" value = "test"/>
                                	<!--  <input type="password" name="pw" disabled="disabled" value = "${member.pw}"/>-->
                                <h3>이름</h3>
                                	<input type="text" name="name" disabled="disabled" value = ""/>
                                	<!--  <input type="password" name="pw" disabled="disabled" value = "${member.name}"/>-->
                                <h3>생년월일</h3>
                                		<div class="myPage-birth_yy">
                                			<input type="text" name="myPage-birth_y" disabled="disabled"/>
                                			</div>
	                                		<div class="myPage-birth_m-d">
	                                			<select name="myPage-birth_m" disabled="disabled" onchange="newBirth()">
	                                				<option value=selected>&nbsp;&nbsp; 월</option>
	                                				<c:forEach var="i" begin="1" end="12">
		                                				<option>${i }월</option>
	                                				</c:forEach>
	                                			</select>
	                                			<select name="myPage-birth_d" disabled="disabled">
	                                				<option value=selected>&nbsp;&nbsp; 일</option>
	                                			<c:if test=""></c:if>
	                                				<c:forEach var="i" begin="1" end="${changeDate }">
		                                				<option>${i }일</option>
	                                				</c:forEach>
	                                			</select>
	                                		</div>
                                <h3>성별</h3>
                                	<select name="gender" disabled="disabled" id = "genderSelect">
<c:choose>                                	
                                			
 <c:when test="${member.gender eq '남자' }">                                			
                                <script>
                                	document.getElementsByTagName('option')[1].selected= true;
                                </script>						
 </c:when>
 <c:when test="${member.gender eq '여자' }">                                			
                                <script>
                                	document.getElementsByTagName('option')[2].selected = true;
                                </script>			
</c:when>
</c:choose>
											<option >선택 안함</option>
											<option >남자</option>
											<option >여자</option>
											                               			
                                	</select>
                                <h3>휴대전화</h3>
                                	<input type="text" name="tel" disabled="disabled" />
                                <h3>이메일</h3>
                                	<input type="text" name="email" disabled="disabled" />
                               	<div>
                               		<input type="button" class="primary-btn" value="수정" onclick="modid()" id = "modBtn">
                               		 <!-- <input type="button" class="primary-btn" value="취소" onclick="${contextPath }/main.do"> -->
                               	</div>
                                    </form>
                                </div>
                                </td>
                                <td valign="top" class = "myPage-myClass">
                                
	                                <table class = "myPage-myClass-table">
	                                <tr style = "background: transparent;">
	                                	<td class = "myPage-myClass-box">예약 정보</td>
	                                </tr>
               
	<c:if test="${empty bookList}">
										<tr class = "myPage-myClass-bookNull">
											<td>
											예약된 클래스가 없습니다</td>
										</tr> 
	</c:if>
	<c:if test="${!empty bookList }">
	<c:forEach var = "book" items="${bookList }">
												<!-- css 미완  -->
									<tr>
										<td>
											<table>
												<tr>
													<td>커리큘럼</td>
													<td>${book.id}</td>
												</tr>
												<tr>
													<td>강사명</td>
													<td>${book.master_name}</td>
												</tr>
												<tr>
													<td>예약 날짜</td>
													<td>${book.date}</td>
												</tr>
											</table>
										</td>
									</tr>	
	</c:forEach>								 
	</c:if>
	
	                                </table>
                                
                                </td></tr>
						  		</table>
                            </div>
                            </div></div>
                            </div>
                            </div>
                            </div>
                            </section>
                            
                            
                            
                            
                            
    
    


</body>

</html>