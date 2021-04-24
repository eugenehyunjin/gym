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
<script type="text/javascript">

	function checkDel(url, masterid){
		var result = confirm('삭제 하시겠습니까?');
		if(result){
			var form = document.createElement('form');
			form.setAttribute('method','post');
			form.setAttribute('action',url);
			var input = document.createElement('input');
			input.setAttribute('type','hidden');
			input.setAttribute('name','id');
			input.setAttribute('value',masterid);
			form.appendChild(input);
			document.body.appendChild(form);
			form.submit();
		}
	}
</script>
<script src="http://code.jquery.com/jquery-latest.js"></script>
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
						  <li role="presentation"><a href="${contextPath }/adminPage1.do"><span class="span">회원관리</span></a></li>
						  <li role="presentation" class="active"><a href="${contextPath }/adminPage2.do"><span class="span">강사관리</span></a></li>
						  <li role="presentation"><a href="${contextPath }/adminPage3.do"><span class="span">커리큘럼</span></a></li>
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
							<th style="width: 5%;">이름</th>
							<th style="width: 5%;">생일(년)</th>
							<th style="width: 5%;">생일(월)</th>
							<th style="width: 5%;">생일(일)</th>
							<th style="width: 5%;">성별</th>
							<th style="width: 10%;">전화번호</th>
							<th style="width: 10%;">이메일</th>
							<th style="width: 10%;">가입일</th>
							<th style="width: 10%;">사진</th>
							<th style="width: 5%;">삭제</th>
						<tr>
					</thead>
					
					<tbody style="padding: 10%;">
					<c:choose>
  						<c:when test="${masterList ==null }" >
						<tr >
							<td><span></span></td>
							<td><span>등록된 강사가 없습니다.</span></td>
							<td><span><span></td>
							<td><span></span></td>
						</tr>
					 </c:when>
					  <c:when test="${masterList !=null }" >
					  <c:forEach  var="masterList" items="${masterList }" >
						<tr style="border-bottom:1px solid white; border-collapse: collapse;">
							<td><span>${masterList.id}</span></td>
							<td><span>${masterList.pwd} </span></td>
							<td><span>${masterList.name}</span></td>
							<td><span>${masterList.birth_y} </span></td>	
							<td><span>${masterList.birth_m}</span></td>
							<td><span>${masterList.birth_d} </span></td>	
							<td><span>${masterList.gender}</span></td>
							<td><span>${masterList.tel} </span></td>	
							<td><span>${masterList.email}</span></td>
							<td><span>${masterList.joindate}</span></td>
							<td><span><img src='${contextPath }/download?imageFileName=${masterList.name }.png'></span></td>
							<td><input type="button" onclick="checkDel('${contextPath}/masterDel.do','${masterList.id}')" style="background-color: orange;" value="삭제"></td>
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
			<div class="col-lg-12" style="text-align: center;">

			<a href="${contextPath}/masterForm.do" class="primary-btn">강사추가하기</a>
		</div>
		<br>
		<br>
		<br>
	</section>
</body>

</html>