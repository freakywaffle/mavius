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
									<li class="active"><a href="#tab1default" data-toggle="tab">글쓰기</a></li>
								</ul>
							</div>
							<div class="panel-body">
								<div class="tab-content">
									<div class="tab-pane fade in active" id="tab1default">
	
										<form id="" method="post" class="form" role="form">
											<div class="row">
												<div class="form-group">
													<div class="b">
														<span>제목</span>
														<input class="col-md-10 form-control" name="title"
															placeholder="제목" type="text" required autofocus /> 
													</div>
												</div>
											</div>
											<hr/>
											<div class="row">
												<div class="form-group">
													<div class="b">
														<span>작성자</span>
														<input class="col-xs-2 col-md-2 form-control" name="writerId"
															placeholder="nickName" type="text" required autofocus disabled/> 
													</div>
												</div>
											</div>
											<hr/>
											<div class="b">
												<span class="bb">내용</span>
												<textarea class="col-md-10 form-control" name="content"
													placeholder="Content" rows="13"></textarea>											
											</div>
											
											<hr/>
											<div class="row">
												<div class="form-group">
													<div class="b">
														<span>첨부파일</span>
														<input class="col-xs-2 col-md-2 form-control" name="file"
															value="파일선택" type="button" required autofocus /> 
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
													</div>					
												</div>
											</div>
											<hr/>
											
											<br />
											<div class="row">
												<div class="col-xs-12 col-md-12 form-group">
													<a href = "list"><button class="btn btn-primary pull-right btn-margin-left">Cancel</button></a>
													<button class="btn btn-primary pull-right" type="submit">Submit</button>
												</div>
											</div>
	
										</form>
									</div>
	
<!--111111111111111111111111111111111111111111111111111111111111111111111-->
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















	