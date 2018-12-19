<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link href="/css/targetboardlist.css" rel="stylesheet">
<link rel="stylesheet"
	href="https://use.fontawesome.com/releases/v5.5.0/css/all.css">
<script src="/js/targetboardlist.js"></script>
</head>
<body>
	<div id="hiririk">
		<jsp:include page="/sidebar/header.jsp" />
		<jsp:include page="/sidebar/sidebar.jsp" />

		<div class="blank"></div>
		<div class="head-border-line"></div>
		<div class="wrapper">
			<section class="board-header">
				<h1 class="border-title text-center font-medium"><a href="list">ARCHER</a></h1>
				<h3 class="text-center">공략게시판</h3>
				<div class="menu-bar text-right">
					<a class="btn btn-outline-secondary" href="reg">글쓰기</a>
				</div>
			</section>
			<section class="main">	
				<form action="list" method="get" class="input-group target-search-form" id="listForm">
					<h3 class="hidden">검색폼</h3>
                    <select class="form-control option" name="option">
                        <option value="title">제목</option>
                        <option value="content">내용</option>
                    </select>
                    <input class="form-control search" type="text" name="keyword" placeholder="검색어를 입력하쎄용"/>
                    <span class="input-group-btn">
                        <button class="btn btn-secondary" type="submit">
                            <i class="fas fa-search"></i>
                        </button>
                    </span>
                    <input type="hidden" value="${param.category }" name="category">
                    <input type="hidden" name="page"/>
                </form>
				<div class="main-page block-flex margin-top">
					<div>
						<h1 class="hidden">모아보기 리스트</h1>
						<div class="simbol action">
							<img onclick="location.href='list?category=보우마스터'" alt="보우마스터" src="/images/catalog1.png">
						</div>
						<div class="simbol action">
							<img onclick="location.href='list?category=신궁'" alt="신궁" src="/images/catalog2.png">
						</div>
						<div class="simbol action">
							<img onclick="location.href='list?category=메르세데스'" alt="메르세데스" src="/images/catalog3.png">
						</div>
						<div class="simbol action">
							<img onclick="location.href='list?category=윈드브레이커'" alt="윈드브레이커" src="/images/catalog4.png">
						</div>
						<div class="simbol action">
							<img onclick="location.href='list?category=와일드헌터'" alt="와일드헌터" src="/images/catalog5.png">
						</div>
					</div>
					<div class="target-board-main">
						<section class="target-board">
							<div class="vertical-line"></div>

							<h1 class="hidden">목록</h1>
							<c:forEach var="board" items="${list}">
								<div class="board-content">
									<div class="horizontal-line"></div>
									<div class="category">${board.category }</div>
									<div class="body">
										<div class="content-title font-bold">
											<a href="detail?no=${board.no }">${board.title }</a>
										</div>
										<ul class="inline-list font-light">
											<li><i class="fas fa-chalkboard-teacher"></i>&nbsp;${board.writerId }</li>
											<li><i class="far fa-clock"></i>&nbsp;${board.regDate }</li>
											<li><i class="far fa-comment"></i>&nbsp;${board.replyCnt }</li>
											<li><i class="fas fa-book-reader"></i>&nbsp;${board.hit }</li>
											<li><i class="far fa-thumbs-up"></i>&nbsp;${board.recommend }</li>
										</ul>
									</div>
								</div>
							</c:forEach>
						</section>
						<jsp:include page="/inc/pager.jsp" />
					</div>
				</div>
			</section>
		</div>
	</div>
</body>
</html>