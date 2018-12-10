<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>커뮤니티-서버게시판-수정</title>
</head>
<body>
	<header>
		<h1>헤더</h1>
	</header>
	<main>
		<h1>서버게시판</h1>
		<section>
		<h1>게시글 입력 폼</h1>
			<form>
				<fieldset>
					<legend>
						<label>게시글 등록</label>
					</legend>
					<select>
						<option>게시판선택</option>
						<option>공지사항</option>
						<option>이벤트</option>
						<option>자유게시판</option>
						<option>코디평가게시판</option>
						<option>테스트서버</option>
						<option>서버게시판</option>
						<option>직업별 팁&공략</option>
						<option>육성팁</option>
					</select>
					<select>
						<option>말머리선택</option>
						<option>자랑</option>
						<option>정보</option>
						<option>잡담</option>
					</select>
					<div>
						<label>제목:</label>
						<input type="text" name="reg-title"/>
						<!-- 작성은 api로 -->
						
					</div>
					<div>
						<label>내용:</label>
						<input type="text" name="reg-context"/>
						<input type="file" name="btn-file" value="파일첨부"/>
					</div>
					<div>
						<input type="submit" name="btn-submit" value="등록"/>
						<input type="submit" name="btn-exit" value="나가기"/>
					</div>
				</fieldset>
			</form>
		</section>
		
	</main>	
	<aside>
		<h1>어사이드</h1>
	</aside>
</body>
</html>