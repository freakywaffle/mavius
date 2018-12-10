<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>커뮤니티-자유게시판</title>
<link href="../../../css/freeboardlist.css" type="text/css" rel="stylesheet" />
</head>
<body>
	<!-- <header>
		<h1>헤더</h1>

		<section>
			<h1>커뮤니티</h1>
			<nav>
				<h1>자유게시판</h1>
				<ul>
					<li><a href="">자유게시판</a></li>
					<li><a href="">코디평가게시판</a></br> <a href="">베스트코디</a></br> <a href="">일반</a>
					</li>
					<li><a href="">테스트서버</a></li>
					<li><a href="">서버게시판</a></br> <a href="">길드홍보</a></br> 
					<a href="">비매너주의</a></br>
					<a href="">팔아요</a></br> <a href="">사요</a></li>
				</ul>
			</nav>
		</section>

	</header> -->
	<main id="main">
	<h1>자유게시판</h1>
	
	<section >
		<h1 class="hidden">검색폼</h1>
		<div>
		<form id="search-form">
			<!-- <fieldset class="hidden">
				<legend class="hidden">게시글검색폼</legend> -->

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
					<input type="text" name="txt-sch" class="input" />
					<input type="submit" name="btn-sch" value="검색" class="input"/>
			<!-- </fieldset> -->
		</form>
	</div>
	</section>
	<section id="list-table">
		<h1>리스트 테이블</h1>

		<div class="inline-block">
			<ul>
				<!-- div로 인라인블록하고 ul에다가 플렉스 주면  -->
				<li>1</li>
				<li>[잡담]</li>
				<li>승라일라이(댓글+4)</li><!-- 제목(댓글수) -->
				<li><a href="">승래</a></li>
				<!-- 작성자 -->
				<li>2018-12-05 16:40</li>
				<!-- 등록 일자 -->
				<li>200</li>
				<!-- 조회수 -->
				<li>10</li>
				<!-- 추천수 -->
			</ul>
			<p>게시물 내용(간략히)</p>
		</div>
		
		<div class="inline-block">
			<ul>
				<li>2</li>
				<li>[자랑]</li>
				<li>데벤 조아(댓글+5)</li>
				<!-- 제목(댓글수) -->
				<li><a href="">형호</a></li>
				<!-- 작성자 -->
				<li>2018-12-05 17:45</li>
				<!-- 등록 일자 -->
				<li>250</li>
				<!-- 조회수 -->
				<li>20</li>
				<!-- 추천수 -->
			</ul>
			<p>게시물 내용(간략히)</p>
		</div>
	
		<div class="inline-block">
			<ul>
				<li>3</li>
				<li>[자랑]</li>
				<li> 카데나조아(댓글+10)</li>
				<li><a href="">원석</a></li>
				<!-- 작성자 -->
				<li>2018-12-06 11:23</li>
				<!-- 등록 일자 -->
				<li>220</li>
				<!-- 조회수 -->
				<li>20</li>
				<!-- 추천수 -->
			</ul>
			<p>게시물 내용(간략히)</p>
		</div >
	
		<div class="inline-block">
			<ul>
				<li>4 </li>
				<li> [잡담]</li>
				<li>전자담배(댓글+8)</li>
				<li><a href="">문경</a></li>
				<!-- 작성자 -->
				<li>2018-12-07 20:40</li>
				<!-- 등록 일자 -->
				<li>300</li>
				<!-- 조회수 -->
				<li>17</li>
				<!-- 추천수 -->
			</ul>
			<p>게시물 내용(간략히)</p>

		</div>
	
		<div class="inline-block">
			<ul>
				<li>5 </li>
				<li>[잡담]</li>
				<li>썬콜조아(댓글+8)</li>
				<li><a href="">세연</a></li>
				<!-- 작성자 -->
				<li>2018-12-05 16:40</li>
				<!-- 등록 일자 -->
				<li>230</li>
				<!-- 조회수 -->
				<li>15</li>
				<!-- 추천수 -->
			</ul>
			<p>게시물 내용(간략히)</p>
		</div>
	</section>

	<section>
		<h1>글쓰기 영역</h1>
		<input type="button" name="btn-reg" value="글쓰기" />
		<!-- <input type="button" name="btn-del" value="삭제" /> 관리자가 삭제 -->
	</section>
	<section>
		<h1>페이저</h1>
		<div>이전페이지</div>
		<ul>
			<li>1</li>
			<li>2</li>
			<li>3</li>
			<li>4</li>
			<li>5</li>
		</ul>
		<div>다음페이지</div>
	</section>
	</main>
	<!-- <aside>
		<h1>어사이드</h1>
	</aside> -->
</body>
</html>