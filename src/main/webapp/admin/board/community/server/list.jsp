<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<link href="../../../css/serverboard-list.css" rel="stylesheet" id="bootstrap-css">
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
					<h1 class="main-list align">게시판 관리</h1>
					<section>
						<h1 class="sub-list align">서버게시판</h1>
					</section>
				</section>
			</section>
	
			<section class="aa">
				<h1 class="hidden">바디 메인</h1>
				<section class="a">
					<h1>서버게시판</h1>
					<section class="row margin-top">
						<div>
							<div class="panel with-nav-tabs panel-default message-tab">
								<div class="panel-heading message-tab-heading">
									<ul class="nav nav-tabs">
										<li class="active"><a href="#tab1default" data-toggle="tab">전체</a></li>
										<li><a href="#tab2default" data-toggle="tab">이노시스</a></li>
										<li><a href="#tab3default" data-toggle="tab">스카니아</a></li>
										<li><a href="#tab4default" data-toggle="tab">제니스</a></li>
										<li><a href="#tab5default" data-toggle="tab">베라</a></li>
										<li><a href="#tab6default" data-toggle="tab">리부트</a></li>
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
															<th class="align-middle text-center col-w-chk"><input type="checkbox"
																class="align-top" /></th>
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
															<td class="align-middle text-center">[이노시스]</td>
															<td class="align-middle text-left"><a href="#">css 개씨발 줮같네?! [4]</a></td>
															<td class="align-middle text-center">승라일라이 [4]</td>
															<td class="align-middle text-center">2018-12-13</td>
															<td class="align-middle text-center">200</td>
															<td class="align-middle text-center">10</td>
															<td class="align-middle text-center">
																<div>
																	<a class='btn btn-info btn-xs' href="detail.jsp">
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
															<td class="align-middle text-center">[제니스]</td>
															<td class="align-middle text-left"><a href="#">css 개씨발 줮같네?! [4]</a></td>
															<td class="align-middle text-center">승라일라이 [4]</td>
															<td class="align-middle text-center">2018-12-13</td>
															<td class="align-middle text-center">200</td>
															<td class="align-middle text-center">10</td>
															<td class="align-middle text-center">
																<div>
																	<a class='btn btn-info btn-xs' href="detail.jsp">
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
															<td class="align-middle text-center">[리부트]</td>
															<td class="align-middle text-left"><a href="#">css 개씨발 줮같네?! [4]</a></td>
															<td class="align-middle text-center">승라일라이 [4]</td>
															<td class="align-middle text-center">2018-12-13</td>
															<td class="align-middle text-center">200</td>
															<td class="align-middle text-center">10</td>
															<td class="align-middle text-center">
																<div>
																	<a class='btn btn-info btn-xs' href="detail.jsp">
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
<!--1111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111-->	
<!--2222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222-->	
										<div class="tab-pane fade" id="tab2default">
										
											<section>
												<table class="table table-striped">
													<thead class="thead-dark">
														<tr>
															<th class="align-middle text-center col-w-chk"><input type="checkbox"
																class="align-top" /></th>
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
															<td class="align-middle text-center">[이노시스]</td>
															<td class="align-middle text-left"><a href="#">css 개씨발 줮같네?! [4]</a></td>
															<td class="align-middle text-center">승라일라이 [4]</td>
															<td class="align-middle text-center">2018-12-13</td>
															<td class="align-middle text-center">200</td>
															<td class="align-middle text-center">10</td>
															<td class="align-middle text-center">
																<div>
																	<a class='btn btn-info btn-xs' href="detail.jsp">
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
															<td class="align-middle text-center">[이노시스]</td>
															<td class="align-middle text-left"><a href="#">css 개씨발 줮같네?! [4]</a></td>
															<td class="align-middle text-center">승라일라이 [4]</td>
															<td class="align-middle text-center">2018-12-13</td>
															<td class="align-middle text-center">200</td>
															<td class="align-middle text-center">10</td>
															<td class="align-middle text-center">
																<div>
																	<a class='btn btn-info btn-xs' href="detail.jsp">
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
															<td class="align-middle text-center">[이노시스]</td>
															<td class="align-middle text-left"><a href="#">css 개씨발 줮같네?! [4]</a></td>
															<td class="align-middle text-center">승라일라이 [4]</td>
															<td class="align-middle text-center">2018-12-13</td>
															<td class="align-middle text-center">200</td>
															<td class="align-middle text-center">10</td>
															<td class="align-middle text-center">
																<div>
																	<a class='btn btn-info btn-xs' href="detail.jsp">
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
<!--2222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222-->	
<!--3333333333333333333333333333333333333333333333333333333333333333333333333333333333333333333333333333-->	
										<div class="tab-pane fade" id="tab3default">
		
											<section>
												<table class="table table-striped">
													<thead class="thead-dark">
														<tr>
															<th class="align-middle text-center col-w-chk"><input type="checkbox"
																class="align-top" /></th>
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
															<td class="align-middle text-center">[스카니아]</td>
															<td class="align-middle text-left"><a href="#">css 개씨발 줮같네?! [4]</a></td>
															<td class="align-middle text-center">승라일라이 [4]</td>
															<td class="align-middle text-center">2018-12-13</td>
															<td class="align-middle text-center">200</td>
															<td class="align-middle text-center">10</td>
															<td class="align-middle text-center">
																<div>
																	<a class='btn btn-info btn-xs' href="detail.jsp">
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
															<td class="align-middle text-center">[스카니아]</td>
															<td class="align-middle text-left"><a href="#">css 개씨발 줮같네?! [4]</a></td>
															<td class="align-middle text-center">승라일라이 [4]</td>
															<td class="align-middle text-center">2018-12-13</td>
															<td class="align-middle text-center">200</td>
															<td class="align-middle text-center">10</td>
															<td class="align-middle text-center">
																<div>
																	<a class='btn btn-info btn-xs' href="detail.jsp">
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
															<td class="align-middle text-center">[스카니아]</td>
															<td class="align-middle text-left"><a href="#">css 개씨발 줮같네?! [4]</a></td>
															<td class="align-middle text-center">승라일라이 [4]</td>
															<td class="align-middle text-center">2018-12-13</td>
															<td class="align-middle text-center">200</td>
															<td class="align-middle text-center">10</td>
															<td class="align-middle text-center">
																<div>
																	<a class='btn btn-info btn-xs' href="detail.jsp">
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
										<div class="tab-pane fade" id="tab4default">
		
											<section>
												<table class="table table-striped">
													<thead class="thead-dark">
														<tr>
															<th class="align-middle text-center col-w-chk"><input type="checkbox"
																class="align-top" /></th>
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
															<td class="align-middle text-center">[제니스]</td>
															<td class="align-middle text-left"><a href="#">css 개씨발 줮같네?! [4]</a></td>
															<td class="align-middle text-center">승라일라이 [4]</td>
															<td class="align-middle text-center">2018-12-13</td>
															<td class="align-middle text-center">200</td>
															<td class="align-middle text-center">10</td>
															<td class="align-middle text-center">
																<div>
																	<a class='btn btn-info btn-xs' href="detail.jsp">
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
															<td class="align-middle text-center">[제니스]</td>
															<td class="align-middle text-left"><a href="#">css 개씨발 줮같네?! [4]</a></td>
															<td class="align-middle text-center">승라일라이 [4]</td>
															<td class="align-middle text-center">2018-12-13</td>
															<td class="align-middle text-center">200</td>
															<td class="align-middle text-center">10</td>
															<td class="align-middle text-center">
																<div>
																	<a class='btn btn-info btn-xs' href="detail.jsp">
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
															<td class="align-middle text-center">[제니스]</td>
															<td class="align-middle text-left"><a href="#">css 개씨발 줮같네?! [4]</a></td>
															<td class="align-middle text-center">승라일라이 [4]</td>
															<td class="align-middle text-center">2018-12-13</td>
															<td class="align-middle text-center">200</td>
															<td class="align-middle text-center">10</td>
															<td class="align-middle text-center">
																<div>
																	<a class='btn btn-info btn-xs' href="detail.jsp">
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
										<div class="tab-pane fade" id="tab5default">
		
											<section>
												<table class="table table-striped">
													<thead class="thead-dark">
														<tr>
															<th class="align-middle text-center col-w-chk"><input type="checkbox"
																class="align-top" /></th>
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
															<td class="align-middle text-center">[베라]</td>
															<td class="align-middle text-left"><a href="#">css 개씨발 줮같네?! [4]</a></td>
															<td class="align-middle text-center">승라일라이 [4]</td>
															<td class="align-middle text-center">2018-12-13</td>
															<td class="align-middle text-center">200</td>
															<td class="align-middle text-center">10</td>
															<td class="align-middle text-center">
																<div>
																	<a class='btn btn-info btn-xs' href="detail.jsp">
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
															<td class="align-middle text-center">[베라]</td>
															<td class="align-middle text-left"><a href="#">css 개씨발 줮같네?! [4]</a></td>
															<td class="align-middle text-center">승라일라이 [4]</td>
															<td class="align-middle text-center">2018-12-13</td>
															<td class="align-middle text-center">200</td>
															<td class="align-middle text-center">10</td>
															<td class="align-middle text-center">
																<div>
																	<a class='btn btn-info btn-xs' href="detail.jsp">
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
															<td class="align-middle text-center">[베라]</td>
															<td class="align-middle text-left"><a href="#">css 개씨발 줮같네?! [4]</a></td>
															<td class="align-middle text-center">승라일라이 [4]</td>
															<td class="align-middle text-center">2018-12-13</td>
															<td class="align-middle text-center">200</td>
															<td class="align-middle text-center">10</td>
															<td class="align-middle text-center">
																<div>
																	<a class='btn btn-info btn-xs' href="detail.jsp">
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
										<div class="tab-pane fade" id="tab6default">
		
											<section>
												<table class="table table-striped">
													<thead class="thead-dark">
														<tr>
															<th class="align-middle text-center col-w-chk"><input type="checkbox"
																class="align-top" /></th>
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
															<td class="align-middle text-center">[리부트]</td>
															<td class="align-middle text-left"><a href="#">css 개씨발 줮같네?! [4]</a></td>
															<td class="align-middle text-center">승라일라이 [4]</td>
															<td class="align-middle text-center">2018-12-13</td>
															<td class="align-middle text-center">200</td>
															<td class="align-middle text-center">10</td>
															<td class="align-middle text-center">
																<div>
																	<a class='btn btn-info btn-xs' href="detail.jsp">
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
															<td class="align-middle text-center">[리부트]</td>
															<td class="align-middle text-left"><a href="#">css 개씨발 줮같네?! [4]</a></td>
															<td class="align-middle text-center">승라일라이 [4]</td>
															<td class="align-middle text-center">2018-12-13</td>
															<td class="align-middle text-center">200</td>
															<td class="align-middle text-center">10</td>
															<td class="align-middle text-center">
																<div>
																	<a class='btn btn-info btn-xs' href="detail.jsp">
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
															<td class="align-middle text-center">[리부트]</td>
															<td class="align-middle text-left"><a href="#">css 개씨발 줮같네?! [4]</a></td>
															<td class="align-middle text-center">승라일라이 [4]</td>
															<td class="align-middle text-center">2018-12-13</td>
															<td class="align-middle text-center">200</td>
															<td class="align-middle text-center">10</td>
															<td class="align-middle text-center">
																<div>
																	<a class='btn btn-info btn-xs' href="detail.jsp">
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
