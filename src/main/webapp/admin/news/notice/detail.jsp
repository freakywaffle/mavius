<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<link href="../../css/notice-detail.css" rel="stylesheet"id="bootstrap-css">
<link href="../../css/aside-left.css" rel="stylesheet" id="bootstrap-css">
<title>News - Notice</title>
</head>


<body>
	<header>
		<jsp:include page="../../inc/header.jsp"></jsp:include>
	</header>

	<main>
	<h1 class="hidden">메인</h1>

	<div class="aaaa">
		<section>
			<h1 class="hidden">바디 헤더</h1>

			<section class="main-header">
				<h1 class="main-list align">News</h1>
				<section>
					<h1 class="sub-list align">Notice</h1>
				</section>
			</section>

		</section>


		<section class="aa">
			<h1 class="hidden">바디 메인</h1>

			<section class="a page-header">
				<h1>공지사항</h1>
					
				<section class="row margin-top">
					<div>
						<div class="panel with-nav-tabs panel-default message-tab">
							<div class="panel-heading message-tab-heading">
								<ul class="nav nav-tabs">
									<li class="active"><a href="#tab1default" data-toggle="tab">쪽지
											보내기</a></li>
									<li><a href="#tab2default" data-toggle="tab">쪽지 보관함</a></li>
									<li><a href="#tab3default" data-toggle="tab">게시글 관리</a></li>
								</ul>
							</div>
							<div class="panel-body">
								<div class="tab-content">
									<div class="tab-pane fade in active" id="tab1default">
	
										<form id="contact" method="post" class="form" role="form">
											<div class="row">
												<div class="col-xs-6 col-md-6 form-group">
													<span>받는이</span>
													<div class="b">
														<input class="form-control" id="name" name="name"
															placeholder="Name" type="text" required autofocus /> <select
															class="form-control c" required autofocus>
															<option>전체</option>
															<option>관리자</option>
															<option>전체 회원</option>
														</select>
													</div>
												</div>
												<hr />
												<div class="form-group">
													<span>제목</span> <input class="form-control" id="title"
														name="title" placeholder="Title" type="text" required />
												</div>
												<hr />
											</div>
											<span>내용</span>
											<textarea class="form-control" id="message" name="message"
												placeholder="Message" rows="9"></textarea>
											<br />
											<div class="row">
												<div class="col-xs-12 col-md-12 form-group">
													<button class="btn btn-primary pull-right btn-margin-left"
														type="submit">Cancel</button>
													<button class="btn btn-primary pull-right" type="submit">Submit</button>
												</div>
											</div>
	
										</form>
									</div>
	
	
	
	
	
	
	
	
	
	
	
	
									<div class="tab-pane fade" id="tab2default">
									
									
						<section>
					<table class="table table-striped">
						<thead class="thead-dark">
							<tr>
								<th class="align-middle text-center"><input type="checkbox"
									class="align-top" /></th>
								<th class="align-middle text-center">닉네임(아이디)</th>
								<th class="align-middle text-center">내용</th>
								<th class="align-middle text-center">보낸 일자</th>
								<th class="align-middle text-center">관리</th>
							</tr>
						</thead>
						<tbody>
							<tr>
								<td class="align-middle text-center"><input type="checkbox"
									class="align-top" /></td>
								<td class="align-middle text-center">네모장군(dfke153)</td>
								<td class="align-middle text-center">내용이랑께~?!</td>
								<td class="align-middle text-center">18-12-07</td>
									<td class="text-center"><a class='btn btn-info btn-xs'
									href="#"><span class="glyphicon glyphicon-edit"></span>
										Edit</a> <a href="#" class="btn btn-danger btn-xs"><span
										class="glyphicon glyphicon-remove"></span> Del</a></td>

							</tr>
							<tr>
								<td class="align-middle text-center"><input type="checkbox"
									class="align-top" /></td>
								<td class="align-middle text-center">닉닉(seyeon1491)</td>
								<td class="align-middle text-center">내용이랑께~?!</td>
								<td class="align-middle text-center">18-12-07</td>
								<td class="text-center"><a class='btn btn-info btn-xs'
									href="#"><span class="glyphicon glyphicon-edit"></span>
										Edit</a> <a href="#" class="btn btn-danger btn-xs"><span
										class="glyphicon glyphicon-remove"></span> Del</a></td>


							</tr>
							<tr>
								<td class="align-middle text-center"><input type="checkbox"
									class="align-top" /></td>
								<td class="align-middle text-center">배열지존(dewf3)</td>
								<td class="align-middle text-center">내용이랑께~?!</td>
								<td class="align-middle text-center">18-12-07</td>
								<td class="text-center"><a class='btn btn-info btn-xs'
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
									
									</div>
									
									
									
									
									
									
									
									
									
									
									
									
									
									
									<div class="tab-pane fade" id="tab3default">
	
	
										<form id="contact" method="post" class="form" role="form">
											<div class="row">
												<div class="col-xs-6 col-md-6 form-group">
													<span>게시글 선택</span>
													<div class="b">
														<select class="form-control c" required autofocus>
															<option>자유게시판</option>		
															<option>공략게시판</option>
															<option>코디게시판</option>
														</select> <input class="form-control" id="num" name="num"
															placeholder="게시글 번호" type="number" required autofocus />
													</div>
												</div>
												<hr />
												<div class="form-group">
													<span>제목</span> <input class="form-control" id="title"
														name="title" placeholder="Title" type="text" required />
												</div>
												<hr />
											</div>
											<div>
												<span>내용</span> <select class="form-control c" required
													autofocus>
														<optgroup label="제재사유를 선택해 주세요.">
														<option>광고가 포함된 글입니다.</option>
														<option>욕설이 포함된 글입니다.</option>
														<option>스팸글입니다.</option>
													</optgroup>
												</select>
												<textarea class="form-control" id="message" name="message"
													placeholder="Message" rows="9"></textarea>
												<br />
											</div>
											<div class="row">
												<div class="col-xs-12 col-md-12 form-group">
													<button class="btn btn-primary pull-right btn-margin-left"
														type="submit">Cancel</button>
													<button class="btn btn-primary pull-right" type="submit">Submit</button>
												</div>
											</div>
	
										</form>
	
	
									</div>
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















