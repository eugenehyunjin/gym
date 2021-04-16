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
   font-size: 13px;
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
</style>
<script src="http://code.jquery.com/jquery-latest.js"></script>
<script type="text/javascript">
	
	
	function modid(){
		
		console.log(document.getElementsByName('id')[0].value)
		
		if(confirm('수정하시겠습니까?')) {
			/*document.getElementsByName('id')[0].removeAttribute("disabled");**/
			document.getElementsByTagName('h5')[0].innerHTML = 'MY INFO > 수정';
			document.getElementsByName('pw')[0].removeAttribute("disabled");
			document.getElementsByName('pw')[0].focus();
			document.getElementsByName('pwChkTxt')[0].removeAttribute('type');
			document.getElementsByName('pwChk')[0].removeAttribute('type');
			document.getElementsByName('pwChk')[0].setAttribute('type', 'password');
			document.getElementsByName('name')[0].removeAttribute("disabled");
			document.getElementsByName('birth_y')[0].removeAttribute("disabled");
			document.getElementsByName('birth_mm')[0].removeAttribute("disabled");
			document.getElementsByName('birth_d')[0].removeAttribute("disabled");
			document.getElementsByName('gender')[0].removeAttribute("disabled");
			document.getElementsByName('tel')[0].removeAttribute("disabled");
			document.getElementsByName('email')[0].removeAttribute("disabled");
			
			var modBtn = document.getElementsById('modBtn')[0];
			console.log(modBtn.innerHTML);
			modBtn.innerHTML == "저장";
			
			
		}else{
			location.replace('${contextPath}/myPage.do');
			alert('수정이 취소되었습니다');
		}
		
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
                            <a href="${contextPath }/main.do">Home</a>
                            <a href="#">Pages</a>
                            <span>MY PAGE</span>
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
                                	<!--  <input type="text" name="id" disabled="disabled" value = "${member.id}"/>-->
                                <h3>비밀번호</h3>
                                	<input type="password" name="pw" disabled="disabled" value = "test" />
                                <h3><input type = "hidden" value = "비밀번호 확인" name = "pwChkTxt" id="delOutline"></h3>
                                	<input type="hidden" name="pwChk" disabled="disabled" value = "test"/>
                                	<!--  <input type="password" name="pw" disabled="disabled" value = "${member.pw}"/>-->
                                <h3>이름</h3>
                                	<input type="text" name="name" disabled="disabled" value = ""/>
                                	<!--  <input type="password" name="pw" disabled="disabled" value = "${member.name}"/>-->
                                <h3>생년월일</h3>
                                	<div class="birth">
                                		<div class="birth_yy">
                                			<input type="text" name="birth_y" disabled="disabled"/>
                                			<!-- <input type="text" name="birth_y" disabled="disabled" value = "${member.birth_y} 년"/> -->
                                		</div>
                                		<div class="birth_mm">
                                			<input type = "text" name = "birth_mm" disabled="disabled"/>
                                			<!-- <input type = "text" name = "birth_mm" disabled="disabled" value = "${member.birth_mm}"/> -->
                                		</div>
                                		<div class="birth_dd">
                                			<input type="text" placeholder="일" name="birth_d" disabled="disabled"/>
                                			<!-- <input type="text" placeholder="일" name="birth_d" disabled="disabled" value = "${member.birth_d}"/> -->
                                		</div>
                                	</div>
                                <h3>성별</h3>
                                	<select name="gender" disabled="disabled">
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