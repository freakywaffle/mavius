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
	<h1>자유게시판</h1>
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
		<h1>게시글</h1>
		<section>
			<h1>게시글 보는 영역</h1>
			<div>
				<ul>
					<li>게시글 번호</li>
					<li>제목</li>
					<li>등록일</li>
					<li><a href="">작성자</a></li>
					<!-- 작성자 누르면 작성자가 쓴 게시글 볼 수 있게 -->

					<li>추천수</li>
					<li>조회수</li>
					<li>스크랩수</li>
				</ul>
				<p>게시글 내용</p>
			</div>
			<div>
				<input type="button" name="btn-reg" value="글쓰기" />
				<input type="button" name="btn-edit" value="수정하기" />
				<input	type="button" name="btn-del" value="삭제하기" />
				<!-- 이건 작성자일 때만 보이게  -->
				<input type="button" name="btn-report" value="신고하기" /> 
				<input type="button" name="btn-rec" value="추천하기" /> 
				<input type="button" name="btn-scr" value="스크랩하기" />
			</div>
		</section>
		<section>
			<h1>게시글 댓글보고 다는 영역</h1>
			<fieldset>
				<legend>
					<label>댓글(+댓글 갯수)</label>
				</legend>
				<div>
					<ul>
						<li><input type="checkbox"/><a href="">댓글 작성자</a></li>
						<!-- 작성자니까 이 작성자가 쓴 게시글 볼 수 있게 또는 정보를 열람하거나 쪽지 보낼 수 있게 -->
						<li>등록일자</li>
						<li>추천수</li>
					</ul>
					<p>와 너무 재밌어요!!!</p>
					<input type="button" name="btn-report" value="신고하기" /> 
				</div>
				<form>
					<label>댓글 달기</label> 
					<input type="text" name="reg-Reply" />
					<input type="button" name="btn-Reply" value="댓글 등록" />
					<input type="button" name="btn-Attach" value="사진첨부" />
				</form>
			</fieldset>
		</section>
		<section>
			<h1> 관리구역</h1>
			<input type="button" name="btn-manage-reply"value="댓글 삭제하기"/>
			<input type="button" name="btn-manage-detail"value="게시글 삭제하기"/>
		</section>
		
		<section>
			<h1>페이저 리스트</h1>

			<div>
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
		<br />
		<div>
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
		<br />
		<div>
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
		</div>
		<br />
		<div>
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
		<br />
		<div>
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
	</section>
	</main>
	<aside>
		<h1>어사이드</h1>
	</aside>
</body>
</html>