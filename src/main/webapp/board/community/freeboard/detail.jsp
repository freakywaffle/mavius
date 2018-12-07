<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>자유게시판-디테일</title>
</head>

<!--게시글 보기, 수정, 삭제, 댓글, 기본적인 보드 컬럼명 가져오고 타이틀이랑 컨텐트  ,이미지 공간? -->
<body>
	<header>
		<h1>헤더</h1>
	</header>
	<main>
		<h1>메인영역</h1>
		<section>
			<h1>게시글</h1>
			
			
			<div>
				<span>제목</span>
				<ul>
					<li>작성자</li>
					<li>조회수</li>
					<li>추천수</li>
					<li>등록일</li>
				</ul>			
			</div>
			
			<div>
				<p>내용</p>
			</div>
			
			<span>추천</span>
			<span>스크랩</span>
			<a href="">글쓰기</a>
			<a href="">수정</a>
			<a href="">삭제</a>			
		</section>
		<section>
			<h1>댓글</h1>
			<form>
				<fieldset>
					<input type="text" name="regReply"/>
					<input type="button" name = "regBtn" value = "댓글 등록"/>
				</fieldset>
			</form>
		</section>
		
		
		<section>
			<h1>게시글에서 볼 수 있는 페이저</h1>
			<table border="1px">
			<thead>
				<tr>
					<td>게시물 번호</td>
					<td>말머리</td>
					<td>제목(댓글수)</td>
					<td>작성자</td>
					<td>등록 일자</td>
					<td>조회수</td>
					<td>추천수</td>
				</tr>
			</thead>
			<tbody>
				<tr>
					<td>4</td>
					<td>잡담</td>
					<td>승라일라이</td>
					<td>승래</td>
					<td>2018-12-05 16:40</td>
					<td>200</td>
					<td>10</td>
				</tr>
				<tr>
					<td>3</td>
					<td>잡담</td>
					<td>미하일 개구림</td>
					<td>형호</td>
					<td>2018-12-02 1:00</td>
					<td>150</td>
					<td>10</td>
				</tr>
				
				<tr>
					<td>2</td>
					<td>자랑</td>
					<td>메이플GG</td>
					<td>종호</td>
					<td>2018-12-02 19:40</td>
					<td>100</td>
					<td>10</td>
				</tr>
				<tr>
					<td>1</td>
					<td>자랑</td>
					<td>다크어벤져 짱짱</td>
					<td>형호</td>
					<td>2018-12-01 10:00</td>
					<td>130</td>
					<td>10</td>
				</tr>
			</tbody>
		</table>
		</section>
		
	</main>
	<aside>
		<h1>어사이드</h1>
	</aside>
</body>
</html>