<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>공지 디테일</title>
	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-beta/css/bootstrap.min.css" integrity="sha384-/Y6pD6FV/Vv2HJnA6t+vslU6fwYXjCFtcEpHbNJ0lyAFsXTsjBbfaDjzALeQsN6M" crossorigin="anonymous">
	<!-- <link rel="stylesheet" href="../../css/news/newslist.css"> -->
	<link rel="stylesheet" href="../../admin/css/notice-detail.css"id="bootstrap-css">
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
			<section class="row margin-top">
					<div>
						<div class="panel with-nav-tabs panel-default message-tab">
							<div class="panel-heading message-tab-heading">
								<ul class="nav nav-tabs">
									<li class="active"><a href="#tab1default" data-toggle="tab">내용</a></li>
									<li><a href="#tab2default" data-toggle="tab">수정</a></li>
								</ul>
							</div>
							<div class="panel-body">
								<div class="tab-content">
									<div class="tab-pane fade in active" id="tab1default">
	
										<form id="contact" method="post" class="form" role="form">
											<div class="row">
												<div class="form-group">
													<div class="b">
														<span>제목</span>
														<span style="font-weight: bold; font-size: 15px; text-align: left;	">[공지사항]</span>
														<input class="col-md-6 form-control" id="title" name="title"
															placeholder="title" type="text" required autofocus disabled/>
														<span>조회수   213</span>
														<span>추천수   13</span>
														<span>2018.11.19 20:18</span>
													</div>
												</div>
											</div>
											<hr/>
											<div class="row">
												<div class="form-group">
													<div class="b">
														<span>작성자</span>
														<input class="col-xs-2 col-md-2 form-control" id="nickName" name="nickName"
															placeholder="nickName" type="text" required autofocus disabled/> 
													</div>
												</div>
											</div>
											<hr/>
											<div class="b">
												<span class="bb">내용</span>
												<textarea class="col-md-10 form-control" id="message" name="message"
													placeholder="Message" rows="13"  disabled></textarea>											
											</div>
											
											<hr/>
											<div class="row">
												<div class="form-group">
													<div class="b">
														<span>첨부파일</span>
														<a href="">aaa.jpg</a>
													</div>								
												</div>
											</div>
											<hr/>
											<div class="row">
												<div class="form-group">
													<div class="b">
															<span>이미지</span>
															<a href="">aaa.jpg</a>
													</div>					
												</div>
											</div>
											<hr/>
											
											<br />
											<div class="row">
												<div class="col-xs-12 col-md-12 form-group">
													<button class="btn btn-primary pull-left btn-margin-left"
														type="submit">목록</button>
												</div>
											</div>
	
										</form>
									</div>
	
<!--111111111111111111111111111111111111111111111111111111111111111111111-->
<!--222222222222222222222222222222222222222222222222222222222222222222222-->
									<div class="tab-pane fade" id="tab2default">
									
										<form id="contact" method="post" class="form" role="form">
											<div class="row">
												<div class="form-group">
													<div class="b">
														<span>제목</span>
														<span style="font-weight: bold; font-size: 15px; text-align: left;	">[공지사항]</span>
														<input class="col-md-6 form-control" id="title" name="title"
															placeholder="title" type="text" required autofocus/>
														<span>조회수   213</span>
														<span>추천수   13</span>
														<span>2018.11.19 20:18</span>
													</div>
												</div>
											</div>
											<hr/>
											<div class="row">
												<div class="form-group">
													<div class="b">
														<span>작성자</span>
														<input class="col-xs-2 col-md-2 form-control" id="nickName" name="nickName"
															placeholder="nickName" type="text" required autofocus/> 
													</div>
												</div>
											</div>
											<hr/>
											<div class="b">
												<span class="bb">내용</span>
												<textarea class="col-md-10 form-control" id="message" name="message"
													placeholder="Message" rows="13"></textarea>											
											</div>
											
											<hr/>
											<div class="row">
												<div class="form-group">
													<div class="b">
														<span>첨부파일</span>
														<input class="col-xs-2 col-md-2 form-control" id="file" name="file"
															value="파일선택" type="button" required autofocus />
														<a href="">aaa.jpg</a>
													</div>								
												</div>
											</div>
											<hr/>
											<div class="row">
												<div class="form-group">
													<div class="b">
															<span>이미지</span>
															<input class="col-xs-2 col-md-2 form-control" id="img" name="img"
															placeholder="파일 선택" type="button" required autofocus /> 
															<a href="">aaa.jpg</a>
													</div>					
												</div>
											</div>
											<hr/>
											
											<br />
											<div class="row">
												<div class="col-xs-12 col-md-12 form-group">
													<button class="btn btn-primary pull-right btn-margin-left"
														type="submit">취소</button>
													<button class="btn btn-primary pull-right" type="submit">수정완료</button>
												</div>
											</div>
	
										</form>
										
									
									</div>									
<!--222222222222222222222222222222222222222222222222222222222222222222222-->
								</div>
							</div>
						</div>
					</div>
				</section>

		</div>
	
	</main>	
			
</div>
</body>
</html>