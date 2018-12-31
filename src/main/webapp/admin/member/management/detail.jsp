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
			<div>
				<h1 class="main-list align">회원 관리</h1>
				<section>
					<h1 class="sub-list align">회원 정보</h1>
				</section>
			</div>
			</section>

		</section>


		<section class="aa">
			<h1 class="hidden">바디 메인</h1>

			<section class="a">
				<h1>MemberList</h1>

				<section class="row margin-top">
					<div>
						<div class="panel with-nav-tabs panel-default message-tab">
							<div class="panel-heading message-tab-heading">
								<ul class="nav nav-tabs">
									<li class="active"><a href="#tab1default"
										data-toggle="tab">회원 정보</a></li>
									<li><a href="#tab2default" data-toggle="tab">회원 정보 수정</a></li>
								</ul>
							</div>
							<div class="panel-body">
								<div class="tab-content">
									<div class="tab-pane fade in active" id="tab1default">







										<form id="contact" method="post" class="form" role="form">
											<div class="row">
												<section class="group-box">
													<div class="form-group align-middle text-center b">
														<span class="status-title">아이디</span> <input
															class="form-control text-center form-ctr" id="name"
															name="name" placeholder="${detail.id}" type="text"
															required autofocus disabled /> <span class="status-title">닉네임</span>
														<input class="form-control text-center form-ctr"
															id="title" name="title" placeholder="${detail.nickName}"
															type="text" required disabled />
													</div>
													<hr />

													<div class="form-group align-middle text-center b">
														<span class="status-title">이메일</span> <input
															class="form-control text-center form-ctr" id="title"
															name="title" placeholder="${detail.email}" type="text"
															required disabled /> <span class="status-title">신고횟수</span>
														<input class="form-control text-center form-ctr"
															id="title" name="title" placeholder="${detail.report}"
															type="text" required disabled />
													</div>
													<hr />

													<div class="form-group b">
														<span class="status-title">등급</span> <input
															class="form-control text-center form-ctr" id="title"
															name="title" placeholder="${detail.grade}" type="text"
															required disabled />
															<span class="status-title">권한</span> 
															<c:if test="${detail.authority == 0}">
															<input
															class="form-control text-center form-ctr" id="title"
															name="title" placeholder="회원" type="text"
															required disabled />
															</c:if>
															<c:if test="${detail.authority == 1}">
															<input
															class="form-control text-center form-ctr" id="title"
															name="title" placeholder="관리자" type="text"
															required disabled />
															</c:if>

													</div>
													<hr />

													<div class="form-group b">
														<span class="status-title">게시글 수</span> 
														<input
															class="form-control text-center form-ctr" id="title"
															name="title" placeholder="${detail.postsCount}"
															type="text" required disabled /> <span
															class="status-title">댓글 수</span> <input
															class="form-control text-center form-ctr" id="title"
															name="title" placeholder="${detail.commentCount}"
															type="text" required disabled />
													</div>
													<hr />

													<div class="form-group b">
														<span class="status-title">가입일</span> <input
															class="form-control text-center form-ctr" id="title"
															name="title" placeholder="${detail.regDate}" type="text"
															required disabled /> <span class="status-title">경험치</span>
														<input class="form-control text-center form-ctr"
															id="title" name="title" placeholder="${detail.exp}"
															type="text" required disabled />
													</div>
													<hr />


												</section>
											</div>
										</form>




									</div>


									<div class="tab-pane fade" id="tab2default">















										<form action="/admin/member/edit" method="post" class="form" role="form">
											<div class="row">
												<section class="group-box">
													<div class="form-group align-middle text-center b">
														<span class="status-title">아이디</span> <input
															class="form-control text-center form-ctr"
															 value="${detail.id}" type="text"
															 autofocus disabled /> <span class="status-title">닉네임</span>
														<input class="hidden" name="id" value="${detail.id}" />
														<input class="form-control text-center form-ctr"
															name="nickname" value="${detail.nickName}"
															type="text" />
													</div>
													<hr />

													<div class="form-group align-middle text-center b">
														<span class="status-title">이메일</span> <input
															class="form-control text-center form-ctr" 
															name="email" value="${detail.email}" type="text"/> 
															<span class="status-title">신고횟수</span>
														<input class="form-control text-center form-ctr"
															name="report" value="${detail.report}"
															type="text" disabled/>
													</div>
													<hr />

													<div class="form-group b">
														<span class="status-title">등급</span>
															<select class="form-control text-center form-ctr" name="grade" style="height: 34px;" >
																<optgroup label="현재등급">
																	<option value="${detail.grade}">${detail.grade}</option>
																</optgroup>
																<optgroup label="회원등급">
																	<option value="초보자">초보자</option>
																	<option value="1차">1차</option>
																	<option value="2차">2차</option>
																	<option value="3차">3차</option>
																	<option value="4차">4차</option>
																	<option value="5차">5차</option>
																</optgroup>
															</select> 
															
														<span class="status-title">권한</span>
														<select class="form-control text-center form-ctr c" name="authority"
															required autofocus>
															<optgroup label="현재권한">
																<c:if test="${detail.authority == 0}">
																	<option value="0">관리자</option>
																</c:if>
																<c:if test="${detail.authority == 1}">
																	<option value="1">모든권한</option>
																</c:if>															
																<c:if test="${detail.authority == 2}">
																	<option value="2">댓글불가</option>
																</c:if>															
																<c:if test="${detail.authority == 3}">
																	<option value="3">글쓰기 불가</option>
																</c:if>															
																<c:if test="${detail.authority == 4}">
																	<option value="4">모두불가</option>
																</c:if>															
															</optgroup>
															<optgroup label="권한변경">
																<option value="0">관리자</option>
																<option value="1">모든권한</option>
																<option value="2">댓글불가</option>
																<option value="3">글쓰기불가</option>
																<option value="4">모두불가</option>
															</optgroup>
														</select>

													</div>
													<hr />

													<div class="form-group b">
														<span class="status-title">게시글 수</span> <input
															class="form-control text-center form-ctr"
															name="postscount" placeholder="${detail.postsCount}"
															type="text" required disabled /> <span
															class="status-title">댓글 수</span> <input
															class="form-control text-center form-ctr"
															name="commentcount" placeholder="${detail.commentCount}"
															type="text" required disabled />
													</div>
													<hr />

													<div class="form-group b">
														<span class="status-title">가입일</span> <input
															class="form-control text-center form-ctr"
															name="regdate" placeholder="${detail.regDate}" type="text"
															required disabled /> <span class="status-title">경험치</span>
														<input class="form-control text-center form-ctr"
															name="exp" placeholder="${detail.exp}"
															type="text" required disabled />
													</div>
													<hr />
												
											</section>
											</div>
											




											<div class="group-box">
												<div class="panel panel-default ">
													<!-- Default panel contents -->

													<div class="panel-heading heig">Material Design
														Switch Demos</div>

													<!-- List group -->
													<ul class="list-group">

														<li class="list-group-item out-line">게시글 작성
															<div class="material-switch pull-right">
																<input id="someSwitchOptionDefault"
																	name="someSwitchOption001" type="checkbox" /> <label
																	for="someSwitchOptionDefault" class="label-default"></label>
															</div>
														</li>


														<li class="list-group-item out-line">댓글 작성
															<div class="material-switch pull-right">
																<input id="someSwitchOptionPrimary"
																	name="someSwitchOption001" type="checkbox" /> <label
																	for="someSwitchOptionPrimary" class="label-primary"></label>
															</div>
														</li>
														<li class="list-group-item out-line">권한 부여?
															<div class="material-switch pull-right">
																<input id="someSwitchOptionSuccess"
																	name="someSwitchOption001" type="checkbox" /> <label
																	for="someSwitchOptionSuccess" class="label-success"></label>
															</div>
														</li>
														<li class="list-group-item out-line">권한 제한?
															<div class="material-switch pull-right">
																<input id="someSwitchOptionInfo"
																	name="someSwitchOption001" type="checkbox" /> <label
																	for="someSwitchOptionInfo" class="label-info"></label>
															</div>
														</li>
														<li class="list-group-item out-line">활동 정지???!!!
															<div class="material-switch pull-right">
																<input id="someSwitchOptionWarning"
																	name="someSwitchOption001" type="checkbox" /> <label
																	for="someSwitchOptionWarning" class="label-warning"></label>
															</div>
														</li>
														<li class="list-group-item out-line">Bootstrap Switch
															Danger
															<div class="material-switch pull-right">
																<input id="someSwitchOptionDanger"
																	name="someSwitchOption001" type="checkbox" /> <label
																	for="someSwitchOptionDanger" class="label-danger"></label>
															</div>
														</li>
													</ul>
												</div>

											</div>

											<div class="text-right padding-right"
												style="margin-right: 14px">
												<!--form action="/admin/member/delete" method="post" class="form" role="form">
													<button type="submit" class="btn btn-danger btn-xs"> 
														<span class="glyphicon glyphicon-remove"></span> 강제 탈퇴
													</button>
												</form--> 
												<!--form action="/admin/member/edit" method="post" class="form" role="form"-->
													<button class='btn btn-info btn-xs' type="submit"> 
														<span class="glyphicon glyphicon-edit"></span> 수정 완료
													</button> 
												<!--/form-->
												<a href="list" class="btn btn-danger btn-xs"> <span
													class="glyphicon glyphicon-remove"></span> 취소
												</a>
											</div>
											</form>
										
									</div>





								</div>




							</div>
						</div>
					</div>
	</div>
	</section>


	<br />

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
