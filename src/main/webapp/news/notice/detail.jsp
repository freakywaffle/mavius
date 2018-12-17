<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>공지 디테일</title>
	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-beta/css/bootstrap.min.css" integrity="sha384-/Y6pD6FV/Vv2HJnA6t+vslU6fwYXjCFtcEpHbNJ0lyAFsXTsjBbfaDjzALeQsN6M" crossorigin="anonymous">
	<link rel="stylesheet" href="../../css/newslist.css">
</head>
<body>
<div id="hiririk">
	<!-- 왼쪽 사이드바 메인헤더 -->
<jsp:include page="/sidebar/header.jsp" />
<!-- 오른쪽쪽 사이드바 로그인메뉴 -->
<jsp:include page="/sidebar/sidebar.jsp" />
			
	<main>
		<div class="">
            <h1 class="text-center">N o t i c e</h1>
            <h3 class="text-center">공 지 사 항</h3>
        </div>
	
		<div>
			<table class="table">
				<thead>
				  <tr>
				    <th scope="col">제목</th>
				    <th scope="col">이름</th>
				    <th scope="col">성</th>
				    <th scope="col">아이디</th>
				  </tr>
				</thead>
				<tbody>
				  <tr>
				    <th scope="row">1</th>
				    <td>Mark</td>
				    <td>Otto</td>
				    <td>@mdo</td>
				  </tr>
				  <tr>
				    <th scope="row">2</th>
				    <td>Jacob</td>
				    <td>Thornton</td>
				    <td>@fat</td>
				  </tr>
				  <tr>
				    <th scope="row">3</th>
				    <td>Larry</td>
				    <td>the Bird</td>
				    <td>@twitter</td>
				  </tr>
				</tbody>
				</table>
		</div>
	
	</main>	
			
</div>
</body>
</html>