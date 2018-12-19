<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link href="/css/targetboarddetail.css" rel="stylesheet">
<link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.5.0/css/all.css">
</head>
<body>
	<div id="hiririk">
        <jsp:include page="/sidebar/header.jsp" />
		<jsp:include page="/sidebar/sidebar.jsp" />
	    <div class="blank"></div>
		<div class="head-border-line"></div>
		<div class="wrapper">
		<section class="board-header">
				<h1 class="border-title text-center font-medium">ARCHER</h1>
				<h3 class="text-center">공략게시판</h3>
				<div class="menu-bar text-right">
					<a class="btn btn-outline-secondary" href="list">목록으로</a>
				</div>
				</section>
			<section class="main">
				<div class="main-page block-flex margin-top">
					<div>
						<h1 class="hidden">모아보기 리스트</h1>
						<section class="detail-simbol">
							<img alt="카테고리1" src="/images/pinkbean2.jpg">
						</section>
					</div>
					<div class="target-board-main">
						<div class="vertical-line"></div>
						<section class="target-board">		
							
							<h1 class="hidden">게시물내용</h1>
							<div class="first-div detail-header">
								<div class="horizontal-line"></div>
								<div class="category">${board.category }</div>
								<div class="body">
									<div class="detail-title font-bold"><a>${board.title }</a> &nbsp;&nbsp;&nbsp;<a href="#"><i class="far fa-star"></i></a></div>
									<ul class="inline-list font-light">
										<li><i class="fas fa-chalkboard-teacher"></i>&nbsp;${board.writerId }</li>
										<li><i class="far fa-clock"></i>&nbsp;${board.regDate }</li>
										<li><i class="far fa-comment"></i>&nbsp;${board.replyCnt }</li>
										<li><i class="fas fa-book-reader"></i>&nbsp;${board.hit }</li>
										<li><a href="#"><i class="far fa-thumbs-up"></i>&nbsp;${board.recommend }</a></li>
										<li><a href="#">신고</a></li>
									</ul>
								</div>
							</div>
							<div class="downFiles">
								첨부파일
								<ul>
									<c:forEach var="file" items="${fileList}">
										<li><a href="/target/archer/${file.saveName }" download>${file.name}</a></li>
									</c:forEach>
								</ul>
							</div>
							<div class="detail-content">
								${board.content }
							</div>
							<div class="detail-navi">
								<ul class="inline-list">
									<li><a href="#"><i class="fas fa-angle-left"></i>&nbsp;이전글</a></li>
									<li><a href="#">다음글&nbsp;<i class="fas fa-angle-right"></i></a></li>
								</ul>	
							</div>
						</section>
						<section class="target-replys">
							<h1>COMMENTS&nbsp;<span>${board.replyCnt }</span></h1>
							<c:forEach var="reply" items="${replyList}">
								<div class="detail-reply">
									<div class="reply-writer"><i class="fas fa-user"></i>&nbsp;${reply.writerId }</div>
									<div class="write-time"><i class="far fa-clock"></i>&nbsp;${reply.regDate }</div>
									<div class="reply-text">${reply.content }</div>
									<div class="report"><a href="#">신고</a></div>
								</div>
							</c:forEach>
						</section>
						<section class="detail-reply-pager">
							<h1 class="hidden">페이저</h1>
							<i class="fas fa-caret-left inline"></i>
							<ul class="inline-list">
								<li class="font-bold underline"><a href="#">1</a></li>
								<li><a href="#">2</a></li>
								<li><a href="#">3</a></li>
								<li><a href="#">4</a></li>
								<li><a href="#">5</a></li>
							</ul>
							<i class="fas fa-caret-right inline"></i>
						</section>
						<section class="reply-reg-form">
							<textarea></textarea>
							<input class="btn-write" type="submit" />
						</section>
					</div>
					
				</div>
			</section>	
		</div>
	</div>
</body>
</html>