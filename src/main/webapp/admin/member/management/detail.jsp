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
					<h1 class="sub-list align">회원 정보</h1>
				</section>
			</section>

		</section>


		<section class="aa">
			<h1 class="hidden">바디 메인</h1>

			<section class="a">
				<h1>
					MemberList <span>(총 회원수 : ?명, 오늘 접속한 회원수 : ?명, 어제 접속한 회원수
						:?명)</span>
				</h1>

				<section class="row margin-top">
					<div>
						<div class="panel with-nav-tabs panel-default message-tab">
							<div class="panel-heading message-tab-heading">
								<ul class="nav nav-tabs">
									<li class="active"><a href="#tab1default" data-toggle="tab">회원 정보</a></li>
									<li><a href="#tab2default" data-toggle="tab">회원 정보 수정</a></li>
								</ul>
							</div>
							<div class="panel-body">
								<div class="tab-content">
									<div class="tab-pane fade in active" id="tab1default">
	
	



	
	
										<form id="contact" method="post" class="form" role="form">
											<div class="row">
												<section class = "group-box">
													<div class="form-group align-middle text-center b">
														<span class="status-title">아이디</span>
														<input class="form-control text-center" id="name" name="name"
															placeholder="Name" type="text" required autofocus disabled/> 
														
													</div>
													<hr />
													
													<div class="form-group b">
														<span class="status-title">닉네임</span> 
														<input class="form-control text-center" id="title" name="title" 
															placeholder="Title" type="text" required disabled/>
													</div>
													<hr />
													
													<div class="form-group align-middle text-center b">
														<span class="status-title">이름</span> 
														<input class="form-control text-center" id="title" name="title" 
															placeholder="Title" type="text" required disabled/>
													</div>
													<hr />
													
													<div class="form-group b">
														<span class="status-title">이메일</span> 
														<input class="form-control text-center" id="title" name="title" 
															placeholder="Title" type="text" required disabled/>
													</div>
													<hr />
													
													<div class="form-group b">
														<span class="status-title">등급</span> 
														<input class="form-control text-center" id="title" name="title" 
															placeholder="Title" type="text" required disabled/>
													</div>
													<hr />
													
													<div class="form-group b">
														<span class="status-title">방문 횟수</span> 
														<input class="form-control text-center" id="title" name="title" 
															placeholder="Title" type="text" required disabled/>
													</div>
													<hr />
													
													<div class="form-group b">
														<span class="status-title">게시글</span> 
														<input class="form-control text-center" id="title" name="title" 
															placeholder="Title" type="text" required disabled/>
													</div>
													<hr />
													
													<div class="form-group b">
														<span class="status-title">댓글</span> 
														<input class="form-control text-center" id="title" name="title" 
															placeholder="Title" type="text" required disabled/>
													</div>
													<hr />
													
													<div class="form-group b">
														<span class="status-title">가입일</span> 
														<input class="form-control text-center" id="title" name="title" 
															placeholder="Title" type="text" required disabled/>
													</div>
													<hr />
													
													<div class="form-group b">
														<span class="status-title">최근 방문일</span> 
														<input class="form-control text-center" id="title" name="title" 
															placeholder="Title" type="text" required disabled/>
													</div>
													<hr />
													
													
												</section>	
											</div>
										</form>
										
										
										
										
									</div>
	
	
									<div class="tab-pane fade" id="tab2default">
									
					
				
					
					
					
					
					
					
					
					
					
					
					
					
					
												<form id="contact" method="post" class="form" role="form">
											<div class="row">
												<section class = "group-box">
													<div class="form-group align-middle text-center b">
														<span class="status-title">아이디</span>
														<input class="form-control text-center" id="name" name="name"
															placeholder="Name" type="text" required autofocus disabled/> 
														
													</div>
													<hr />
													
													<div class="form-group b">
														<span class="status-title">닉네임</span> 
														<input class="form-control text-center" id="title" name="title" 
															placeholder="Title" type="text" required disabled/>
													</div>
													<hr />
													
													<div class="form-group align-middle text-center b">
														<span class="status-title">이름</span> 
														<input class="form-control text-center" id="title" name="title" 
															placeholder="Title" type="text" required disabled/>
													</div>
													<hr />
													
													<div class="form-group b">
														<span class="status-title">이메일</span> 
														<input class="form-control text-center" id="title" name="title" 
															placeholder="Title" type="text" required disabled/>
													</div>
													<hr />
													
													<div class="form-group b">
														<span class="status-title">등급</span> 
														<input class="form-control text-center" id="title" name="title" 
															placeholder="Title" type="text" required disabled/>
													</div>
													<hr />
													
													<div class="form-group b">
														<span class="status-title">방문 횟수</span> 
														<input class="form-control text-center" id="title" name="title" 
															placeholder="Title" type="text" required disabled/>
													</div>
													<hr />
													
													<div class="form-group b">
														<span class="status-title">게시글</span> 
														<input class="form-control text-center" id="title" name="title" 
															placeholder="Title" type="text" required disabled/>
													</div>
													<hr />
													
													<div class="form-group b">
														<span class="status-title">댓글</span> 
														<input class="form-control text-center" id="title" name="title" 
															placeholder="Title" type="text" required disabled/>
													</div>
													<hr />
													
													<div class="form-group b">
														<span class="status-title">가입일</span> 
														<input class="form-control text-center" id="title" name="title" 
															placeholder="Title" type="text" required disabled/>
													</div>
													<hr />
													
													<div class="form-group b">
														<span class="status-title">최근 방문일</span> 
														<input class="form-control text-center" id="title" name="title" 
															placeholder="Title" type="text" required disabled/>
													</div>
													<hr />
													
													
												</section>	
											</div>
												<div class="container">
    <div class="row">
        <div class="col-xs-12 col-sm-6 col-md-4 col-sm-offset-3 col-md-offset-4">
            <div class="panel panel-default">
                <!-- Default panel contents -->
                <div class="panel-heading">Material Design Switch Demos</div>
            
                <!-- List group -->
                <ul class="list-group">
                    <li class="list-group-item">
                     	게시글 작성
                        <div class="material-switch pull-right">
                            <input id="someSwitchOptionDefault" name="someSwitchOption001" type="checkbox"/>
                            <label for="someSwitchOptionDefault" class="label-default"></label>
                        </div>
                    </li>
                    <li class="list-group-item">
                        	댓글 작성
                        <div class="material-switch pull-right">
                            <input id="someSwitchOptionPrimary" name="someSwitchOption001" type="checkbox"/>
                            <label for="someSwitchOptionPrimary" class="label-primary"></label>
                        </div>
                    </li>
                    <li class="list-group-item">
                        권한 부여?
                        <div class="material-switch pull-right">
                            <input id="someSwitchOptionSuccess" name="someSwitchOption001" type="checkbox"/>
                            <label for="someSwitchOptionSuccess" class="label-success"></label>
                        </div>
                    </li>
                    <li class="list-group-item">
                        권한 제한?
                        <div class="material-switch pull-right">
                            <input id="someSwitchOptionInfo" name="someSwitchOption001" type="checkbox"/>
                            <label for="someSwitchOptionInfo" class="label-info"></label>
                        </div>
                    </li>
                    <li class="list-group-item">
                        활동 정지???!!!
                        <div class="material-switch pull-right">
                            <input id="someSwitchOptionWarning" name="someSwitchOption001" type="checkbox"/>
                            <label for="someSwitchOptionWarning" class="label-warning"></label>
                        </div>
                    </li>
                    <li class="list-group-item">
                        Bootstrap Switch Danger
                        <div class="material-switch pull-right">
                            <input id="someSwitchOptionDanger" name="someSwitchOption001" type="checkbox"/>
                            <label for="someSwitchOptionDanger" class="label-danger"></label>
                        </div>
                    </li>
                </ul>
            </div>            
        </div>
    </div>
</div>	
										</form>
										
										
										
										
										
										
										
										
										
										
																
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
									
	
													
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
