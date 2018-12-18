<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<link href="../../css/event-list.css" rel="stylesheet" id="bootstrap-css">

<link href="../../css/aside-left.css" rel="stylesheet" id="bootstrap-css">
<title>News - Event</title>
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
				<h1 class="main-list align">News</h1>
				<section>
					<h1 class="sub-list align">Event</h1>
				</section>
			</section>

		</section>


		<section class="aa">
			<h1 class="hidden">바디 메인</h1>

			<section class="a">
				<h1>이벤트</h1>

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
								<th class="align-middle text-center col-w-hit">추천수</th>
								<th class="align-middle text-center col-w-manage">관리</th>
							</tr>
						</thead>
						<tbody>
							
							<c:forEach var="notice" items="${list}">
								<tr>
									<td class="align-middle text-center">
										<input type="checkbox" class="align-top" />
									</td>
									<td class="align-middle text-center">${notice.num}</td>
									<td class="align-middle text-center">[${notice.category}]</td>
									<td class="align-middle text-left"> <a href="detail.jsp">${notice.title} [4]</a></td>
									<td class="align-middle text-center">${notice.writerId}</td>
									<td class="align-middle text-center">2018-12-13</td>
									<td class="align-middle text-center">200</td>
									<td class="align-middle text-center">10</td>
									<td class="align-middle text-left">
										<div>
											<a class='btn btn-info btn-xs' href="detail.jsp">
												<span class="glyphicon glyphicon-edit"></span>수정
											</a> 
											<a href="#" class="btn btn-danger btn-xs">
												<span class="glyphicon glyphicon-remove"></span>삭제
											</a>
											<a href="#" class="btn btn-success btn-xs">
												<span class="glyphicon glyphicon-eye-open"></span>숨김해제
											</a>
										</div>
									</td>
								</tr>
							</c:forEach>
							<tr>
								<td class="align-middle text-center">
									<input type="checkbox" class="align-top" />
								</td>
								<td class="align-middle text-center">3</td>
								<td class="align-middle text-center">[이벤트]</td>
								<td class="align-middle text-left"> <a href="detail.jsp">css 개씨발 줮같네?! [4]</a></td>
								<td class="align-middle text-center">네모장군</td>
								<td class="align-middle text-center">2018-12-13</td>
								<td class="align-middle text-center">200</td>
								<td class="align-middle text-center">10</td>
								<td class="align-middle text-left">
									<div>
										<a class='btn btn-info btn-xs' href="detail.jsp">
											<span class="glyphicon glyphicon-edit"></span>수정
										</a> 
										<a href="#" class="btn btn-danger btn-xs">
											<span class="glyphicon glyphicon-remove"></span>삭제
										</a>
										<a href="#" class="btn btn-success btn-xs">
											<span class="glyphicon glyphicon-eye-close"></span>숨김
										</a>
									</div>
								</td>

							</tr>
							<tr>
								<td class="align-middle text-center">
									<input type="checkbox" class="align-top" />
								</td>
								<td class="align-middle text-center">3</td>
								<td class="align-middle text-center">[이벤트]</td>
								<td class="align-middle text-left"> <a href="detail.jsp">css 개씨발 줮같네?! [4]</a></td>
								<td class="align-middle text-center">네모장군</td>
								<td class="align-middle text-center">2018-12-13</td>
								<td class="align-middle text-center">200</td>
								<td class="align-middle text-center">10</td>
								<td class="align-middle text-left">
									<div>
										<a class='btn btn-info btn-xs' href="detail.jsp">
											<span class="glyphicon glyphicon-edit"></span>수정
										</a> 
										<a href="#" class="btn btn-danger btn-xs">
											<span class="glyphicon glyphicon-remove"></span>삭제
										</a>
										<a href="#" class="btn btn-success btn-xs">
											<span class="glyphicon glyphicon-eye-close"></span>숨김
										</a>
									</div>
								</td>
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
					    <li class="page-item"><a class="font-color focus" href="#">1</a></li>
					    <li class="page-item"><a class="font-color focus" href="#">2</a></li>
					    <li class="page-item"><a class="font-color focus" href="#">3</a></li>
					    <li class="page-item">
					      <a class="font-color" href="#" aria-label="Next">
					        <span aria-hidden="true">&raquo;</span>
					        <span class="sr-only">Next</span>
					      </a>
					    </li>
					</ul>
				</nav>

				<div class="text-right" style="margin-right: 14px">
					<a class='btn btn-info btn-xs' href="reg.jsp"><span
						class="glyphicon glyphicon-edit"></span>글쓰기
					</a>
					 <a href="#" class="btn btn-danger btn-xs"><span
						class="glyphicon glyphicon-remove"></span>선택삭제
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
