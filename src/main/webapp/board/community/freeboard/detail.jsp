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
			<table border="1">
				<thead>
					<tr>
						<td>제목:get.title1111111111111111111111111</td>
					</tr>
					<tr>
						<td>작성자:get.writerId</td>
						<td>등록일:get.regDate</td>
						<td>추천수:get.recommend</td>
						<td>조회수:get.hit</td>
					</tr>
				</thead>
				<tbody>
					<tr>
						<td>내용:get.content</td>
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