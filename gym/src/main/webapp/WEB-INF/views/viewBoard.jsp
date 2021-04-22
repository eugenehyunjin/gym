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
<title>공지사항</title>
<script src="http://code.jquery.com/jquery-latest.js"></script>
<script type="text/javascript">
	

	
	function fncancle(){
		
		location.href='${contextPath}/blog.do';
	} 
	
	function fn_modify(){
		
		
		document.getElementById("title").disabled=false;
		document.getElementById("contents").disabled=false;
		
		document.getElementById("mod").style.display="none"
		document.getElementById("mod_ok").style.display="block";
	
		document.getElementById("title").style.background="gray";
		document.getElementById("contents").style.background="gray";
		document.getElementById("title").focus();
		
	}
	
	function fn_modifyok(obj) {
		
		var value = confirm('수정 하시겠습니까?')
		if(value == true){
			
			obj.action ='${contextPath}/modifyBoard.do';
			obj.submit();
		}
	}
	
	
	
	function fn_delete() {
		
		var value = confirm('삭제 하시겠습니까?')
		if(value == true){
			
			location.href='${contextPath}/deleteBoard.do?brd_no=${board.brd_no}';
			
		}
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
		
	#contents{
	font-size: 30px;
		color: white;
	}
	
	.col-lg-12 .leave-comment input, select, option {
		font-size: 20px;
		color: white;
	}
	
	.btn {
		clear:both;
		width:100%;
		display: inline-flex;
	
		text-align:center;
	}
	
	.btn input {
		margin: 20px;
		padding: 10px; 
	}
</style>


</head>
<body>

<!-- Breadcrumb Section Begin -->
	<section class="breadcrumb-section set-bg" data-setbg="resources/img/breadcrumb-bg.jpg">
		<div class="container">
			<div class="row">
				<div class="col-lg-12 text-center">
					<div class="breadcrumb-text">
						<h2>BOARD</h2>
						<div class="bt-option">
							<a href="./main.do">Home</a>
							<a href="#">Pages</a>
							<span>Board</span>
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
									<br>
									<br>
									
									<h2 style="color: #f36100;">공지사항</h2>
									
									<form name="frm" class="frm" id="frm" method="post" action="${contextPath}">
										<h3>제목</h3>
                                			<input type="text" style="border: 1px solid;" name="title" id="title" value="${board.title}" disabled= />
										
                                			<h3>내용</h3>
                                				<textarea style="font-size:large; height: 500px; border:1px solid white; border-collapse: collapse;" name="contents" id="contents" disabled >${board.contents}</textarea>
                               		     		<input type="hidden" value="${board.brd_no}" name="brd_no">
                               			
									</form>
                               				<br>
                               				<br>
                               				<br>
                               				<c:if test="${id eq 'admin'}">
                               				<div style="width: 783px; text-align: center; display: inline-flex; ">
                               					
                               					<input style="background:#f36100; display:block" id="mod" type="button"  value="수 정" onclick="fn_modify()"/>&nbsp;&nbsp;&nbsp;
                               					<input style="background:#f36100; display:none;" id="mod_ok"  type="button" value="수정완료하기" onclick="fn_modifyok(frm)"/>&nbsp;&nbsp;&nbsp;
                               					<input style="background: #f36100;" type="button"  value="삭 제 " onclick="fn_delete()"/>&nbsp;&nbsp;&nbsp;
                               					<input style="background: #f36100;" type="submit"  value="뒤로가기 "onclick="fncancle()"/>
                               					
                               				</div>
                               				</c:if>
											
											<c:if test="${id != 'admin'}">
											<input style="background: #f36100;" type="submit"  value="뒤로가기 "onclick="fncancle()"/>
											</c:if>
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