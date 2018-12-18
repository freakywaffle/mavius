<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>MAVIUS - 공지사항</title>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-beta/css/bootstrap.min.css" integrity="sha384-/Y6pD6FV/Vv2HJnA6t+vslU6fwYXjCFtcEpHbNJ0lyAFsXTsjBbfaDjzALeQsN6M" crossorigin="anonymous">
    <!-- Bootstrap core CSS -->
    <link href="../../sidebar/vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">

    <link href="../../sidebar/css/simple-sidebar.css" rel="stylesheet">
    <link rel="stylesheet" href="../../css/news/newslist.css">
    
</head>
<body>
<div id="hiririk">
<!-- 왼쪽 사이드바 메인헤더 -->
<jsp:include page="/sidebar/header.jsp" />
<!-- 오른쪽쪽 사이드바 로그인메뉴 -->
<jsp:include page="/sidebar/sidebar.jsp" />

    <!-- 메인 바디 헤더 -->
    <main>
	    <div class="main-body-div">
	        <div class="main-body-header">
	            <h1 class="text-center">N o t i c e</h1>
	            <h3 class="text-center">공 지 사 항</h3>
	        </div>
        </div>

        <!-- 바디 content ------------------------------>

        <!-- 게시판 검색 폼-->
        <div class="float-left search-form">
            <form action="" method="GET">
                <h1 class="hidden">히든.. 검색폼</h1>
                <div class="input-group">
                    <label class="hidden">검색</label>
                    <select style="width: 90px;" class="form-control" name="f" id="">
                        <option value="title">제목</option>
                        <option value="content">내용</option>
                    </select>
                    <input style="width: 250px;" class="form-control" type="text" name="" placeholder="검색어를 입력하쎄용"/>
                    <span class="input-group-btn">
                        <button class="btn btn-secondary" type="button">
                            <i class="fas fa-search"></i>
                        </button>
                    </span>
                </div>
            </form>
        </div>
        <!-- 게시판 검색 폼 end-->

        <div class="board-list">
            <div>
                <table class="table table-striped table-hover">
                    <thead class="thead-dark">
                        <tr>
                            <th class="text-center">번호</th>
                            <th class="text-center">제목</th>
                            <th class="text-center">작성일</th>
                            <th class="text-center">조회수</th>
                        </tr>
                    </thead>
                    <tbody>
                    <tr> 
                        <td class="text-center">3</td>
                        <td>table-bordered는 표처럼 보이게 만들어줌 셀마다 테두리</td>
                        <td class="text-center">2016-12-27</td>
                        <td class="text-center">3234</td>
                    </tr>
                    <tr> 
                        <td class="text-center">3</td>
                        <td>table-striped는 홀수마다 색을 주네</td>
                        <td class="text-center">2015-01-03</td>
                        <td class="text-center">6323</td>
                    </tr>
                    <tr> 
                        <td class="text-center">2</td>
                        <td>전역일 군번 12-73077374</td>
                        <td class="text-center">2014-08-26</td>
                        <td class="text-center">442</td>
                    </tr>
                    <tr> 
                        <td class="text-center">1</td>
                        <td>입대일 군번 12-73077374</td>
                        <td class="text-center">2012-11-27</td>
                        <td class="text-center">323</td>
                    </tr>
                    </tbody>
                </table>
            </div>
        </div>
            <!-- 페이저 -->
            <div class="pager">
                <nav aria-label="Page navigation example">
                    <ul class="pagination justify-content-center" style="margin-bottom: 0px;">
                        <li class="page-item"><a class="page-link" href="#"> < </a></li>
                        <li class="page-item"><a class="page-link" href="#"> 1 </a></li>
                        <li class="page-item"><a class="page-link" href="#"> 2 </a></li>
                        <li class="page-item"><a class="page-link" href="#"> 3 </a></li>
                        <li class="page-item"><a class="page-link" href="#"> 4 </a></li>
                        <li class="page-item"><a class="page-link" href="#"> 5 </a></li>
                        <li class="page-item"><a class="page-link" href="#"> > </a></li>
                    </ul>
                </nav>
            </div>
            <!-- 페이저 end-->
        </div>
    </main>
<!-- 바디 content END ------------------------------>
<script defer src="https://use.fontawesome.com/releases/v5.0.8/js/solid.js" integrity="sha384-+Ga2s7YBbhOD6nie0DzrZpJes+b2K1xkpKxTFFcx59QmVPaSA8c7pycsNaFwUK6l" crossorigin="anonymous"></script>
<script defer src="https://use.fontawesome.com/releases/v5.0.8/js/fontawesome.js" integrity="sha384-7ox8Q2yzO/uWircfojVuCQOZl+ZZBg2D2J5nkpLqzH1HY0C1dHlTKIbpRz/LG23c" crossorigin="anonymous"></script>
</body>
</html>