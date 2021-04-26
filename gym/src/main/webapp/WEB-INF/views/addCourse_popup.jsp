<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
    isELIgnored="false"%>
<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
<%
  request.setCharacterEncoding("UTF-8");
%>
	<c:set var="contextPath" value="${pageContext.request.contextPath }"/>    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>마이페이지 > 클래스 등록창</title>
<script src="http://code.jquery.com/jquery-latest.js"></script>
<script type="text/javascript">
	window.onload = function(){
		document.getElementById('course_id').focus();
	}
	
	
	function courseAdd(){
		
		var price = document.getElementById('price').value;
		var ipChk = document.getElementsByTagName('input');
		
		
		for(var i=0;i<ipChk.length;i++) {
			if(ipChk[i].value == ''){
				if(i == 1) {
					alert('종목은 필수입니다');
					$('html,body').scrollTop(0);
					return;
				}else if(i == 2){
					if(document.getElementById('detail').value == ''){
						alert('커리큘럼 정보를 입력해 주십시오');
						document.getElementById('detail').focus();
						$('html,body').scrollTop(0);
						return;
					}
				}
				
				if(i != 1 || i != 2){
					alert('입력을 완료해 주십시오');
					ipChk[i].focus();
					return;
				}
			}
		}
		
		if(price.includes('원')){
			console.log('include');
			
			var priceSplit = price.split('원')[0];
			console.log(priceSplit);
		}
		
		if(confirm('커리큘럼 신청을 진행하시겠습니까?')){
			var frm = document.frm;
			frm.method='get';
			frm.action='${contextPath}/courseJoin.do';
			frm.submit();
		}else{
			alert('커리큘럼 신청이 취소되었습니다.');
			window.close();
		}
		
		
	} 
</script>
<style>
	body{text-align:left;outline:none;background-color:#2b2b2b;}
	form{margin: 0px 80px;background-color:white;padding:10px 20px;}
	#course_id,#price,#name {width:100%;height:25px;margin-bottom: 20px;}
	#type, #selectTxt{height:25px;}
	#selectTxt{background-color:transparent;color:black;border:1px solid black;padding-left:10px;}
	.Btn{
		width:60%;
		background-color:transparent;
		border:1px solid black;
		text-align:center;
		font-size:14px;
		border-radius: 20px 20px;
		height:35px;
		/*
		margin-left:65px;
		margin-top: 20px;
		margin-bottom: 25px;
		**/
		margin: 20px 80px;
		outline: 0;
	}
	.Btn:hover {background-color:lightgray;}
	.Btn:active {background-color:gray;}
</style>
</head>
<body>
<!-- Master Curriculum -->

<form name="frm" class="frm">
<h2 style = "line-height: 120%;text-align:center;margin-top: 50px;">커리큘럼 신청</h2>
<div style = "height:1px;border:2px solid gray;"></div>
										<h3>커리큘럼 아이디</h3> <!-- 임의로 지정 ? course_id-->
                                			<input type="text" class = "ip1" id = "course_id" name="courseid" />
                                			
										<h3>커리큘럼 종목</h3> <!-- course_type -->
											<select id = "type" onchange="selectChg()">
												<option>종목</option>
												<option>헬스</option>
												<option>요가</option>
												<option>필라테스</option>
												<option>직접 입력</option>
											</select>
											<script>
												function selectChg() {
													document.getElementsByTagName('option')[0].disabled = "true";
													var type = document.getElementById('type').value;
													console.log(type);
													var selectTxt = document.getElementById('selectTxt');
													console.log(selectTxt);
													
							
													selectTxt.value = type;
													
													if(type == '직접 입력'){
														selectTxt.value = "";
														selectTxt.focus();
													}
												}
											</script>
											<input type = "text"id = "selectTxt" name = "type">
										<h3>커리큘럼 정보</h3> <!-- course_detail -->
											<textarea rows="6px" cols="59px;" placeholder="신청할 커리큘럼에 대한 설명 기입" style = "resize: none;" id = "detail" name = "content"></textarea>
										<h3>커리큘럼 가격</h3>
											<input type = "text" id = "price" name = "price">
                               			<h3>트레이너 명</h3>
                               			<input type = "text" id = "name" value = "${param.name }" disabled="disabled" style = "color:black;"/>
                               			<input type = "hidden" id = "id" value = "${param.id }" name = "id"/>
                               			
                        				<input type="button" class="Btn" value="신청" onclick="courseAdd()">
									</form>
</body>
</html>