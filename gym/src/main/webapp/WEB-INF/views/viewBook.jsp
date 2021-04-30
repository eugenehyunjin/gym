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
<style>
	h3 {
		font-family: '고딕';
		color: #f36100;
		margin-bottom: 30px;
	}
	table {
		text-align: center;
		color: white;
		font-family: '고딕';
	}
	th {
		font-size: 20px;
		padding-bottom: 20px;
	}
	td {
		padding-bottom: 5px;
	}
	span {
		font-size: 18px;
	}
	input {
		font-size: 16px;
		background-color: #f36100;
		width: 80px;
		margin-top: 5px;
	}
</style>
<script src="http://code.jquery.com/jquery-latest.js"></script>
<script type="text/javascript">
	function checkDel(book_id, date, time){
		$.ajax({
			url : "${contextPath}/deleteBook.do",
			data : { book_id : book_id },
			type : 'post',
			success(result, status){
				alert(date + " " + time + " 예약이 삭제 되었습니다.");
				location.reload();
			}
		});
	}
	$(document).ready(function(){
		
		$('.payBtn').click(function(){
			if(confirm('결제하시겠습니까?')){
				this.value = "결제완료";
				this.setAttribute("style", "width: 90; color:red;");
				this.setAttribute("disabled", "disabled");
			}
		});
	});
	
</script>
</head>
<body>
<!-- Breadcrumb Section Begin -->
    <section class="breadcrumb-section set-bg" data-setbg="resources/img/breadcrumb-bg.jpg">
        <div class="container">
            <div class="row">
                <div class="col-lg-12 text-center">
                    <div class="breadcrumb-text">
                        <h2>VIEW MY BOOKING</h2>
                        <div class="bt-option">
                            <a href="./index.html">Home</a>
                            <a href="#">Book</a>
                            <span>My Booking</span>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>
    <!-- Breadcrumb Section End -->
    
    <!-- Class Details Section Begin -->
    <section class="class-details-section spad">
    <div class="container">
    <form name="form">
    	<c:if test="${memberVO.name == null }">
    		<h3>로그인을 해주세요</h3>
    	</c:if>
    	<c:if test="${memberVO.name != null }">
    		<h3>${memberVO.name} 님의 예약 정보</h3>
    	</c:if>
    	<table>
			<thead>
				<tr>
					<th style="width: 10%;">예약날짜</th>
					<th style="width: 10%;">예약시간</th>
					<th style="width: 5%;">예약종류</th>
					<th style="width: 5%;">강사</th>
					<th style="width: 10%;">예약일</th>
					<th style="width: 5%;">결제</th>
					<th style="width: 5%;">삭제</th>
				<tr>
			</thead>
			<tbody style="padding: 10%;">
			<c:choose>
				<c:when test="${booklist ==null }" >
				<tr>
					<td colspan="7"><span style="color: #f36100;">예약이 없습니다.</span></td>
				</tr>
			 	</c:when>
			  	<c:when test="${booklist !=null }" >
					<c:forEach  var="book" items="${booklist }">
					<tr style="border-bottom:1px solid white; border-collapse: collapse;">
						<td><span>${book.book_date } </span></td>
						<td><span>${book.book_time }</span></td>
						<td><span>${book.course_id }</span></td>	
						<td><span>${book.master_id }</span></td>
						<td><span>${book.bookdate } </span></td>
						<td><input type="button" class="payBtn" value="결제"></td>
						<td><input type="button" onclick="checkDel('${book.book_id }', '${book.book_date }', '${book.book_time }')" value="삭제"></td>
					</tr>
		   			</c:forEach>
   				</c:when>
   			</c:choose>
			</tbody>	
		</table>
		</form>
		</div>
    </section>
    
</body>
</html>