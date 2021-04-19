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
<title>공지사항 작성</title>
<script src="http://code.jquery.com/jquery-latest.js"></script>
<script type="text/javascript">
	

	
	function fncancle(){
		location.href='${contextPath}/blog.do';
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
		
	#content{
	font-size: 20px;
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
									<h2 style="color: #f36100;">공지사항 작성</h2>
									
									<form name="frm" class="frm" method="post" action="${contextPath}/addNewBoard.do">
										<h3>제목</h3>
                                			<input type="text" style="border: 1px solid;" name="title" id="title" placeholder="제목입력" required="required"/>
										
                                			<h3>내용</h3>
                                				<textarea style="width 200px; height: 500px; border:1px solid;" name="content" id="content" placeholder="내용입력" required="required"></textarea>
                               		
                               		
                               			
                               				<div class="btn">
                               					<input style="background: #f36100;" type="submit"  value="작성하기 "/>
                               					<input style="background: #f36100;" type="button"  value="취소" onclick="fncancle()"/>
                               				</div>
									</form>
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