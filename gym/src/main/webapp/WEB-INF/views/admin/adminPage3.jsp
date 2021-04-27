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
						  <li role="presentation"><a href="${contextPath }/adminPage2.do"><span class="span">강사관리</span></a></li>
						  <li role="presentation" class="active"><a href="${contextPath }/adminPage3.do"><span class="span">커리큘럼</span></a></li>
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
							<th style="width: 5%;">타입</th>
							<th style="width: 20%;">내용</th>
							<th style="width: 5%;">가격</th>
							<th style="width: 10%;">강사아이디</th>
							<th style="width: 5%;">삭제</th>
						<tr>
					</thead>
					<tbody style="padding: 10%;">
					<c:choose>
  						<c:when test="${empty courseList }" >
						<tr >
							<td colspan="6"><span style="font-size: 15px;">등록된 클래스가 없습니다.</span></td>
						</tr>
					 </c:when>
					  <c:when test="${courseList !=null }" >
					  <c:forEach  var="list" items="${courseList }" >
						<tr style="border-bottom:1px solid white; border-collapse: collapse;">
							<td><span>${list.courseid}</span></td>
							<td><span>${list.type} </span></td>
							<td><span>${list.content}</span></td>
							<td><span>${list.price} </span></td>	
							<td><span>${list.id}</span></td>
							<td><a href="${contextPath }/delcourse.do?courseid=${list.courseid}"><span>삭제</span></a></td>
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
		<br>
		<br>
	</section>
</body>

</html>