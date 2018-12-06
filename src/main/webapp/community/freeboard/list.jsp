<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>커뮤니티-자유게시판</title>
</head>
<body>
	<header>
		<h1>헤더</h1>
		<section>
			<h1>mavious</h1>
			<section>
				<h1>커뮤니티</h1>
				<nav>
					<h1>자유게시판</h1>
					<ul>
						<li><a href="">자유게시판</a></li>
						<li>
							<a href="">코디평가게시판</a></br>
							<a href="">베스트코디</a></br>
							<a href="">일반</a>
						</li>
						<li><a href="">테스트서버</a></li>
						<li>
							<a href="">서버게시판</a></br>
							<a href="">길드홍보</a></br>
							<a href="">비매너주의</a></br>
							<a href="">팔아요</a></br>
							<a href="">사요</a>
						</li>
					</ul>
				</nav>
			</section>
		</section>
	</header>
	<main>
	<h1>메인영역</h1>
	
	<section>
		<h1>검색폼</h1>
		<form>
			 <fieldset>
	              <legend class="hidden">게시글검색폼</legend>
	              <select>
	                 <label>게시판선택</label>
	                 <option>소식</option>
	                 <option>커뮤니티</option>
	                 <option>공략</option>
	              </select>
	              <select>
	                 <label>말머리선택</label><!-- 게시판 선택에 따른 -->
	                 <option>소식</option>
	                 <option>커뮤니티</option>
	                 <option>공략</option>
	              </select>
	              <input type="text" class="input" />
	              <input type="submit" class="btn" />
         	 </fieldset>
         </form>
    </section>
	<section>
		<h1>리스트 테이블</h1>
		<table border="1px">
			<thead>
				<tr>
					<td>게시물 번호</td>
					<td>제목(댓글수)</td>
					<td>작성자</td>
					<td>등록 일자</td>
					<td>조회수</td>
				</tr>
			</thead>
			<tbody>
				<tr>
					<td>4</td>
					<td>승라일라이</td>
					<td>승래</td>
					<td>2018-12-05 16:40</td>
					<td>200</td>
				</tr>
				<tr>
					<td>3</td>
					<td>미하일 개구림</td>
					<td>형호</td>
					<td>2018-12-02 1:00</td>
					<td>150</td>
				</tr>
				
				<tr>
					<td>2</td>
					<td>메이플GG</td>
					<td>종호</td>
					<td>2018-12-02 19:40</td>
					<td>100</td>
				</tr>
				<tr>
					<td>1</td>
					<td>다크어벤져 짱짱</td>
					<td>형호</td>
					<td>2018-12-01 10:00</td>
					<td>130</td>
				</tr>
			</tbody>
		</table>
		</section>
		<section>
			<h1>페이저</h1>
			<span>이전페이지</span>
			<ul>
				<li>1</li>
				<li>2</li>
				<li>3</li>
				<li>4</li>
				<li>5</li>
			</ul>
			<span>다음페이지</span>
		</section>
	</main>
	<aside>
		<h1>어사이드</h1>
	</aside>
</body>
</html>