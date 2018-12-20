<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" isELIgnored="false"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>커뮤니티-자유게시판</title>
<link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.5.0/css/all.css" integrity="sha384-B4dIYHKNBt8Bc12p+WXckhzcICo0wtJAoU8YZTY5qE0Id1GSseTk6S+L3BlXeVIU" crossorigin="anonymous">
<link href="../../css/freeBoardList.css" type="text/css" rel="stylesheet" />
<script src="../../js/communityList.js"></script>
</head>
<!-- 이거 다시만들어야됨 -->
<!--게시글 보기, 수정, 삭제, 댓글, 기본적인 보드 컬럼명 가져오고 타이틀이랑 컨텐트  ,이미지 공간? -->


<!--게시글 보기, 수정, 삭제, 댓글, 기본적인 보드 컬럼명 가져오고 타이틀이랑 컨텐트  ,이미지 공간? -->
<div id="hiririk">
	<header>
	<jsp:include page="/sidebar/header.jsp" />
	</header>
	<aside>
    <jsp:include page="/sidebar/sidebar.jsp" />
    </aside>
	
	<body id="body">
	<section id="header">
		<h1>자유게시판</h1>
	</section>

		<main class="list-main">
			<h1 class="hidden">자유게시판</h1>
			
			<section id="search-form">
				<h1  class="hidden">검색폼</h1>
				<form>
					<fieldset>
						<legend class="hidden">게시글검색폼</legend>
	
						<!-- 디폴트 값으로 현재 게시판 명 -->
						<select>
							<option>전체기간</option>
								<option>최근 1주</option>
								<option>최근 한달</option>
								<option>직접 입력</option>
							</select> 
							<select>
								<option>제목</option>
								<option>제목+내용</option>
								<option>작성자</option>
								
							</select> 
							<input type="text" name="txt-sch" />
							<input type="submit" name="btn-sch" value="검색"/>
					</fieldset>
				</form>
			</section>
			
			<section id="coordi-list">
				<h1 class="hidden">게시글 리스트</h1>
				<c:forEach var="b" items="${list}">
				<div class="margin-bottom view-list content">
					<ul>
						<li class="fas fa-list-ol no content">${b.no}</li>
						<li class="li-category category content">${b.category}</li>
						<input class="hidden" name="no" value="${b.no}"/>
						<li class="li-title title content"><span class="fas fa-quote-left"></span>&nbsp;${b.title}&nbsp;<span class="fas fa-quote-right"></span></li>
					
					</ul>
					<!-- <span><p></p></span> -->
					<p class="coordi-list-p content">${b.content}</p> 
					<%-- <input class="content hidden" value="${b.content}"/> --%> 
					
					<%-- <a href="detail?no=${b.no}"> --%>
					<!-- <span class="coorid-list-p content"> -->
					<%-- <p >${b.content}</p> --%>
					<!-- </a> -->
					<ul >
						<li><a href="" class="fas fa-user-circle writerId content">${b.writerId}</a></li>
						<li class="far fa-calendar-alt regDate content">&nbsp;${b.regDate}</li>
						<li class="fas fa-eye hit content">${b.hit}</li>
						<li class="fas fa-heart recommend content">${b.recommend}</li>
						
					</ul>
					
					<!-- <div class="txt-align-right">
						<span class="fas fa-thumbs-up">추천하기</span>
						<span class="fas fa-bookmark">스크랩하기</span>
					</div> -->
				</div>
				</c:forEach>
				
				

				
		</section>
		
		<div class="txt-aling-left"><!--글쓰기 버튼을 어떻게 할 것인가-->
			<section>
				<h1 class="hidden">등록 영역</h1>
				<div class="margin-left">
					<a href="reg"><span class="fas fa-edit">글쓰기</span></a>
				</div>
				
				<!-- <input type="button" name="btn-del" value="삭제" /> 관리자가 삭제 -->
			</section>
		</div>
		<div class="txt-align-center">
			<section class="pager margin-top">
				<h1 class="hidden">페이저</h1>
				<div class="inline">
					<a href=""><span>이전페이지</span></a>
				</div>
				<ul class="inline-flex">
					<li>1</li>
					<li>2</li>
					<li>3</li>
					<li>4</li>
					<li>5</li>
				</ul>
				<div class="inline">
					<a href=""><span>다음페이지</span></a>
				</div>
			</section>
		</div>
		</main>
		<aside class="hidden">
			<h1>어사이드</h1>
		</aside>
</body>
</div>
</html>