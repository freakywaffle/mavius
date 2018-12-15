<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<link href="../../css/notice-reg.css" rel="stylesheet"id="bootstrap-css">
<link href="../../css/aside-left.css" rel="stylesheet" 	id="bootstrap-css">
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
									<li class="active"><a href="#tab1default" data-toggle="tab">내용</a></li>
									<li><a href="#tab2default" data-toggle="tab">수정</a></li> 
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
	
<!--111111111111111111111111111111111111111111111111111111111111111111111-->
<!--222222222222222222222222222222222222222222222222222222222222222222222-->
									<div class="tab-pane fade" id="tab2default">
									00000
									</div>
<!--222222222222222222222222222222222222222222222222222222222222222222222-->
<!--333333333333333333333333333333333333333333333333333333333333333333333-->
									<div class="tab-pane fade" id="tab3default">
									000000000
									</div>
<!--333333333333333333333333333333333333333333333333333333333333333333333-->
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















