<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>이벤트 디테일</title>
	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-beta/css/bootstrap.min.css" integrity="sha384-/Y6pD6FV/Vv2HJnA6t+vslU6fwYXjCFtcEpHbNJ0lyAFsXTsjBbfaDjzALeQsN6M" crossorigin="anonymous">
	<link rel="stylesheet" href="../../css/news/newslist.css">
	<!-- <link rel="stylesheet" href="../../admin/css/notice-detail.css"id="bootstrap-css">
	<link href="../../admin/css/aside-left.css" rel="stylesheet" 	id="bootstrap-css"> -->

</head>
<body>

<div id="">
	<!-- 왼쪽 사이드바 메인헤더 -->
	<%-- <jsp:include page="../../admin/inc/header.jsp"/> --%>
<jsp:include page="/sidebar/header.jsp" />
<!-- 오른쪽쪽 사이드바 로그인메뉴 -->
<jsp:include page="/sidebar/sidebar.jsp" />
			
	<main>
		<!-- 메인바디헬더 -->
		<div class="main-body-div">
	        <div class="main-body-header">
	            <h1 class="text-center">E v e n t</h1>
	            <h3 class="text-center">이 벤 트</h3>
	        </div>
        </div>
		
		<!-- 디테일  -->
		<div>
			<nav class="navbar navbar-light" style="background-color: #e3f2fd;">
				<a class="nav-link disabled"><h2>공지사항</h2></a>
			</nav>
			<nav class="navbar navbar-expand-lg navbar-light bg-light">
				<a class="nav-link disabled">제목</a>
			</nav>
			
			<div class="news-detail-hit">
				<ul class="nav justify-content-end">
				  <li class="nav-item">
				  	<!-- 조회수 -->
				    <a class="nav-link disabled"><i class="fas fa-eye"></i>555</a>
				  </li>
				  <li class="nav-item">
				 	<!-- 작성일 -->
				    <a class="nav-link disabled"><i class="fas fa-clock"></i>2018-11-11</a>
				  </li>
				</ul>
			</div>
			
			<div class="news-detail-writer">
				<!-- <input class="col-xs-2 col-md-2 form-control" id="nickName" name="nickName"
					placeholder="" type="text" required autofocus disabled/> -->
				<textarea class="col-md-2 form-control ta" id="message" name="message"
				placeholder="Message" rows="1" disabled>작성자</textarea>	
			</div>
			
			<div class="news-detail-content" style="border-bottom: 1px solid black;">
				<textarea class="col-md-12 form-control ta" id="message" name="message"
					placeholder="Message" rows="15" disabled>내용</textarea>											
			</div>
			
			<div class="news-detail-backlist">
				<ul class="nav justify-content-end">
				  <li class="nav-item">
				    <a class="btn btn-dark btn-lg" href="#">목록</a>
				  </li>
				</ul>
			</div>
		</div>
		
		
	
	</main>	
			
</div>
<script defer src="https://use.fontawesome.com/releases/v5.0.8/js/solid.js" integrity="sha384-+Ga2s7YBbhOD6nie0DzrZpJes+b2K1xkpKxTFFcx59QmVPaSA8c7pycsNaFwUK6l" crossorigin="anonymous"></script>
<script defer src="https://use.fontawesome.com/releases/v5.0.8/js/fontawesome.js" integrity="sha384-7ox8Q2yzO/uWircfojVuCQOZl+ZZBg2D2J5nkpLqzH1HY0C1dHlTKIbpRz/LG23c" crossorigin="anonymous"></script>
</body>
</html>