<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>서버게시판-리스트</title>
</head>
<body>
<header>
		<h1>헤더</h1>
</header>
	<main>
	<h1>서버게시판</h1>

	<section>
		<h1>검색폼</h1>
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
	<section>
		<h1>리스트 테이블</h1>

		<div>
			<ul>
				<!-- div로 인라인블록하고 ul에다가 플렉스 주면  -->
				<li>1</li>
				<li>[후기]</li>
				<li>테스트 서버 신직업 후기(댓글+4)</li><!-- 제목(댓글수) -->
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
	<div>
			<ul>
				<!-- div로 인라인블록하고 ul에다가 플렉스 주면  -->
				<li>1</li>
				<li>[후기]</li>
				<li>테스트 서버 신직업 후기(댓글+4)</li><!-- 제목(댓글수) -->
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
		<div>
			<ul>
				<!-- div로 인라인블록하고 ul에다가 플렉스 주면  -->
				<li>1</li>
				<li>[후기]</li>
				<li>테스트 서버 신직업 후기(댓글+4)</li><!-- 제목(댓글수) -->
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
		<div>
			<ul>
				<!-- div로 인라인블록하고 ul에다가 플렉스 주면  -->
				<li>1</li>
				<li>[후기]</li>
				<li>테스트 서버 신직업 후기(댓글+4)</li><!-- 제목(댓글수) -->
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
		<div>
			<ul>
				<!-- div로 인라인블록하고 ul에다가 플렉스 주면  -->
				<li>1</li>
				<li>[후기]</li>
				<li>테스트 서버 신직업 후기(댓글+4)</li><!-- 제목(댓글수) -->
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
	</section>

	<section>
		<h1>글쓰기 영역</h1>
		<input type="button" name="btn-reg" value="글쓰기" />
		<!-- <input type="button" name="btn-del" value="삭제" /> --><!-- 관리자가 삭제 -->
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
	<aside>
		<h1>어사이드</h1>
	</aside>
</body>
</html>