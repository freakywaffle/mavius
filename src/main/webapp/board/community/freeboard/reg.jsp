<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>커뮤니티-자유게시판</title>
<link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.5.0/css/all.css" integrity="sha384-B4dIYHKNBt8Bc12p+WXckhzcICo0wtJAoU8YZTY5qE0Id1GSseTk6S+L3BlXeVIU" crossorigin="anonymous">
<link href="../../../css/serverBoardReg.css" type="text/css" rel="stylesheet" />
</head>

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
		<section id="reg-form">
			<form>
				<div id="title-form">
					<select id="select-form">
						<option>분류를 선택하세요</option>
						<option>길드 홍보</option>
						<option>비매너 주의</option>
						<option>팔아요</option>
						<option>사요</option>
					</select>
				
					<input type="" name="reg-name" placeholder="제목을 입력해주세요."/>
				</div>
			</form>
			<div>
				<h1>편집기</h1>
			</div>
		
		</section>
	</body>
</div>
</html>