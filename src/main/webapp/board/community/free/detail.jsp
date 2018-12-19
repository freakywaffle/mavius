<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>커뮤니티-자유게시판</title>
<link rel="stylesheet"
	href="https://use.fontawesome.com/releases/v5.5.0/css/all.css"
	integrity="sha384-B4dIYHKNBt8Bc12p+WXckhzcICo0wtJAoU8YZTY5qE0Id1GSseTk6S+L3BlXeVIU"
	crossorigin="anonymous">
<link href="../../../css/freeBoardDetail.css" type="text/css"
	rel="stylesheet" />
<script src="../../../js/communityDetail.js"></script>
</head>

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
		<main id="detail-main">
		<h1 class="hidden">자유게시판</h1>
		<section id="search-form">
			<h1 class="hidden">검색폼</h1>
			<form>
				<fieldset>
					<legend class="hidden">게시글검색폼</legend>

					<!-- 디폴트 값으로 현재 게시판 명 -->
					<select>
						<option>전체기간</option>
						<option>최근 1주</option>
						<option>최근 한달</option>
						<option>직접 입력</option>
					</select> <select>
						<option>제목</option>
						<option>제목+내용</option>
						<option>작성자</option>

					</select> <input type="text" name="txt-sch" /> <input type="submit"
						name="btn-sch" value="검색" />
				</fieldset>
			</form>
		</section>
		<input name="no" value="${detail.no}" class="hidden"/>
		<input name="writerId" value="${detail.writerId}" class="hidden"/>


		<section id="freeboard-detail">
			<h1 class="hidden">게시글</h1>
			<section class="board-view">
				<h1 class="hidden">게시글 보는 영역</h1>
				<div>
					<ul>
						<li class="no fas fa-list-ol">&nbsp;${detail.no}</li>
						<!--DB에서 게시글 넘버 받아오면 리포트 넘버도 이걸로 받아오기   저장할 그릇 만들고 담아두기 아니면 값이 달라질 수도 있으니까.\-->
						<li class="li-category">${detail.category}</li>
						<li class="li-title"><span class="fas fa-quote-left"></span>&nbsp;${detail.title}&nbsp;<span
							class="fas fa-quote-right"></span></li>
						<li class="far fa-calendar-alt regDate">${detail.regDate}</li>
						<li><a href="" class="fas fa-user-circle writerId">${detail.writerId}</a></li>
						<!-- 작성자 누르면 작성자가 쓴 게시글 볼 수 있게 -->

						<li id="recommend-view"class="fas fa-heart">${detail.recommend}</li>
						<li id="recommend-plus"class="fas fa-heart hidden-imp">${detail.recommend+1}</li>
						

						
						<li class="fas fa-eye hit">${detail.hit}</li>
						
					</ul>
					<p class="detail-post content">${detail.content}</p>
				</div>
				<div class="txt-align-right board-view-etc">
					<a href="../freeboard/reg.jsp" class="fas fa-edit">글쓰기</a>
					<!-- a 태그로 바꿀시 발생 될 문제 주의하기 -->
					<a href="../freeboard/edit.jsp" class="fas fa-wrench">수정하기</a> <span
						id="delete" class="fas fa-trash-alt">삭제하기</span>
					<button name="myBtn">신고하기</button>
					<!-- <a href=""><span class="far fa-angry" >신고하기</span></a> -->
					<span id="recommend" class="fas fa-heart">추천하기</span>
					<span id="cancel-rec"class="far fa-heart hidden-imp">추천취소</span>
					<span
						id="scrap" class="fas fa-bookmark">스크랩하기</span>
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
							<li><input type="checkbox" class="hidden" /><a href="">댓글
									작성자</a></li>
							<!-- 작성자니까 이 작성자가 쓴 게시글 볼 수 있게 또는 정보를 열람하거나 쪽지 보낼 수 있게 -->
							<li>등록일자</li>
							<li>추천수</li>
						</ul>
						<div class="vertical-align-middle">
							<p>와 너무 재밌어요!!!</p>

							<button name="myBtn">신고하기</button>
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
				<h1>관리구역</h1>
				<input type="button" name="btn-manage-reply" value="댓글 삭제하기" /> 
				<input type="button" name="btn-manage-detail" value="게시글 삭제하기" />
			</section>

			<div class="detail-right-img">
				<img src="../../../images/side-maple-img-boss.jpg" />
			</div>


		</section>
		</main>
		<aside>
			<h1>어사이드</h1>
		</aside>
		<!-- <section id="modal-view">
		<h1 class="hidden">모달</h1>
		 -->

		<div id="myModal" class="modal-report">

			<!-- Modal content -->
			<div class="modal-content">
				<form method="post" action="/admin/report" >
					<label>신고사유 </label> 
					<select id="modal-select" name="content">
						<option>선택해주세요.</option>
						<c:forEach var="r" items="${reason}">
							<option  value="${r.content}">${r.content}</option>
						</c:forEach>
					</select>
					<select name="type">
						<option>선택해주세요.</option>
						<option value="게시글">게시글</option>
						<option value="댓글">댓글</option>
					</select> 
					<textarea name="content-etc" id="report-reason" placeholder="추가 의견을 적어주세요." rows="13" ></textarea><br />
					<!-- <input id="report-reason" placeholder="추가 의견을 적어주세요." type="" name="postContent" /> -->
					<div class="txt-align-right">
						<input id="report-apply" type="button" name="report-apply" value="신고하기" /> 
						<input type="button" name="report-close" class="close" value="닫기"/>
					</div>
				</form>
			</div>

		</div>




	</body>
</div>
</html>