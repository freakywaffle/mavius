<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="en" id="html">


<head>

	<meta charset="utf-8">
	<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
	<meta name="description" content="">
	<meta name="author" content="">

	<title>Simple Sidebar - Start Bootstrap Template</title>

	<!-- Bootstrap core CSS -->
	<link href="/sidebar/vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">
	<!--"vendor/bootstrap/css/bootstrap.min.css"-->
	<!-- Custom styles for this template -->
	<link href="/member/mypage/css/boardlist.css" rel="stylesheet">

	<!-- Custom styles for this template -->
	<script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo"
	 crossorigin="anonymous"></script>
	<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.3/umd/popper.min.js" integrity="sha384-ZMP7rVo3mIykV+2+9J3UJ46jBk0WLaUAdn689aCwoqbBJiSnjAK/l8WvCWPIPm49"
	 crossorigin="anonymous"></script>
	<script src="/bootstrap-4.1.3/bootstrap-4.1.3/dist/js/bootstrap.min.js" integrity="sha384-ChfqqxuZUCnJSK3+MXmPNIyE6ZbWh2IMqE241rYiqJxyMiZ6OW/JmZQ5stwEULTy"
	 crossorigin="anonymous"></script>
</head>


<body id="body">
	<div id="hiririk">

		<jsp:include page="/member/mypage/mypageheader.jsp"></jsp:include>


		<jsp:include page="/sidebar/sidebar.jsp"></jsp:include>


		<main id="main">



			<!--마이페이지 로그인 시-->

			<div class="box board-title">
				<h1>MYPAGE</h1>
				<h3>마이페이지</h3>

			</div>


			<section id="form-login" class="box">
				<div class="pwd-box">
					<div class="subtitle">
						<h3>내가 쓴 게시글</h3>
					</div>
					<div class="searchtxt">
						<form action="boardlist" method="get" id="option-form">

							<select>
								<option value="">전체게시판</option>
								<option value="archer">아처게시판</option>
								<option value="magician">법사게시판</option>
								<option value="pirate">해적게시판</option>
								<option value="rogue">도적게시판</option>
								<option value="warrior">전사게시판</option>
								<option value="coordi">코디게시판</option>
								<option value="free0">자유게시판</option>
								<option value="server">서버게시판</option>
								<option value="boss">보스공략게시판</option>
								<option value="job">직업공략게시판</option>
							</select>

							<div class="d6">
								<div class="d6-d">
									<input type="text" name="keyword" placeholder="검색어 입력해주세요">
									<button type="submit"></button>
								</div>

							</div>
							<input type="hidden" value="" name="page" />
							<input type="hidden" value="${param.catalog }" name="catalog" />
						</form>
					</div>
					<div class="submenu2">
					
							<div class="submenu-cat">
								<ul>
									<li class="subcat-md"><a>작성일</a></li>
									<li class="subcat-sm"><a>게시판 분류</a></li>
									<li class="subcat-lg"><a>제    목</a></li>
									<li class="subcat-sm"><a>조회수</a></li>
									<li class="subcat-sm"><a>추천수</a></li>
								</ul>
							</div>
							<c:forEach var="board" items="${list}">
							<div class="submenu-cat">
								<ul>
									<li class="subcat-md"><a>${board.regDate }</a></li>
									<li class="subcat-sm"><a>${board.catalog}</a></li>
									<li class="subcat-lg"><a href="/board/${board.catalog }/detail?no=${board.no }">${board.title }</a></li>
									<li class="subcat-sm"><a>${board.hit }</a></li>
									<li class="subcat-sm"><a>${board.recommend }</a></li>
								</ul>
							</div>
							</c:forEach>


						</div>
					<%-- <div class="pagerbox">
						<nav>
							<ul class="pager-list">
								<li class="pager-item"><a class="pager-link" href="#"> < </a> </li> 
								
								<c:set var="page" value="1" />

								<c:if test="${not empty param.page}">
									<c:set var="page" value="${param.page}" />
								</c:if>
								
								<c:forEach var="i" begin="${startPage }" end="${endPage }">
									
									<c:set var="cls" value="${i==page?'strong':''}" />
									
									<li class="pager-item">
									<a class="pager-link ${cls}" href="?p=${i}"> ${i} </a>
									</li>
									
								</c:forEach>	
								
								<li class="pager-item"><a class="pager-link" href="#"> > </a></li>
							</ul>
						</nav>
					</div> --%>
					<jsp:include page="/inc/pager.jsp"></jsp:include>
					
				</div>

			</section>
		</main>
	</div>
	</div>
	</div>


</body>

</html>