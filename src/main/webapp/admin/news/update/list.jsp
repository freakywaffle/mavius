<%@page import="com.mavius.web.entity.News"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<link href="../../css/notice-list.css" rel="stylesheet" id="bootstrap-css">

<link href="../../css/aside-left.css" rel="stylesheet" id="bootstrap-css">
<title>News - Update</title>
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
			<div>
				<h1 class="main-list align">News</h1>
				<section>
					<h1 class="sub-list align">Update</h1>
				</section>
			</div>
			</section>

		</section>


		<section class="aa">
			<h1 class="hidden">바디 메인</h1>

			<section class="a">
				<h1>업데이트</h1>

				<section class="margin-top">
					<table class="table table-striped">
						<thead class="thead-dark">
							<tr>
								<th class="align-middle text-center col-w-chk">
									<input type="checkbox"class="align-top" />
								</th>
								<th class="align-middle text-center col-w-num">번호</th>
								<th class="align-middle text-center col-w-ctg">카테고리</th>
								<th class="align-middle text-center">제목</th>
								<th class="align-middle text-center col-w-writerId">작성자</th>
								<th class="align-middle text-center col-w-date">등록 일자</th>
								<th class="align-middle text-center col-w-hit">조회수</th>
								<th class="align-middle text-center col-w-manage">관리</th>
							</tr>
						</thead>
						<tbody>
							<c:forEach var="update" items="${list}">
								<form action="/admin/news/delete" method="post" >
									<tr>
										<td class="align-middle text-center">
											<input type="checkbox" class="align-top" />
										</td>
										<input type="text" name="no" class="hidden" value="${update.no}"/>
										<input type="text" name="catalog" class="hidden" value="${update.catalog}"/>
										<td class="align-middle text-center" >${update.no}</td>
										<td class="align-middle text-center">[${update.catalog}]</td>
										<td class="align-middle text-left"> <a href="detail?no=${update.no}">${update.title}</a></td>
										<td class="align-middle text-center">${update.writerId}</td>
										<td class="align-middle text-center">${update.regDate}</td>
										<td class="align-middle text-center">${update.hit}</td>
										<td class="align-middle text-center">
											<div>
												<a href="detail?no=${update.no}" class='btn btn-info btn-xs'>
														<span class="glyphicon glyphicon-edit"></span>수정
													
												</a>
												<a href="">
													<button class='btn btn-danger btn-xs' type="submit">
														<span class="glyphicon glyphicon-remove"></span>삭제
													</button> 
												</a>
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
					<a class='btn btn-info btn-xs' href="reg"><span
						class="glyphicon glyphicon-edit"></span>글쓰기
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
