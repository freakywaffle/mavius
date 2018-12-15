<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.5.0/css/all.css" integrity="sha384-B4dIYHKNBt8Bc12p+WXckhzcICo0wtJAoU8YZTY5qE0Id1GSseTk6S+L3BlXeVIU" crossorigin="anonymous">
<link href="../../../css/coordiBoardEdit.css" type="text/css" rel="stylesheet" />
<title>커뮤니티-코디게시판-수정</title>
</head>

<div id="hiririk">
   <header>
   <jsp:include page="/sidebar/header.jsp" />
   </header>
   <aside>
    <jsp:include page="/sidebar/sidebar.jsp" />
    </aside>
<body><!-- 기본틀은 reg페이지와 같으나 수정을 누르면 그 게시글 내용을 불러올 수 있게 -->
	<header>
		<h1>헤더</h1>
	</header>
	<main>
		<h1>코디게시판</h1>
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
</div>
</html>