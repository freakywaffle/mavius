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
					MemberList <span>(총 회원수 : 명, 오늘 접속한 회원수 : ?명, 어제 접속한 회원수
						:?명)</span>
				</h1>

				<section class="margin-top">
					<table class="table table-striped">
						<thead class="thead-dark">
							<tr>
								<th class="align-middle text-center"><input type="checkbox"
									class="align-top" /></th>
								<th class="align-middle text-center">닉네임(아이디)</th>
								<th class="align-middle text-center">등급</th>
								<th class="align-middle text-center">게시글수</th>
								<th class="align-middle text-center">댓글수</th>
								<th class="align-middle text-center">가입일</th>
								<th class="align-middle text-center">최근 접속일</th>
								<th class="align-middle text-center">관리</th>
							</tr>
						</thead>
						<tbody>
							<c:forEach var="member" items="${list}">
								<tr>
									<td class="align-middle text-center">
										<input type="checkbox" class="align-top" />
									</td>
									<td class="align-middle text-center">${member.nickName}(dfke153)</td>
									<td class="align-middle text-center inline">관리자</td>
									<th class="align-middle text-center">3</th>
									<th class="align-middle text-center">1</th>
									<td class="align-middle text-center">18-12-07</td>
									<td class="align-middle text-center">18-12-07</td>
									<td class="align-middle text-center"><a class='btn btn-info btn-xs'
										href="detail.jsp"><span class="glyphicon glyphicon-edit"></span>
											Edit</a> <a href="#" class="btn btn-danger btn-xs"><span
											class="glyphicon glyphicon-remove"></span> Del</a></td>
	
								</tr>
							</c:forEach>
							<tr>
								<td class="align-middle text-center">
									<input type="checkbox" class="align-top" />
								</td>
								<td class="align-middle text-center">네모장군(dfke153)</td>
								<td class="align-middle text-center inline">관리자</td>
								<th class="align-middle text-center">3</th>
								<th class="align-middle text-center">1</th>
								<td class="align-middle text-center">18-12-07</td>
								<td class="align-middle text-center">18-12-07</td>
								<td class="align-middle text-center"><a class='btn btn-info btn-xs'
									href="detail.jsp"><span class="glyphicon glyphicon-edit"></span>
										Edit</a> <a href="#" class="btn btn-danger btn-xs"><span
										class="glyphicon glyphicon-remove"></span> Del</a></td>

							</tr>
							<tr>
								<td class="align-middle text-center">
									<input type="checkbox" class="align-top" />
								</td>
								<td class="align-middle text-center">닉닉(seyeon1491)</td>
								<td class="align-middle text-center">회원	</td>
								<th class="align-middle text-center">3</th>
								<th class="align-middle text-center">1</th>
								<td class="align-middle text-center">18-12-07</td>
								<td class="align-middle text-center">18-12-07</td>
								<td class="align-middle text-center"><a class='btn btn-info btn-xs'
									href="#"><span class="glyphicon glyphicon-edit"></span>
										Edit</a> <a href="#" class="btn btn-danger btn-xs"><span
										class="glyphicon glyphicon-remove"></span> Del</a></td>


							</tr>
							<tr>
								<td class="align-middle text-center"><input type="checkbox"
									class="align-top" /></td>
								<td class="align-middle text-center">배열지존(dewf3)</td>
								<td class="align-middle text-center">회원</td>
								<th class="align-middle text-center">3</th>
								<th class="align-middle text-center">1</th>
								<td class="align-middle text-center">18-12-07</td>
								<td class="align-middle text-center">18-12-07</td>
								<td class="align-middle text-center"><a class='btn btn-info btn-xs'
									href="#"><span class="glyphicon glyphicon-edit"></span>
										Edit</a> <a href="#" class="btn btn-danger btn-xs"><span
										class="glyphicon glyphicon-remove"></span> Del</a></td>
								<!--td class ="text-center">
													<button type="button" class="btn btn-success">수정</button>
													<button type="button" class="btn btn-warning">관리</button>
													<button type="button" class="btn btn-danger">탈퇴</button>
												</td-->
							</tr>
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
					<a class='btn btn-info btn-xs' href="#"> <span
						class="glyphicon glyphicon-edit"></span> SelectEdit
					</a> <a href="#" class="btn btn-danger btn-xs"> <span
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
