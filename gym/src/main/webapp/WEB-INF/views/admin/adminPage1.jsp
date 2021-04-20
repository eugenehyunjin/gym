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
<script src="http://code.jquery.com/jquery-latest.js"></script>
<script type="text/javascript">

	function checkDel(url, memberid){
		var result = confirm('삭제 하시겠습니까?');
		if(result){
			var form = document.createElement('form');
			form.setAttribute('method','post');
			form.setAttribute('action',url);
			var input = document.createElement('input');
			input.setAttribute('type','hidden');
			input.setAttribute('name','id');
			input.setAttribute('value',memberid);
			form.appendChild(input);
			document.body.appendChild(form);
			form.submit();
		}
	}
</script>

<style type="text/css">
.span{
	color: orange;
	font-size: 20px;
}
</style>
</head>
<body class="class-timetable-section">

    <!-- nav Section Begin -->
    <section class="contact-section spad">
        <div class="container">
        	<div class="row">
                <div class="col-lg-12 text-center">
			        <div role="navigation">
			          <ul class="nav nav-tabs">
						  <li role="presentation" class="active"><a href="${contextPath }/adminPage1.do"><span class="span">회원관리</span></a></li>
						  <li role="presentation"><a href="${contextPath }/adminPage1.do"><span class="span">강사관리</span></a></li>
						  <li role="presentation"><a href="${contextPath }/adminPage1.do"><span class="span">커리큘럼</span></a></li>
					</ul>
					</div>
				</div>
			</div>
        </div>
    </section>
    <!-- nav Section End -->
    
    <section>
		<div class="container">

			<div class="class-timetable">
				<table>
					<thead>
						<tr>
							<th style="width: 10%;">아이디</th>
							<th style="width: 10%;">비밀번호</th>
							<th style="width: 10%;">이름</th>
							<th style="width: 5%;">생일(년)</th>
							<th style="width: 5%;">생일(월)</th>
							<th style="width: 5%;">생일(일)</th>
							<th style="width: 5%;">성별</th>
							<th style="width: 10%;">전화번호</th>
							<th style="width: 10%;">이메일</th>
							<th style="width: 10%;">가입일</th>
							<th style="width: 5%;">삭제</th>
						<tr>
					</thead>
					<tbody style="padding: 10%;">
					<c:choose>
  						<c:when test="${memberList ==null }" >
						<tr >
							<td><span></span></td>
							<td><span>등록된 회원이 없습니다.</span></td>
							<td><span><span></td>
							<td><span></span></td>
						</tr>
					 </c:when>
					  <c:when test="${memberList !=null }" >
					  <c:forEach  var="memberList" items="${memberList }" >
						<tr style="border-bottom:1px solid white; border-collapse: collapse;">
							<td><span>${memberList.id}</span></td>
							<td><span>${memberList.pwd} </span></td>
							<td><span>${memberList.name}</span></td>
							<td><span>${memberList.birth_y} </span></td>	
							<td><span>${memberList.birth_m}</span></td>
							<td><span>${memberList.birth_d} </span></td>	
							<td><span>${memberList.gender}</span></td>
							<td><span>${memberList.tel} </span></td>	
							<td><span>${memberList.email}</span></td>
							<td><span>${memberList.joindate}</span></td>
							<td><input type="button" onclick="checkDel('${contextPath}/memberDel.do','${memberList.id}')" style="background-color: orange;" value="삭제"></td>
							
						</tr>
				   </c:forEach>
     				</c:when>
     				</c:choose>
					</tbody>	
				</table>
			</div>
		</div>
		</div>
		</div>
		<br>
		<br>
		<br>
			<div class="col-lg-12" style="text-align: center;">

			<a href="${contextPath}/masterForm.do" class="primary-btn">강사추가하기</a>
		</div>
		<br>
		<br>
		<br>
	</section>
</body>

</html>