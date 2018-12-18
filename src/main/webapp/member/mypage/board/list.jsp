<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
	<!DOCTYPE html>
	<html lang="en" id="html">
	
	
	<head>
	
		<meta charset="utf-8">
		<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
		<meta name="description" content="">
		<meta name="author" content="">
	
		<title>Simple Sidebar - Start Bootstrap Template</title>
	
		<!-- Bootstrap core CSS -->
		<link href="../../../sidebar/vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">
		<!--"vendor/bootstrap/css/bootstrap.min.css"-->
		<!-- Custom styles for this template -->
		<link href="../../mypage/css/boardlist.css" rel="stylesheet">
	
		<!-- Custom styles for this template -->
		<script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo"
			crossorigin="anonymous"></script>
		<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.3/umd/popper.min.js" integrity="sha384-ZMP7rVo3mIykV+2+9J3UJ46jBk0WLaUAdn689aCwoqbBJiSnjAK/l8WvCWPIPm49"
			crossorigin="anonymous"></script>
		<script src="../../../bootstrap-4.1.3/bootstrap-4.1.3/dist/js/bootstrap.min.js" integrity="sha384-ChfqqxuZUCnJSK3+MXmPNIyE6ZbWh2IMqE241rYiqJxyMiZ6OW/JmZQ5stwEULTy"
			crossorigin="anonymous"></script>
	</head>
	
	
	<body id="body">
		<div id="hiririk">
			
	<jsp:include page="/member/mypage/mypageheader.jsp"></jsp:include>
	
				
		<jsp:include page="/sidebar/sidebar.jsp"></jsp:include>
	
	
				<main id="main">
	
	
	
					<!--마이페이지 로그인 시-->
	
					<div class="box board-title">
						<h1>MYPAGE</h1>
						<h3>마이페이지</h3>
	
					</div>
	
	
					<section id="form-login" class="box">
						<div class="pwd-box">
							<div class="subtitle">
								<h3>내가 쓴 게시글</h3>
							</div>
							<div class="searchtxt">
								<select>
									<option value="">전체기간</option>
									<option value="최근 1주">최근 1주</option>
									<option value="최근 1달">최근 1달</option>
								</select>
								<select>
									<option value="">게시판 분류</option>
									<option value="게시판">전사게시판</option>
									<option value="게시판">전사게시판</option>
									<option value="게시판">전사게시판</option>
									<option value="게시판">전사게시판</option>
									<option value="게시판">전사게시판</option>
								</select>
									<input  type="" name="searchtxt" />
									<input type="submit" name="btn-edit" />
								</div>
							<div class="submenu2">
								<div class="category-div-cr cat-div">
									<h5>작성일</h5>
									<ul>
										<li> <a>2018.01.01</a></li>
                                        <li> <a>2018.01.01</a></li>
                                        <li> <a>2018.01.01</a></li>
                                        <li> <a>2018.01.01</a></li>
                                        <li> <a>2018.01.01</a></li>
                                        <li> <a>2018.01.01</a></li>
                                        <li> <a>2018.01.01</a></li>
                                        <li> <a>2018.01.01</a></li>
                                        <li> <a>2018.01.01</a></li>
                                        <li> <a>2018.01.01</a></li>
									</ul>
								</div>
								<div class="category-div-md cat-div">
									<h5>게시판 분류</h5>
									<ul>
										<li> <a>adsf</a></li>
										<li> <a>adsf</a></li>
										<li> <a>adsf</a></li>
										<li> <a>adsf</a></li>
										<li> <a>adsf</a></li>
										<li> <a>adsf</a></li>
										<li> <a>adsf</a></li>
										<li> <a>adsf</a></li>
										<li> <a>adsf</a></li>
										<li> <a>adsf</a></li>
									</ul>
								</div>
	
								<div class="category-div-lg cat-div">
	
									<h5>제    목</h5>
									<ul>
										<li> <a href="">지현이 뱃살은 몇살</a></li>
										<li> <a href="">지현이 뱃살은 몇살</a></li>
										<li> <a href="">지현이 뱃살은 몇살</a></li>
										<li> <a href="">지현이 뱃살은 몇살</a></li>
										<li> <a href="">지현이 뱃살은 몇살</a></li>
										<li> <a href="">지현이 뱃살은 몇살</a></li>
										<li> <a href="">지현이 뱃살은 몇살</a></li>
										<li> <a href="">지현이 뱃살은 몇살</a></li>
										<li> <a href="">지현이 뱃살은 몇살</a></li>
										<li> <a href="">지현이 뱃살은 몇살</a></li>
									</ul>
	
								</div>
								<div class="category-div-sm cat-div">
									<h5>조회수</h5>
									<ul>
										<li> <a>1</a></li>
										<li> <a>2</a></li>
										<li> <a>3</a></li>
										<li> <a>4</a></li>
										<li> <a>5</a></li>
										<li> <a>6</a></li>
										<li> <a>7</a></li>
										<li> <a>8</a></li>
										<li> <a>9</a></li>
										<li> <a>10</a></li>
									</ul>
								</div>
								<div class="category-div-sm cat-div">
									<h5>추천수</h5>
									<ul>
										<li> <a>1</a></li>
										<li> <a>2</a></li>
										<li> <a>3</a></li>
										<li> <a>4</a></li>
										<li> <a>5</a></li>
										<li> <a>6</a></li>
										<li> <a>7</a></li>
										<li> <a>8</a></li>
										<li> <a>9</a></li>
										<li> <a>10</a></li>
									</ul>
								</div>
	
	
							</div>
							<div class="pagerbox">
                                <nav>
                                    <ul class="pager-list">
                                        <li class="pager-item"><a class="pager-link" href="#">
                                                < </a> </li> <li class="pager-item"><a class="pager-link" href="#"> 1 </a></li>
                                        <li class="pager-item"><a class="pager-link" href="#"> 2 </a></li>
                                        <li class="pager-item"><a class="pager-link" href="#"> 3 </a></li>
                                        <li class="pager-item"><a class="pager-link" href="#"> 4 </a></li>
                                        <li class="pager-item"><a class="pager-link" href="#"> 5 </a></li>
                                        <li class="pager-item"><a class="pager-link" href="#"> 6 </a></li>
                                        <li class="pager-item"><a class="pager-link" href="#"> 7 </a></li>
                                        <li class="pager-item"><a class="pager-link" href="#"> 8 </a></li>
                                        <li class="pager-item"><a class="pager-link" href="#"> 9 </a></li>
                                        <li class="pager-item"><a class="pager-link" href="#"> 10 </a></li>
                                        <li class="pager-item"><a class="pager-link" href="#"> > </a></li>
                                    </ul>
                                </nav>
                            </div>
						</div>
						
					</section>
				</main>
			</div>
		</div>
		</div>
	
	
	</body>
	
	</html>