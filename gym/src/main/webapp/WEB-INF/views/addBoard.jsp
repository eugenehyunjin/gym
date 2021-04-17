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
	
	function fnempty(){
		let title = document.getElementsByName("title")[0].value;
		let content = document.getElementsByName("content")[0].value;
		
		var frm = document.frm;
		
		
		if(title == null || title == ''){
			alert('제목을 입력해주세요');
			document.getElementsByName('title')[0].focus();
		} else if(content == null || content == '')
			alert('내용을 입력해주세요');
			document.getElementsByName('content')[0].focus();
			
		}else{
			frm.method = 'post';
			frm.action = '${contextPath}/addNewBoard.do';
			frm.submit();
		}
	}
	
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
		
	
	.col-lg-12 .leave-comment input, select, option {
		font-size: 20px;
		color: white;
	}
	
	.btn {
		clear:both;
		width:100%;
		display: inline-flex;
		padding:50px;
		text-align:center;
	}
	
	.btn input {
		margin: 50px;
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
							<span>board</span>
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
									
									<form name="frm" class="frm">
										<h4>제목</h4>
                                			<input type="text" name="title" id="title" placeholder="제목입력"/>
										
                                			<h3>내용</h3>
                                				<textarea style="width 2000px; height: 300px;" name="content" id="content"/>
                               		
                               				<div class="btn">
                               					<input style="background: #f36100;" type="button" class="primary-btn" value="작성하기 " onclick="fnempty()">
                               					<input style="background: #f36100;" type="button" class="primary-btn" value="취소" onclick="fncancle()">
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