<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
    isELIgnored="false"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"  %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>수강생 정보</title>
<style>
	h2{text-align:center; margin-top: 20px;}
	table{text-align:center; width:100%;border-collapse: collapse;}
	tr{border-bottom: 1px solid black;}
	tr:hover{background-color:lightgray;}
	td{line-height: 200%;}
</style>
<script>
	window.onload = function(){
		var count = document.getElementsByClassName('memberCount').length;
		console.log(count);
		document.getElementsByTagName('h5')[1].innerHTML = "수강생 / "+count+"명";
	}
	</script>
</head>
<body style= "height: 500px;">
	<h2 style = "line-height: 140%;">수강생 정보</h2>
		<h5 style = "text-align:right;line-height: 50%;">강사 / ${param.name }</h5>
		<h5 style = "text-align:right;line-height: 50%;"></h5>
		<table>
			<tr style = "width:20%;background-color:#ff8c40;">
				<td width="10%;">이름</td>
				<td width="10%;">성별</td>
				<td width="20%">수업일</td>
				<td width="10%">수업시간</td>
				<td width="30%;">전화번호</td>
				<td width="30%;">이메일</td>
			</tr>
			<!-- 
				<tr>
					<td style = "text-align:center;color:black;height: 200px;" colspan="6"><h5>예약한 회원이 없습니다</h5></td>
				</tr>
				-->
				<tr class = "memberCount">
				<td>홍길동</td>
				<td>남성</td>
				<td>2021/04/26</td>
				<td>20:00</td>
				<td>01012345678</td>
				<td>hong@test.gmail</td>
			</tr>
			<tr class = "memberCount">
				<td>김유신</td>
				<td>남성</td>
				<td>2021/04/23</td>
				<td>08:00</td>
				<td>01012345678</td>
				<td>kim@test.gmail</td>
			</tr>
			<tr class = "memberCount">
				<td>김유신</td>
				<td>남성</td>
				<td>2021/04/23</td>
				<td>08:00</td>
				<td>01012345678</td>
				<td>kim@test.gmail</td>
			</tr>
			<tr class = "memberCount">
				<td>김유신</td>
				<td>남성</td>
				<td>2021/04/23</td>
				<td>08:00</td>
				<td>01012345678</td>
				<td>kim@test.gmail</td>
			</tr>
		</table>
</body>
</html>