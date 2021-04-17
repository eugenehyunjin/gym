<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" isELIgnored="false"%>
	<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
	<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
	<%
		request.setCharacterEncoding("UTF-8");
	%>
<c:set var="contextPath"  value="${pageContext.request.contextPath}"  />
<c:set  var="articlesList"  value="${articlesMap.articlesList}" />
<c:set  var="totArticles"  value="${articlesMap.totArticles}" />
<c:set  var="section"  value="${articlesMap.section}" />
<c:set  var="pageNum"  value="${articlesMap.pageNum}" />

</head>
<body class="class-timetable-section">
 <!-- Breadcrumb Section Begin -->
    <section class="breadcrumb-section set-bg" data-setbg="resources/img/breadcrumb-bg.jpg">
        <div class="container">
            <div class="row">
                <div class="col-lg-12 text-center">
                    <div class="breadcrumb-text">
                        <h2>공지사항</h2>
                        <div class="bt-option">
                            <a href="${contextPath }/main.do">Home</a>
                            <a href="#">Pages</a>
                            <span>공지사항</span>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>
    <!-- Breadcrumb Section End -->

	<!-- Class Timetable Section Begin -->
	<section>
		<div class="container">
			<div class="row">
				<div class="col-lg-6">
					<div class="section-title">

						<h2>공지 사항</h2>
					</div>
				</div>

			</div>

			<div class="class-timetable">
				<table>
					<thead>
						<tr>
							<th>번호</th>
							<th style="width: 2220px;">내용</th>
							<th style="width: 10%;">작성자</th>
							<th style="width: 10%;">작성날짜</th>
						<tr>
					</thead>
					
					<tbody style="padding: 10%;">
					<c:choose>
  						<c:when test="${articlesList ==null }" >
						<tr>
							<td><span></span></td>
							<td><span>등록된 글이 없습니다.</span></td>
							<td><span><span></td>
							<td><span></span></td>
						</tr>
					 </c:when>
					  <c:when test="${articlesList !=null }" >
					  <c:forEach  var="article" items="${articlesList }" varStatus="articleNum" >
						<tr>
							<td><span>${articleNum.count}</span></td>
							<td><span>${article.title} </span></td>	
							<td><span>${article.id }</span></td>
							<td><span><fmt:formatDate value="${article.writeDate}" />  </span></td>
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


			<a href="${contextPath}/addBoard.do" class="primary-btn">공지사항 작성하기</a>

		</div>
	</section>
</body>

</html>