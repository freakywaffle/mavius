<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<link href="../../../css/freeboard-list.css" rel="stylesheet" id="bootstrap-css">
<link href="../../../css/style.css" rel="stylesheet" id="bootstrap-css">
<link href="../../../css/aside-left.css" rel="stylesheet"
	id="bootstrap-css">
<title>회원 관리 - 화원 목록</title>
</head>


<body>
	<header>
		<jsp:include page="../../../inc/header.jsp"></jsp:include>
	</header>

	<main class="aaa">
		<h1 class="hidden">메인</h1>

		<div class="aaaa">
			
			<section>
				<h1 class="hidden">바디 헤더</h1>
				<section class="main-header">
				<div>
					<h1 class="main-list align">Board</h1>
					<section>
						<h1 class="sub-list align">Free</h1>
					</section>
				</div>
				</section>
			</section>
	
			<section class="aa">
				<h1 class="hidden">바디 메인</h1>
				<section class="a">
					<h1>자유게시판</h1>
					<section class="row margin-top">
						<div>
							<div class="panel with-nav-tabs panel-default message-tab">
								<div class="panel-heading message-tab-heading">
									<ul class="nav nav-tabs">
										<li class="active"><a href="#tab1default" data-toggle="tab">전체</a></li>
										<!--<li><a href="#tab2default" data-toggle="tab">자유</a></li>
										<li><a href="#tab3default" data-toggle="tab">잡담</a></li>
										<li><a href="#tab4default" data-toggle="tab">우힣</a></li>
										<li><a href="#tab5default" data-toggle="tab">우하하하</a></li>
										<li><a href="#tab6default" data-toggle="tab">요호호호</a></li>-->
									</ul>
								</div>
								<div class="panel-body">
									<div class="tab-content">
<!--1111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111-->	
										<div class="tab-pane fade in active" id="tab1default">
		
											<section>
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
														<c:forEach var="board" items="${list}">
															<form action="/admin/board/community/delete" method="post">
																<tr>
																	<td class="align-middle text-center">
																		<input type="checkbox" class="align-top" />
																	</td>
																	<td class="align-middle text-center">${board.no}</td>
																	<td class="align-middle text-center">[${board.category}]</td>
																	<td class="align-middle text-left"><a href="detail?no=${board.no}">${board.title}  [${board.replyCnt}]</a></td>
																	<td class="align-middle text-center">${board.writerId}</td>
																	<td class="align-middle text-center">${board.regDate}</td>
																	<td class="align-middle text-center">${board.hit}</td>
																	<td class="align-middle text-center">${board.recommend}</td>
																	<td class="align-middle text-center">
																		<div>
																			<button type="submit" class="btn btn-danger btn-xs" ><span
																				class="glyphicon glyphicon-remove"></span>삭제</button>
																		</div>
																	</td>
																	<input class="hidden" name="no" value="${board.no}" />
																	<input class="hidden" name="catalog" value="${board.catalog}" />
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
								    		<c:if test="${i==param.p}">
											    <li class="page-item"><a class="font-color focus" href="?p=${i}"><strong>${i}</strong></a></li>
									    		</c:if>
									    		<c:if test="${i!=param.p}">
											    <li class="page-item"><a class="font-color focus" href="?p=${i}">${i}</a></li>
									    		</c:if>
									    		
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
													class="glyphicon glyphicon-remove"></span>선택삭제
												</a>
											</div>
											
										</div>
<!--1111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111-->	
<!--2222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222-->	
								<!-- 
								
										<div class="tab-pane fade" id="tab2default">
										
											<section>
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
														<tr>
															<td class="align-middle text-center">
																<input type="checkbox" class="align-top" />
															</td>
															<td class="align-middle text-center">3</td>
															<td class="align-middle text-center">[자유]</td>
															<td class="align-middle text-left"><a href="detail.jsp">css 개씨발 줮같네?! [4]</a></td>
															<td class="align-middle text-center">승라일라이 [4]</td>
															<td class="align-middle text-center">2018-12-13</td>
															<td class="align-middle text-center">200</td>
															<td class="align-middle text-center">10</td>
															<td class="align-middle text-center">
																<div>
																	<a href="#" class="btn btn-danger btn-xs"><span
																		class="glyphicon glyphicon-remove"></span>삭제</a>
																</div>
															</td>
														</tr>
														<tr>
															<td class="align-middle text-center">
																<input type="checkbox" class="align-top" />
															</td>
															<td class="align-middle text-center">3</td>
															<td class="align-middle text-center">[자유]</td>
															<td class="align-middle text-left"><a href="detail.jsp">css 개씨발 줮같네?! [4]</a></td>
															<td class="align-middle text-center">승라일라이 [4]</td>
															<td class="align-middle text-center">2018-12-13</td>
															<td class="align-middle text-center">200</td>
															<td class="align-middle text-center">10</td>
															<td class="align-middle text-center">
																<div>
																	<a href="#" class="btn btn-danger btn-xs"><span
																		class="glyphicon glyphicon-remove"></span>삭제</a>
																</div>
															</td>
														</tr>
														<tr>
															<td class="align-middle text-center">
																<input type="checkbox" class="align-top" />
															</td>
															<td class="align-middle text-center">3</td>
															<td class="align-middle text-center">[자유]</td>
															<td class="align-middle text-left"><a href="detail.jsp">css 개씨발 줮같네?! [4]</a></td>
															<td class="align-middle text-center">승라일라이 [4]</td>
															<td class="align-middle text-center">2018-12-13</td>
															<td class="align-middle text-center">200</td>
															<td class="align-middle text-center">10</td>
															<td class="align-middle text-center">
																<div>
																	<a href="#" class="btn btn-danger btn-xs"><span
																		class="glyphicon glyphicon-remove"></span>삭제</a>
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
												    <c:forEach var="i" begin="1" end="5">
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
										
										</div>
<!--2222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222-->	
<!--3333333333333333333333333333333333333333333333333333333333333333333333333333333333333333333333333333-->	
							<!-- 			<div class="tab-pane fade" id="tab3default"> 
		
											<section>
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
														<tr>
															<td class="align-middle text-center">
																<input type="checkbox" class="align-top" />
															</td>
															<td class="align-middle text-center">3</td>
															<td class="align-middle text-center">[잡담]</td>
															<td class="align-middle text-left"><a href="detail.jsp">css 개씨발 줮같네?! [4]</a></td>
															<td class="align-middle text-center">승라일라이 [4]</td>
															<td class="align-middle text-center">2018-12-13</td>
															<td class="align-middle text-center">200</td>
															<td class="align-middle text-center">10</td>
															<td class="align-middle text-center">
																<div>
																	<a class='btn btn-info btn-xs' href="#">
																		<span class="glyphicon glyphicon-edit"></span>숨김</a>
																	<a href="#" class="btn btn-danger btn-xs"><span
																		class="glyphicon glyphicon-remove"></span>삭제</a>
																</div>
															</td>
														</tr>
														<tr>
															<td class="align-middle text-center">
																<input type="checkbox" class="align-top" />
															</td>
															<td class="align-middle text-center">3</td>
															<td class="align-middle text-center">[잡담]</td>
															<td class="align-middle text-left"><a href="detail.jsp">css 개씨발 줮같네?! [4]</a></td>
															<td class="align-middle text-center">승라일라이 [4]</td>
															<td class="align-middle text-center">2018-12-13</td>
															<td class="align-middle text-center">200</td>
															<td class="align-middle text-center">10</td>
															<td class="align-middle text-center">
																<div>
																	<a class='btn btn-info btn-xs' href="#">
																		<span class="glyphicon glyphicon-edit"></span>숨김</a>
																	<a href="#" class="btn btn-danger btn-xs"><span
																		class="glyphicon glyphicon-remove"></span>삭제</a>
																</div>
															</td>
														</tr>
														<tr>
															<td class="align-middle text-center">
																<input type="checkbox" class="align-top" />
															</td>
															<td class="align-middle text-center">3</td>
															<td class="align-middle text-center">[잡담]</td>
															<td class="align-middle text-left"><a href="detail.jsp">css 개씨발 줮같네?! [4]</a></td>
															<td class="align-middle text-center">승라일라이 [4]</td>
															<td class="align-middle text-center">2018-12-13</td>
															<td class="align-middle text-center">200</td>
															<td class="align-middle text-center">10</td>
															<td class="align-middle text-center">
																<div>
																	<a class='btn btn-info btn-xs' href="#">
																		<span class="glyphicon glyphicon-edit"></span>숨김</a>
																	<a href="#" class="btn btn-danger btn-xs"><span
																		class="glyphicon glyphicon-remove"></span>삭제</a>
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
												<a class='btn btn-info btn-xs' href="#"> <span
													class="glyphicon glyphicon-edit"></span> SelectEdit
												</a> <a href="#" class="btn btn-danger btn-xs"> <span
													class="glyphicon glyphicon-remove"></span> SelectDel
												</a>
											</div>
											
										</div>
<!--3333333333333333333333333333333333333333333333333333333333333333333333333333333333333333333333333333-->	
<!--4444444444444444444444444444444444444444444444444444444444444444444444444444444444444444444444444444-->	
					<!--					<div class="tab-pane fade" id="tab4default">
		
											<section>
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
														<tr>
															<td class="align-middle text-center">
																<input type="checkbox" class="align-top" />
															</td>
															<td class="align-middle text-center">3</td>
															<td class="align-middle text-center">[우힣]</td>
															<td class="align-middle text-left"><a href="detail.jsp">css 개씨발 줮같네?! [4]</a></td>
															<td class="align-middle text-center">승라일라이 [4]</td>
															<td class="align-middle text-center">2018-12-13</td>
															<td class="align-middle text-center">200</td>
															<td class="align-middle text-center">10</td>
															<td class="align-middle text-center">
																<div>
																	<a class='btn btn-info btn-xs' href="#">
																		<span class="glyphicon glyphicon-edit"></span>숨김</a>
																	<a href="#" class="btn btn-danger btn-xs"><span
																		class="glyphicon glyphicon-remove"></span>삭제</a>
																</div>
															</td>
														</tr>
														<tr>
															<td class="align-middle text-center">
																<input type="checkbox" class="align-top" />
															</td>
															<td class="align-middle text-center">3</td>
															<td class="align-middle text-center">[우힣]</td>
															<td class="align-middle text-left"><a href="detail.jsp">css 개씨발 줮같네?! [4]</a></td>
															<td class="align-middle text-center">승라일라이 [4]</td>
															<td class="align-middle text-center">2018-12-13</td>
															<td class="align-middle text-center">200</td>
															<td class="align-middle text-center">10</td>
															<td class="align-middle text-center">
																<div>
																	<a class='btn btn-info btn-xs' href="#">
																		<span class="glyphicon glyphicon-edit"></span>숨김</a>
																	<a href="#" class="btn btn-danger btn-xs"><span
																		class="glyphicon glyphicon-remove"></span>삭제</a>
																</div>
															</td>
														</tr>
														<tr>
															<td class="align-middle text-center">
																<input type="checkbox" class="align-top" />
															</td>
															<td class="align-middle text-center">3</td>
															<td class="align-middle text-center">[우힣]</td>
															<td class="align-middle text-left"><a href="detail.jsp">css 개씨발 줮같네?! [4]</a></td>
															<td class="align-middle text-center">승라일라이 [4]</td>
															<td class="align-middle text-center">2018-12-13</td>
															<td class="align-middle text-center">200</td>
															<td class="align-middle text-center">10</td>
															<td class="align-middle text-center">
																<div>
																	<a class='btn btn-info btn-xs' href="#">
																		<span class="glyphicon glyphicon-edit"></span>숨김</a>
																	<a href="#" class="btn btn-danger btn-xs"><span
																		class="glyphicon glyphicon-remove"></span>삭제</a>
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
												<a class='btn btn-info btn-xs' href="#"> <span
													class="glyphicon glyphicon-edit"></span> SelectEdit
												</a> <a href="#" class="btn btn-danger btn-xs"> <span
													class="glyphicon glyphicon-remove"></span> SelectDel
												</a>
											</div>
											
										</div>
<!--4444444444444444444444444444444444444444444444444444444444444444444444444444444444444444444444444444-->	
<!--5555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555-->	
								<!--		<div class="tab-pane fade" id="tab5default">
		
											<section>
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
														<tr>
															<td class="align-middle text-center">
																<input type="checkbox" class="align-top" />
															</td>
															<td class="align-middle text-center">3</td>
															<td class="align-middle text-center">[우하하하]</td>
															<td class="align-middle text-left"><a href="detail.jsp">css 개씨발 줮같네?! [4]</a></td>
															<td class="align-middle text-center">승라일라이 [4]</td>
															<td class="align-middle text-center">2018-12-13</td>
															<td class="align-middle text-center">200</td>
															<td class="align-middle text-center">10</td>
															<td class="align-middle text-center">
																<div>
																	<a class='btn btn-info btn-xs' href="#">
																		<span class="glyphicon glyphicon-edit"></span>숨김</a>
																	<a href="#" class="btn btn-danger btn-xs"><span
																		class="glyphicon glyphicon-remove"></span>삭제</a>
																</div>
															</td>
														</tr>
														<tr>
															<td class="align-middle text-center">
																<input type="checkbox" class="align-top" />
															</td>
															<td class="align-middle text-center">3</td>
															<td class="align-middle text-center">[우하하하]</td>
															<td class="align-middle text-left"><a href="detail.jsp">css 개씨발 줮같네?! [4]</a></td>
															<td class="align-middle text-center">승라일라이 [4]</td>
															<td class="align-middle text-center">2018-12-13</td>
															<td class="align-middle text-center">200</td>
															<td class="align-middle text-center">10</td>
															<td class="align-middle text-center">
																<div>
																	<a class='btn btn-info btn-xs' href="#">
																		<span class="glyphicon glyphicon-edit"></span>숨김</a>
																	<a href="#" class="btn btn-danger btn-xs"><span
																		class="glyphicon glyphicon-remove"></span>삭제</a>
																</div>
															</td>
														</tr>
														<tr>
															<td class="align-middle text-center">
																<input type="checkbox" class="align-top" />
															</td>
															<td class="align-middle text-center">3</td>
															<td class="align-middle text-center">[우하하하]</td>
															<td class="align-middle text-left"><a href="detail.jsp">css 개씨발 줮같네?! [4]</a></td>
															<td class="align-middle text-center">승라일라이 [4]</td>
															<td class="align-middle text-center">2018-12-13</td>
															<td class="align-middle text-center">200</td>
															<td class="align-middle text-center">10</td>
															<td class="align-middle text-center">
																<div>
																	<a class='btn btn-info btn-xs' href="#">
																		<span class="glyphicon glyphicon-edit"></span>숨김</a>
																	<a href="#" class="btn btn-danger btn-xs"><span
																		class="glyphicon glyphicon-remove"></span>삭제</a>
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
												<a class='btn btn-info btn-xs' href="#"> <span
													class="glyphicon glyphicon-edit"></span> SelectEdit
												</a> <a href="#" class="btn btn-danger btn-xs"> <span
													class="glyphicon glyphicon-remove"></span> SelectDel
												</a>
											</div>
											
										</div>
<!--5555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555-->	
<!--6666666666666666666666666666666666666666666666666666666666666666666666666666666666666666666666666666-->	
							<!--			<div class="tab-pane fade" id="tab6default">
		
											<section>
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
														<tr>
															<td class="align-middle text-center">
																<input type="checkbox" class="align-top" />
															</td>
															<td class="align-middle text-center">3</td>
															<td class="align-middle text-center">[요호호호]</td>
															<td class="align-middle text-left"><a href="detail.jsp">css 개씨발 줮같네?! [4]</a></td>
															<td class="align-middle text-center">승라일라이 [4]</td>
															<td class="align-middle text-center">2018-12-13</td>
															<td class="align-middle text-center">200</td>
															<td class="align-middle text-center">10</td>
															<td class="align-middle text-center">
																<div>
																	<a class='btn btn-info btn-xs' href="#">
																		<span class="glyphicon glyphicon-edit"></span>숨김</a>
																	<a href="#" class="btn btn-danger btn-xs"><span
																		class="glyphicon glyphicon-remove"></span>삭제</a>
																</div>
															</td>
														</tr>
														<tr>
															<td class="align-middle text-center">
																<input type="checkbox" class="align-top" />
															</td>
															<td class="align-middle text-center">3</td>
															<td class="align-middle text-center">[요호호호]</td>
															<td class="align-middle text-left"><a href="detail.jsp">css 개씨발 줮같네?! [4]</a></td>
															<td class="align-middle text-center">승라일라이 [4]</td>
															<td class="align-middle text-center">2018-12-13</td>
															<td class="align-middle text-center">200</td>
															<td class="align-middle text-center">10</td>
															<td class="align-middle text-center">
																<div>
																	<a class='btn btn-info btn-xs' href="#">
																		<span class="glyphicon glyphicon-edit"></span>숨김</a>
																	<a href="#" class="btn btn-danger btn-xs"><span
																		class="glyphicon glyphicon-remove"></span>삭제</a>
																</div>
															</td>
														</tr>
														<tr>
															<td class="align-middle text-center">
																<input type="checkbox" class="align-top" />
															</td>
															<td class="align-middle text-center">3</td>
															<td class="align-middle text-center">[요호호호]</td>
															<td class="align-middle text-left"><a href="detail.jsp">css 개씨발 줮같네?! [4]</a></td>
															<td class="align-middle text-center">승라일라이 [4]</td>
															<td class="align-middle text-center">2018-12-13</td>
															<td class="align-middle text-center">200</td>
															<td class="align-middle text-center">10</td>
															<td class="align-middle text-center">
																<div>
																	<a class='btn btn-info btn-xs' href="#">
																		<span class="glyphicon glyphicon-edit"></span>숨김</a>
																	<a href="#" class="btn btn-danger btn-xs"><span
																		class="glyphicon glyphicon-remove"></span>삭제</a>
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
												    <li class="page-item"><a href="#">1</a></li>
												    <li class="page-item"><a href="#">2</a></li>
												    <li class="page-item"><a href="#">3</a></li>
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
											
										</div>
										
										*/
<!--6666666666666666666666666666666666666666666666666666666666666666666666666666666666666666666666666666-->	
									</div>
								</div>
							</div>
						</div>
					</section>
	
	
					
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
