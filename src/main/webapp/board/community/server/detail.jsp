<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.5.0/css/all.css" integrity="sha384-B4dIYHKNBt8Bc12p+WXckhzcICo0wtJAoU8YZTY5qE0Id1GSseTk6S+L3BlXeVIU" crossorigin="anonymous">
<link href="../../../css/Detail.css" type="text/css" rel="stylesheet" />
<title>서버게시판 -디테일</title>
</head>
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
	<main id="detail-main">
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
	
	
		<section id="freeboard-detail">
			<h1 class="hidden">게시글</h1>
			<section class="board-view">
				<h1 class="hidden">게시글 보는 영역</h1>
				<div>
					<ul>
						<li class="fas fa-list-ol"> &nbsp; 1</li>
						<li class="li-title"><span class="fas fa-quote-left"></span>&nbsp;제목&nbsp;<span class="fas fa-quote-right"></span></li>
						<li class="far fa-calendar-alt">등록일</li>
						<li><a href="" class="fas fa-user-circle">작성자</a></li>
						<!-- 작성자 누르면 작성자가 쓴 게시글 볼 수 있게 -->

						<li class="fas fa-heart">추천수</li>
						<li class="fas fa-eye">조회수</li>
						<li class="fas fa-book">스크랩수</li>
					</ul>
					<p class="detail-post">게시글 내용</p>
				</div>
				<div class="txt-align-right board-view-etc">
					<span class="fas fa-edit">글쓰기</span><!-- a 태그로 바꿀시 발생 될 문제 주의하기 -->
					<span class="fas fa-wrench">수정하기</span>
					<span class="fas fa-trash-alt">삭제하기</span>
					<span class="far fa-angry" >신고하기</span>
					<span class="fas fa-thumbs-up">추천하기</span>
					<span class="fas fa-bookmark">스크랩하기</span>
					<!-- <input  type="button" name="btn-reg"> -->
					<!-- <input  class="fas fa-wrench" type="button" name="btn-edit" value="수정하기" />
					<input	class="fas fa-trash-alt" type="button" name="btn-del" value="삭제하기" /> -->
					<!-- 이건 작성자일 때만 보이게  -->
					<!-- <input type="button" name="btn-report" value="신고하기" /> 
					<input  class="fas fa-thumbs-up" type="button" name="btn-rec" value="추천하기" /> 
					<input  class="fas fa-bookmark" type="button" name="btn-scr" value="스크랩하기" /> -->
				</div>
			</section>
			<section class="reply-area">
				<h1 class="hidden">게시글 댓글보고 다는 영역</h1>
				<fieldset>
					<legend>
						<label>댓글(+댓글 갯수)</label>
					</legend>
					<div>
						<ul>
							<li><input type="checkbox" class="hidden"/><a href="">댓글 작성자</a></li>
							<!-- 작성자니까 이 작성자가 쓴 게시글 볼 수 있게 또는 정보를 열람하거나 쪽지 보낼 수 있게 -->
							<li>등록일자</li>
							<li>추천수</li>
						</ul>
						<div class="vertical-align-middle">
						<p>와 너무 재밌어요!!!</p>
						
						<span class="far fa-angry report-location" >신고하기</span>
						</div>
					
					</div>
				
					
					<!-- <div class="txt-align-left"> -->
					<form class="txt-align-left">
						<span>댓글 달기</span> 
						<textarea name="reg-Reply"></textarea>
						<span class="fas fa-edit">글쓰기</span>
						
					</form>
					<!-- </div> -->
				</fieldset>
			</section>
			<section class="hidden admin-manage-area">
				<h1> 관리구역</h1>
				<input type="button" name="btn-manage-reply"value="댓글 삭제하기"/>
				<input type="button" name="btn-manage-detail"value="게시글 삭제하기"/>
			</section>
			
			<div class="detail-right-img">
				<img src="../../../images/side-maple-img-boss.jpg"/>
			</div>
			
			
		</section>
	</main>
	<aside>
		<h1>어사이드</h1>
	</aside>
	
	</body>
</div>
</html>