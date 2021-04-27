<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" isELIgnored="false"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"  %>
<%
  request.setCharacterEncoding("UTF-8");
%>
	<c:set var="contextPath" value="${pageContext.request.contextPath}"/>
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
.myPage-myClass-td{height: 60px; width:100%;backgournd:#f36100;color:white; text-align:center;padding-bottom: 20px;}
.myPage-myClass-bookNull{
   height: 200px;
   border: 3px solid #cf651f;
   font-size: 13px;
   text-align: center;
   background:white;
   color:black;
}
.myPage-myClass-exist{
	widht: 209px;
    height: 200px;
   border: 3px solid #cf651f;;
   font-size: 13px;
   text-align: left;
   background:white;
   color:black;
}
#delOutline{outline: none;border:none;background:none;}
#warnnigMsg{font-size: 12px; color:red; font-style: italic; opacity: 0.7;font-weight: bold;text-align: right;line-height: 60%;}
#disabledId{background:#c4c4c4;}

/* .birth_m_d{width: 100%; text-align: center;}
.birth_m_d select{margin-right: 60px; padding: 7px 20px; border-radius: 4px; background-color: rgba(255,255,255,0.95);}
#genderSelect{ padding: 7px 20px; border-radius: 4px; background-color: rgba(255,255,255,0.95);}
**/
	select, option {
		background: white;
	}
	
	.birth_yy, .birth_mm, .birth_dd {
		display: inline-block;
		width: 30%;
		margin-right: 22px;
	}
	
	.birth_mm select, .birth_dd select {
		width: 160px;
		height: 45px;
		back-ground: none;
	}
	
	.birth_dd {margin-left: 30px;}
	
	.birth_yy{width: 170px;}
	
	#genderSelect {
		width: 200px; 
		height: 45px;
	}
	
	.col-lg-12 .leave-comment input, select, option {
		font-size: 20px;
		color: black;
	}
	.tagForBook{
		font-weight: bold;
		color:gray;
		text-decoration: none;
	}
	.tagForBook:hover {font-weight:bolder;color:black;}
	.tagForBook:visited {font-weight: bold; color:gray;}
	
	.tagForMaster{color:black;}
	.tagForMaster:hover{font-weight: bold;color:black;}
	.tagForMaster:visited {color:black;}
	.notsame{color:rgba(255,0,0,0.6);}
	.same{color:rgba(0,255,0,0.6);}
	#hoverBox:hover {background-color: white;color:black;border:3px white solid;}
	.delBtn{width:100%; color:#c4c4c4;border:1px solid #c4c4c4; background-color:transparent;margin-bottom: 10px;text-align:center;}
	#insertCourse{border:1px solid white;margin:30px 20px 0px 0px;padding:10px 5px;width:100%;font-weight: bold;font-size:14px;border-radius: 20px 20px;}
	#insertCourse:hover {background-color:white;color:black;border:1px solid black;}
	.opacityChg{opacity: 0.7;background-color:black;}
</style>
<script src="http://code.jquery.com/jquery-latest.js"></script>

<script type="text/javascript">
	
	window.onload = function() {
		
		//사용자
		const masterChk = '${loginType}';
		
		if('${id}' == 'admin') {
			console.log('admin');
			document.getElementsByTagName('h2')[0].innerHTML = "ADMINPAGE";
			document.getElementById('mod1').innerHTML = "ADMINPAGE";
			document.getElementById('mod2').innerHTML = "ADMINPAGE";
			document.getElementsByTagName('h5')[1].innerHTML = "ADMIN CONTROL";
		}else if (masterChk.includes('master')){
			console.log('master');
				var ifmaster = document.getElementById('ifmaster');
				console.log(ifmaster.hidden);
				document.getElementById('ifmaster').removeAttribute('hidden');
				console.log(ifmaster.hidden);
		}else if (masterChk.includes('normal')){
			console.log('user');
			var ifuser = document.getElementById('ifuser');
			console.log(ifuser.hidden);
			document.getElementById('ifuser').removeAttribute('hidden');
			console.log(ifuser.hidden);
		}
		
		// 성별
		console.log('${myInfo.gender}');
		var myGender = '${myInfo.gender}';
		if(myGender == '남성'){
			document.getElementsByClassName('genderOption')[1].setAttribute('selected','selected');
		}else if(myGender == '여성'){
			document.getElementsByClassName('genderOption')[2].setAttribute('selected','selected');
		}else{}
		
		//달, 일
		console.log('${myInfo.birth_m}');
		console.log('${myInfo.birth_d}');
		
		var myBirth_m = '${myInfo.birth_m}';
		var myBirth_d = '${myInfo.birth_d}';
		
		var optionBirth_m = document.getElementsByClassName('birth_m_Option');
		var optionBirth_d = document.getElementsByClassName('birth_d_Option');
		
		for(var g=0;g<optionBirth_m.length;g++) {
			if(myBirth_m == optionBirth_m[g].value){
				optionBirth_m[g].selected = "true";	
			}	
		}
		for(var h=0;g<optionBirth_d.length;h++) {
			if(myBirth_d == optionBirth_d[h].innerHTML){
				optionBirth_d[h].selected = "true";	
			}	
		}
		
		
	}

</script>

<!-- myPage.do 경로로 접근하는 경우 방지 -->

</head>

<body>
<c:if test="${empty id}">
	<script>alert('로그아웃 상태입니다');location.href = "${contextPath}/main.do"</script>
</c:if>
<!-- Breadcrumb Section Begin -->
    <section class="breadcrumb-section set-bg" data-setbg="resources/img/breadcrumb-bg.jpg">
        <div class="container">
            <div class="row">
                <div class="col-lg-12 text-center">
                    <div class="breadcrumb-text">
                        <h2>MY PAGE</h2>
                        <div class="bt-option">
                            <a href="${contextPath}/main.do" class = "fontA">Home</a>
                            <a href="#" class = "fontA">Pages</a>
                            <a hidden="hidden" href = "${contextPath}/myPage.do" id = "mod1" class = "fontA">MY PAGE</a>
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
                                       <h3>아이디</h3>	<!-- session id로 받아옴 -->
                                	<input type="text" name="id" disabled="disabled" class = "ip" value = "${id}"/>
                                	<p id="warnnigMsg"></p>
                                <h3>비밀번호</h3>
                                	<input type="text" name="pwd" disabled="disabled" class = "ip" value = "${myInfo.pwd}" id = "pwChk1" onkeyup="pwdChk()"/>
                                <h3><input type = "hidden" value = "비밀번호 확인" name = "pwChkTxt" id="delOutline"disabled="disabled"></h3>
                                	<input type="hidden" name="pwChk" class = "ip" value = "${myInfo.pwd}" id = "pwChk2" onkeyup="pwdChk()"/>
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
	                                			<p id = "warnPw" style = "font-size:14.5px;font-style:italic;font-weight: bold;"></p>
                                <h3>이름</h3>
                                	<input type="text" name="name" disabled="disabled"  value = "${myInfo.name}"/>
                                <h3>생년월일</h3>
                                		<div class="birth">
                                			<div class="birth_yy">
                                			<input type="text" placeholder="년" name="birth_y" disabled="disabled" class = "ip" value = "${myInfo.birth_y}"/>
                                			</div>
                                			<div class = "birth_m_d">
	                                		<div class="birth_mm">
	                                			<select name="birth_m_select" onchange="dayByMonth()" disabled="disabled" >
	                                				<option value=selected>&nbsp;&nbsp; 월</option>
	                                				<c:forEach var="i" begin="1" end="12">
		                                				<option class = "birth_m_Option">${i}월</option>
	                                				</c:forEach>
	                                			</select>
	                                			<input type = "hidden" name = "birth_m" class = "ip" value = '${myInfo.birth_m}'/>
	                                		</div>
	                                		<div class="birth_dd">
	                                			<select name="birth_d_select" disabled="disabled" onchange="newDayHidden()">
	                                				<option value=selected>&nbsp;&nbsp; 일</option>
	                                				<c:forEach var="i" begin="1" end="31">
		                                				<option id = ${i} class = "birth_d_Option">${i}일</option>
	                                				</c:forEach>
	                                			</select>
	                                			<input type = "hidden" name = "birth_d" class = "ip" value = '${myInfo.birth_d}'/>
	                                			<script>
	                                			function newDayHidden(){
		                                			var hiddenDay = document.getElementsByName('birth_d_select')[0].value;
		                                			console.log(hiddenDay);
		                                			document.getElementsByName('birth_d')[0].value = hiddenDay;
		                                			console.log('console.log hiddenDay/birth_d : '+document.getElementsByName('birth_d')[0].value);
		                                		}
	                                			</script>
	                                		</div>
	                                		</div>
	                                		<Script>
	                                		function dayByMonth() {
	                                			var newMonth = document.getElementsByName('birth_m_select')[0].value;
	                                			console.log(newMonth);
	                                			document.getElementsByName('birth_m')[0].value = newMonth;
	                                			console.log('console.log newMonth/birth_m : '+document.getElementsByName('birth_m')[0].value);
	                                			
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
											
	                                		</Script>
	                                	</div>
                                <h3>성별</h3>
                                	<select name="gender_select" disabled="disabled" id = "genderSelect" onChange="newGenderHidden()">
											<option class = "genderOption" >선택 안함</option>
											<option class = "genderOption">남성</option>
											<option class = "genderOption">여성</option>
											                               			
                                	</select>
                                	<input type = "hidden" class = "ip" name = "gender" value = '${myInfo.gender}'/>
                                	<Script>
                                		function newGenderHidden() {
                                			var gender = document.getElementsByName('gender_select')[0].value
                                			document.getElementsByName('gender')[0].value = gender;
                                			console.log('console.log gender.value : '+document.getElementsByName('gender')[0].value);
                                		}
                                	</Script>
                                <h3>휴대전화</h3>
                                	<input type="text" name="tel" disabled="disabled" class = "ip" value = "${myInfo.tel}"/>
                                <h3>이메일</h3>
                                	<input type="text" name="email" disabled="disabled" class = "ip" value = "${myInfo.email}"/>
                               	<div>
                               		<input type="button" class="primary-btn" value="수정" onclick="modid()" id = "modBtn">
                               		 <Script>
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
                               				
                               				document.getElementsByName('pwd')[0].removeAttribute("disabled");
                               				document.getElementsByName('pwd')[0].removeAttribute("type");
                               				document.getElementsByName('pwd')[0].setAttribute('type', 'password');
                               				document.getElementsByName('pwd')[0].focus();
                               				
                               				document.getElementsByName('pwChkTxt')[0].removeAttribute('type');
                               				document.getElementsByName('pwChk')[0].removeAttribute('type');
                               				document.getElementsByName('pwChk')[0].setAttribute('type', 'password');
                               				
                               				document.getElementsByName('name')[0].removeAttribute("disabled");
                               				document.getElementsByName('birth_y')[0].removeAttribute("disabled");
                               				document.getElementsByName('birth_m_select')[0].removeAttribute("disabled");
                               				document.getElementsByName('birth_d_select')[0].removeAttribute("disabled");
                               				document.getElementsByName('gender_select')[0].removeAttribute("disabled");
                               				document.getElementsByName('tel')[0].removeAttribute("disabled");
                               				document.getElementsByName('email')[0].removeAttribute("disabled");
                               				
                               				var modBtn = document.getElementById('modBtn');
                               				console.log(modBtn.value);
                               				modBtn.value = "저장";
                               				modBtn.removeAttribute("onClick");
                               				modBtn.setAttribute("onClick", "saveBtn()");
                               				
                               				
                               			}else{
                               				//location.replace('${contextPath}/myPage.do');
                               				alert('수정이 취소되었습니다');
                               			}
                               			
                               		}
                               		
                               		function saveBtn() {
                               			
                               			var ip = document.getElementsByClassName('ip');
                               			
                               			for(var i=0;i<ip.length;i++) {
                               				var ipChk = document.getElementsByClassName('ip')[i].value;
                               				console.log('input'+ i + " : "+ipChk);
                               				if(ipChk ==null || ipChk == ''){
                               					alert('입력을 완료해주십시오');
                               					document.getElementsByClassName('ip')[i].focus();
                               					return;
                               				}else{
                               					if(document.getElementById('warnPw') == '*불일치'){
                               						alert('비밀번호가 일치하지 않습니다');
                   									document.getElementById('pwChk1').value = "";
                   									document.getElementById('pwChk2').value = "";
                   									document.getElementById('pwChk1').focus();
                   									return;
                               					}
                               				}
                               			}
                               			frm.method = 'post';
                               			frm.action = '${contextPath}/modSave.do?id=${myInfo.id}';
                               			frm.submit();
                               		}
                               		

                               		 </Script>
                               	</div>
                                    </form>
                                </div>
                                </td>
                                <td valign="top" class = "myPage-myClass">
                     <c:choose>
                     	<c:when test="${id == 'admin'}">
                     				<a href = "${contextPath}/adminPage1.do" style = "color:white;text-decoration: none;font-size:20px;" id = "hoverAtag">
                     					<div style = "border:3px solid #c4c4c4;margin:30px;padding:15px;font-weight: bold;" id = "hoverBox">
                     					회원관리<br>페이지 >
                     					</div>
                     				</a>
                     				<a href = "${contextPath}/adminPage2.do" style = "color:white;text-decoration: none;font-size:20px;" id = "hoverAtag">
                     					<div style = "border:3px solid #c4c4c4;margin:30px;padding:15px;font-weight: bold;" id = "hoverBox">
                     					강사관리<br>페이지 >
                     					</div>
                     				</a>
                     				<a href = "${contextPath}/adminPage3.do" style = "color:white;text-decoration: none;font-size:20px;" id = "hoverAtag">
                     					<div style = "border:3px solid #c4c4c4;margin:30px;padding:15px;font-weight: bold;" id = "hoverBox">
                     					커리큘럼<br>페이지 >
                     					</div>
                     				</a>
                     	</c:when>
                     </c:choose>
                     	<div id = "ifmaster" hidden = "true">
                     	
           					<c:choose>
           					<c:when test="${empty courselist}">
           					<table class = "myPage-myClass-table" width="209px;" >
                                				<tr style = "background-color:#f36100;border:3px solid #cf651f;">
                                					<td class = "myPage-myClass-td"><span style = "font-size:18px; color:white;">${myInfo.name}</span><span style = "font-size:14px; color:white;"> 강사<br>클래스 정보</span></td>
                                				</tr>
                                				<tr class = "myPage-myClass-exist">
                                					<td style = "width:209px;line-height: 240%;">
                                						<ul>
                                							<h5 style="text-align:center;padding-bottom: 10px;">
                                								<a href = "#" class = "tagForBook" title = "커리큘럼 정보">커리큘럼명</a>
                                							</h5>
                                							<li class = "course">등록된 커리큘럼이 없습니다. </li>
                                							
                                						</ul>
                                					
                                						<h7><input type = "button" value = "수강생 정보" onclick="PopUp()" style = "margin:auto;text-align:center; color:black; border: 1px solid black;font-weight: bold;width:100%;margin-bottom: 10px;" id = "colorChange"></h7>
                                						<script>
                                							function PopUp(){window.open("${contextPath}/stuInfo_popup.do?name=${myInfo.name}", "수강생 정보", "width=720, height=420, left=500, top=200");}
                                						</script>
                                						<input type = "button" value = "클래스 삭제" onClick="delChk()" class = "delBtn"/>
                                							
                                					</td>
                                				</tr>
                                			</table>
           					</c:when>
           					<c:when test="${courselist!= null }">
                     		<c:forEach var="list" items="${courselist }">
                     		<table class = "myPage-myClass-table" width="209px;" >
                                				<tr style = "background-color:#f36100;border:3px solid #cf651f;">
                                					<td class = "myPage-myClass-td"><span style = "font-size:18px; color:white;">${myInfo.name}</span><span style = "font-size:14px; color:white;"> 강사<br>클래스 정보</span></td>
                                				</tr>
                                				<tr class = "myPage-myClass-exist">
                                					<td style = "width:209px;line-height: 240%;">
                                						<ul>
                                							<h5 style="text-align:center;padding-bottom: 10px;">
                                								<a href = "#" class = "tagForBook" title = "커리큘럼 정보">커리큘럼명</a>
                                							</h5>
                                							<li class = "course">커리큘럼 ID - ${list.courseid }</li>
                                							<li class = "course">커리큘럼 종목 - ${list.type }</li>
                                							<li class = "course">커리큘럼 설명 - ${list.content }</li>
                                							<li class = "course">커리큘럼 가격 - ${list.price }</li>
                                						</ul>
                                					
                                						<h7><input type = "button" value = "수강생 정보" onclick="PopUp()" style = "margin:auto;text-align:center; color:black; border: 1px solid black;font-weight: bold;width:100%;margin-bottom: 10px;" id = "colorChange"></h7>
                                						<script>
                                							function PopUp(){window.open("${contextPath}/stuInfo_popup.do?name=${myInfo.name}", "수강생 정보", "width=720, height=420, left=500, top=200");}
                                						</script>
                                						<input type = "button" value = "클래스 삭제" onClick="delCourse()" class = "delBtn"/>
                            
                                					</td>
                                				</tr>
                                			</table>
                                			<br>
                                </c:forEach>
                       		    </c:when>
                                </c:choose>		
         
                                			<script>
                                								function delCourse(){
                                									if(confirm('클래스를 삭제하시겠습니까?')){
                                										var c_Id = document.getElementsByClassName('course')[0].innerHTML;
                                										var c_IdSplit = c_Id.split('- ')[1];
                                										console.log(c_Id);
                                										console.log(c_IdSplit);
                                										location.href="${contextPath }/delcourse.do?courseid="+c_IdSplit;                    									                      
                                									}else{
                                										alert('클래스 삭제가 취소되었습니다');
                                									}
                                								}
                                			</script>
                                			
                                			<div class = "insertBtn">
                                				<input type = "button" value = "클래스 등록" id = "insertCourse" onClick="addCoursePopUP()"/>
                                				<script>
                                				function addCoursePopUP(){window.open("${contextPath}/addCourse_popup.do?id=${id}&name=${myInfo.name}", "수강생 정보", "width=660, height=650, left=550, top=100,status=no,toolbar=no");
                                					var body = document.getElementsByTagName('body');
                                					body.class = "opacityChg";}
                                				</script>
                                			</div>
                     	</div>
                     	
                     	
                     	<div id = "ifuser" hidden="true">
                     	
                     	<c:choose>
                     	<c:when test="${empty booklist}">
                     		<table class = "myPage-myClass-table">
	                                <tr style = "background-color:#f36100;border: 3px solid #cf651f;">
	                                	<td class = "myPage-myClass-td"><span style = "font-size:18px; color:white;">${myInfo.name}</span> <span style = "font-size:14px; color:white;"> 님의<br>예약 정보</span></td>
	                                </tr>
	                                <tr class = "myPage-myClass-exist" >
										<td style="width:209px;line-height: 240%;">
											<ul>
											<h5 style = "text-align:center;padding-bottom: 10px;">예약이 없습니다.</h5>
												<li align="center"><a href="${contextPath }/class.do">예약하러 가기</a></li>								
											</ul>
										</td>
									</tr>
	                                </table>
	                                <br>
							</c:when>
                     		<c:when test="${booklist != null }">
                     			<c:forEach var="list" items="${booklist }">
                     		<table class = "myPage-myClass-table">
	                                <tr style = "background-color:#f36100;border: 3px solid #cf651f;">
	                                	<td class = "myPage-myClass-td"><span style = "font-size:18px; color:white;">${myInfo.name}</span> <span style = "font-size:14px; color:white;"> 님의<br>예약 정보</span></td>
	                                </tr>
	                                <tr class = "myPage-myClass-exist" >
										<td style="width:209px;line-height: 240%;">
											<ul>
											<h5 style = "text-align:center;padding-bottom: 10px;" class="course_id">${list.course_id }</h5>
												<li>예약 날짜 - ${list.bookdate }</li>
												<li>강사명 - <a href = "#" class = "tagForMaster" title="강사 정보">${list.master_id }</a></li>
												<li>시작 날짜 - ${list.book_date }</li>										
											</ul>
											<input type = "button" value = "예약 취소" onClick="delChk()" class = "delBtn"/>
                                							<script>
                                								function delChk() {
                                									if(confirm('예약을 취소하시겠습니까?')){
                                										var c_Id = document.getElementsByClassName('course_id')[0].innerHTML;  						
                                										location.href="${contextPath }/delbook.do?course_id=${list.course_id}&member_id=${myInfo.id}";
                                									}else{
                                										alert('예약 취소가 취소되었습니다');
                                									}
                                								}
                                							</script>
										</td>
									</tr>
	                                </table>
	                                <br>
	                            </c:forEach>
							</c:when>
						</c:choose>
    
                     	</div>           
	                                                            
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