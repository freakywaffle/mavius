<%@page import="com.mavius.web.entity.MemberView"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<link href="../../css/main-header-style.css" rel="stylesheet"
	id="bootstrap-css">
<link href="../../css/style.css" rel="stylesheet" id="bootstrap-css">
<link href="../../css/aside-left.css" rel="stylesheet"
	id="bootstrap-css">
<title>회원 관리 - 화원 목록</title>
</head>


<body>
	<header>
		<jsp:include page="../../inc/header.jsp"></jsp:include>
	</header>

	<main class="aaa">
	<h1 class="hidden">메인</h1>

	<div class="aaaa">
		<section>
			<h1 class="hidden">바디 헤더</h1>

			<section class="main-header">
				<h1 class="main-list align">회원 관리</h1>
				<section>
					<h1 class="sub-list align">회원 목록</h1>
				</section>
			</section>

		</section>


		<section class="aa">
			<h1 class="hidden">바디 메인</h1>

			<section class="a">
				<h1>
					MemberList <span>(총 회원수 : ${ms}명)</span>
				</h1>

				<section class="margin-top">
					<table class="table table-striped">
						<thead class="thead-dark">
							<tr>
								<th class="align-middle text-center col-w-chk"><input type="checkbox"
									class="align-top" /></th>
								<th class="align-middle text-center col-w-num">회원번호</th>
								<th class="align-middle text-center col-w-nick">닉네임(아이디)</th>
								<th class="align-middle text-center col-w-gra">등급</th>
								<th class="align-middle text-center col-w-pc">게시글수</th>
								<th class="align-middle text-center col-w-cc">댓글수</th>
								<th class="align-middle text-center col-w-jd">가입일</th>
								<th class="align-middle text-center col-w-manage">관리</th>
							</tr>
						</thead>
						<tbody>
						
							<c:forEach var="member" items="${list}">
								<form action="/admin/member/delete" method="post">
									<tr>
										<td class="align-middle text-center">
											<input type="checkbox" class="align-top" name="chk" />
										</td>
										<input class="hidden" name="id" value="${member.id}" />
										<input class="hidden" name="nickname" value="${member.nickName}" />
										<td class="align-middle text-center">${member.num}</td>
										<td class="align-middle text-left member-detail"><a href="detail?id=${member.id}">${member.nickName}&nbsp;&nbsp;(${member.id})</a></td>
										<td class="align-middle text-center">${member.grade}</td>
										<th class="align-middle text-center">${member.postsCount}</th>
										<th class="align-middle text-center">${member.commentCount}</th>
										<td class="align-middle text-center">${member.regDate}</td>
										<td class="align-middle text-center ">
											<div>
												<a class='btn btn-info btn-xs' href="detail?id=${member.id}">
													<span class="glyphicon glyphicon-edit"></span>수정
												</a> 
												<button class="btn btn-danger btn-xs" type="submit">
													<span class="glyphicon glyphicon-remove"></span>탈퇴	
												</button>
											</div>
										</td>
									</tr>
								</form>
							</c:forEach>
							
						</tbody>
					</table>
				</section>
				
				<nav class="page-tab" aria-label="Page navigation example">
				  	<ul class="pagination">
					    <li class="page-item">
					      <a class="font-color" href="#" aria-label="Previous">
					        <span aria-hidden="true">&laquo;</span>
					        <span class="sr-only">Previous</span>
					      </a>
					    </li>
					    	<c:forEach var="i" begin="1" end="5" >
							    <li class="page-item"><a class="font-color focus" href="?p=${i}">${i}</a></li>
					    	</c:forEach>
					    
					    <li class="page-item">
					      <a class="font-color" href="#" aria-label="Next">
					        <span aria-hidden="true">&raquo;</span>
					        <span class="sr-only">Next</span>
					      </a>
					    </li>
					</ul>
				</nav>

				<div class="text-right" style="margin-right: 14px">
					<a href="#" class="btn btn-danger btn-xs"> <span
						class="glyphicon glyphicon-remove"></span> SelectDel
					</a>
				</div>
			</section>
		</section>
	</div>
	</main>


	<!--footer>
					<h1>푸터</h1>
					<h4>제작자 황세연^^</h4>

			<button class="btn btn-default">
				<i class="glyphicon glyphicon-cog gly-spin"></i>
			</button>
				</footer-->



</body>

</html>
