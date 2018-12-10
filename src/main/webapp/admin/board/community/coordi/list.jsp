<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>커뮤니티-코디게시판-관리-리스트</title>
</head>
<body>
	<header>
		<h1>헤더</h1>
		
	</header>
	<main>
		<h1>코디게시판-리스트- 관리</h1>
		
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
			<h1>게시글 리스트</h1>
			<div>
				<p><img src=""/>코디아바타 어때?</p>
				<ul>
					<li><input type="checkbox" name="btn-chk"/>1</li>
					<li>제목(댓글+5)</li><!-- 제목 -->
					<li><a href="">형호</a></li><!-- 작성자 아이디 -->
					<li>2018-12-05 17:45</li>
					<li>250</li>
					<li>20</li>
				</ul>
				<input type="button" name="btn-rec" value="추천"/>
				<input type="button" name="btn-scr" value="스크랩"/>
			</div>
			<div>
				<p><img src=""/>코디아바타 어때?</p>
				<ul>
					<li><input type="checkbox" name="btn-chk"/>2</li>
					<li>제목(댓글+5)</li>
					<li><a href="">형호</a></li>
					<li>2018-12-05 17:45</li>
					<li>250</li>
					<li>20</li>
				</ul>
				<input type="button" name="btn-rec" value="추천"/>
				<input type="button" name="btn-scr" value="스크랩"/>
			</div>
			<div>
				<p><img src=""/>코디아바타 어때?</p>
				<ul>
					<li><input type="checkbox" name="btn-chk"/>3</li>
					<li>제목(댓글+5)</li>
					<li><a href="">형호</a></li>
					<li>2018-12-05 17:45</li>
					<li>250</li>
					<li>20</li>
				</ul>
				<input type="button" name="btn-rec" value="추천"/>
				<input type="button" name="btn-scr" value="스크랩"/>
			</div>
			<div>
				<p><img src=""/>코디아바타 어때?</p>
				<ul>
					<li><input type="checkbox" name="btn-chk"/>4</li>
					<li>제목(댓글+5)</li>
					<li><a href="">형호</a></li>
					<li>2018-12-05 17:45</li>
					<li>250</li>
					<li>20</li>
				</ul>
				<input type="button" name="btn-rec" value="추천"/>
				<input type="button" name="btn-scr" value="스크랩"/>
			</div>
			<div>
				<p><img src=""/>코디아바타 어때?</p>
				<ul>
					<li><input type="checkbox" name="btn-chk"/>5</li>
					<li>제목(댓글+5)</li>
					<li><a href="">형호</a></li>
					<li>2018-12-05 17:45</li>
					<li>250</li>
					<li>20</li>
				</ul>
				<input type="button" name="btn-rec" value="추천"/>
				<input type="button" name="btn-scr" value="스크랩"/>
				
			</div>
			
	</section>
		
	<section>
		<h1>등록 영역</h1>
		<input type="button" name="btn-reg" value="글쓰기" />
		<input type="button" name="btn-del" value="삭제" /><!-- 관리자가 삭제 -->
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