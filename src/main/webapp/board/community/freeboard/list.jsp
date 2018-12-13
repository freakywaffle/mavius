<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>커뮤니티-자유게시판</title>
<link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.5.0/css/all.css" integrity="sha384-B4dIYHKNBt8Bc12p+WXckhzcICo0wtJAoU8YZTY5qE0Id1GSseTk6S+L3BlXeVIU" crossorigin="anonymous">
<link href="../../../css/freeBoardList.css" type="text/css" rel="stylesheet" />
 <link href="../../../sidebar/vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">
<!--"vendor/bootstrap/css/bootstrap.min.css"-->
    <!-- Custom styles for this template -->
    <link href="../../../sidebar/css/simple-sidebar.css" rel="stylesheet">
</head>
<body>
<div id="hiririk">
        <header>
            <div id="wrapper">

                <!-- Header -->
                <div id="sidebar-wrapper">
                    <ul class="sidebar-nav header-box">
                        <li class="sidebar-brand">
                            <a href="#">
                                MAVIUS
                            </a>
                        </li>
                        <li>
                            <div class="pa" onmouseover="sosikdown()" onmouseout="sosikup()">
                            <a  href="#One">내가 쓴글</a>
                            <div class="submenu">
                                <ul>
                                    <li><a href="#">게시글</a></li>
                                    <li><a href="#">댓글</a></li>
                                </ul>
                            </div>
                            </div>
                                
                            
                        </li>
                        <li>
                                <div class="pa" onmouseover="sosikdown()" onmouseout="sosikup()">

                            <a href="#Two">쪽지</a>
                            <div class="submenu">
                                <ul>
                                    <li><a href="#1">보내기</a></li>
                                    <li><a href="#2">받은쪽지함</a></li>
                                   
                                </ul>
                                </div>
                                </div>
                        </li>
                        <li>
                                <div class="pa" onmouseover="sosikdown()" onmouseout="sosikup()">

                            <a href="#">QnA</a>
                            <div class="submenu">
                            <ul>
                                    <li><a href="#1">1</a></li>
                                    <li><a href="#2">2</a></li>
                                    <li><a href="#3">3</a></li>
                                </ul>
                                </div>
                                </div>
                        </li>
                        <li>
                                <div class="pa" onmouseover="sosikdown()" onmouseout="sosikup()">

                            <a href="#">Reply</a>
                            <div class="submenu">
                            <ul>
                                    <li><a href="#1">1</a></li>
                                    <li><a href="#2">2</a></li>
                                    <li><a href="#3">3</a></li>
                                </ul>
                                </div>
                                </div>
                        </li>
                        <li>
                                <div class="pa" onmouseover="sosikdown()" onmouseout="sosikup()">

                            <a href="#">Scrap</a>
                            <div class="submenu">
                            <ul>
                                    <li><a href="#1">1</a></li>
                                    <li><a href="#2">2</a></li>
                                    <li><a href="#3">3</a></li>
                                </ul>
                            </div>
                                </div>
                        </li>

                    </ul>
                </div>

            </div>
        </header>


        <!-- Header -->

        <!-- <div class="side-btn" onclick="toggleSidebar()">
            
                <span></span>
                <span></span>
                <span></span>
        </div> -->
        
        <div id="sidebar">
            <div class="side-btn" onclick="toggleSidebarout()">
                <input type="submit" />
            </div>
            <ul class="sidebar-nav2">
                <li>
                    <a href="#">home</a>
                </li>
                <li>
                    <a href="#">about</a>
                </li>
                <li>
                    <a href="#">contact</a>
                </li>

            </ul>
        </div>

        <script>

            function toggleSidebarout() 
            {
               document.getElementById("sidebar").classList.toggle('active');
            }

        </script>
	<!-- <header>
		<h1>헤더</h1>

		<section>
			<h1>커뮤니티</h1>
			<nav>
				<h1>자유게시판</h1>
				<ul>
					<li><a href="">자유게시판</a></li>
					<li><a href="">코디평가게시판</a></br> <a href="">베스트코디</a></br> <a href="">일반</a>
					</li>
					<li><a href="">테스트서버</a></li>
					<li><a href="">서버게시판</a></br> <a href="">길드홍보</a></br> 
					<a href="">비매너주의</a></br>
					<a href="">팔아요</a></br> <a href="">사요</a></li>
				</ul>
			</nav>
		</section>

	</header> -->
	<section class="lee-board">
		<h1>자유게시판</h1>
	</section>
	
	<main id="main">
	
	
	<section >
		<h1 class="hidden">검색폼</h1>
		<div>
		<form id="search-form">
			<!-- <fieldset class="hidden">
				<legend class="hidden">게시글검색폼</legend> -->

				<!-- 디폴트 값으로 현재 게시판 명 -->
				<select>
					<option>전체기간</option>
						<option>최근 1주</option>
						<option>최근 한달</option>
						<option>직접 입력</option>
					</select> 
					<select>
						<option>제목</option>
						<option>제목+내용</option>
						<option>작성자</option>
						
					</select> 
					<input type="text" name="txt-sch" class="input" />
					<input type="submit" name="btn-sch" value="검색" class="input"/>
			<!-- </fieldset> -->
		</form>
	</div>
	</section>
	<section id="list-table">
		<h1 class="hidden">리스트 테이블</h1>
		<div class="txt-align-left-padding">
			<div class="inline-block shadow color-freeboard">
				<ul class="txt-size-nm">
					<!-- div로 인라인블록하고 ul에다가 플렉스 주면  -->
					<li>1</li>
					<li>[잡담]</li>
					<li>승라일라이(댓글+4)</li><!-- 제목(댓글수) -->
					<li><a href="">승래</a></li>
					<!-- 작성자 -->
				
				</ul>
				<a href=""><p class="word-break display-auto freeboard-p-height">12312313</p></a>
				<div class="txt-align-left">
				
				<ul class="txt-size-sm">
					<li class="fas fa-pen-fancy">2018-12-05 16:40</li>
					<!-- 등록 일자 -->
					<li class="fas fa-eye">200</li>
					<!-- 조회수 -->
					<li class="fas fa-heart">123</li>
					<!-- 추천수 -->
				</ul>
				</div>
			
			</div>
			<div class="inline-block shadow color-freeboard">
				<ul class="txt-size-nm">
					<!-- div로 인라인블록하고 ul에다가 플렉스 주면  -->
					<li>1</li>
					<li>[잡담]</li>
					<li>승라일라이(댓글+4)</li><!-- 제목(댓글수) -->
					<li><a href="">승래</a></li>
					<!-- 작성자 -->
				
				</ul>
				<a href=""><p class="word-break display-auto freeboard-p-height">12312313</p></a>
				<div class="txt-align-left">
				
				<ul class="txt-size-sm">
					<li class="fas fa-pen-fancy">2018-12-05 16:40</li>
					<!-- 등록 일자 -->
					<li class="fas fa-eye">200</li>
					<!-- 조회수 -->
					<li class="fas fa-heart">123</li>
					<!-- 추천수 -->
				</ul>
				</div>
				
			</div>
			<div class="inline-block shadow color-freeboard">
					<ul class="txt-size-nm">
						<!-- div로 인라인블록하고 ul에다가 플렉스 주면  -->
						<li>1</li>
						<li>[잡담]</li>
						<li>승라일라이(댓글+4)</li><!-- 제목(댓글수) -->
						<li><a href="">승래</a></li>
						<!-- 작성자 -->
					
					</ul>
					<a href=""><p class="word-break display-auto freeboard-p-height">12312313</p></a>
					<div class="txt-align-left">
					
					<ul class="txt-size-sm">
						<li class="fas fa-pen-fancy">2018-12-05 16:40</li>
						<!-- 등록 일자 -->
						<li class="fas fa-eye">200</li>
						<!-- 조회수 -->
						<li class="fas fa-heart">123</li>
						<!-- 추천수 -->
					</ul>
					</div>
				
			</div>
			<div class="inline-block shadow color-freeboard">
					<ul class="txt-size-nm">
						<!-- div로 인라인블록하고 ul에다가 플렉스 주면  -->
						<li>1</li>
						<li>[잡담]</li>
						<li>승라일라이(댓글+4)</li><!-- 제목(댓글수) -->
						<li><a href="">승래</a></li>
						<!-- 작성자 -->
					
					</ul>
					<a href=""><p class="word-break display-auto freeboard-p-height">12312313</p></a>
					<div class="txt-align-left">
					
					<ul class="txt-size-sm">
						<li class="fas fa-pen-fancy">2018-12-05 16:40</li>
						<!-- 등록 일자 -->
						<li class="fas fa-eye">200</li>
						<!-- 조회수 -->
						<li class="fas fa-heart">123</li>
						<!-- 추천수 -->
					</ul>
					</div>
				
			</div>
			<div class="inline-block shadow color-freeboard">
				<ul class="txt-size-nm">
					<!-- div로 인라인블록하고 ul에다가 플렉스 주면  -->
					<li>1</li>
					<li>[잡담]</li>
					<li>승라일라이(댓글+4)</li><!-- 제목(댓글수) -->
					<li><a href="">승래</a></li>
					<!-- 작성자 -->
				
				</ul>
				<a href=""><p class="word-break display-auto freeboard-p-height">12312313</p></a>
				<div class="txt-align-left">
				
				<ul class="txt-size-sm">
					<li class="fas fa-pen-fancy">2018-12-05 16:40</li>
					<!-- 등록 일자 -->
					<li class="fas fa-eye">200</li>
					<!-- 조회수 -->
					<li class="fas fa-heart">123</li>
					<!-- 추천수 -->
				</ul>
				</div>
				
			</div>
			<div class="inline-block shadow color-freeboard">
				<ul class="txt-size-nm">
					<!-- div로 인라인블록하고 ul에다가 플렉스 주면  -->
					<li>1</li>
					<li>[잡담]</li>
					<li>승라일라이(댓글+4)</li><!-- 제목(댓글수) -->
					<li><a href="">승래</a></li>
					<!-- 작성자 -->
				
				</ul>
				<a href=""><p class="word-break display-auto freeboard-p-height">12312313</p></a>
				<div class="txt-align-left">
				
				<ul class="txt-size-sm">
					<li class="fas fa-pen-fancy">2018-12-05 16:40</li>
					<!-- 등록 일자 -->
					<li class="fas fa-eye">200</li>
					<!-- 조회수 -->
					<li class="fas fa-heart">123</li>
					<!-- 추천수 -->
				</ul>
				</div>
				
			</div>
			<div class="inline-block shadow color-freeboard">
				<ul class="txt-size-nm">
					<!-- div로 인라인블록하고 ul에다가 플렉스 주면  -->
					<li>1</li>
					<li>[잡담]</li>
					<li>승라일라이(댓글+4)</li><!-- 제목(댓글수) -->
					<li><a href="">승래</a></li>
					<!-- 작성자 -->
				
				</ul>
				<a href=""><p class="word-break display-auto freeboard-p-height">12312313</p></a>
				<div class="txt-align-left">
				
				<ul class="txt-size-sm">
					<li class="fas fa-pen-fancy">2018-12-05 16:40</li>
					<!-- 등록 일자 -->
					<li class="fas fa-eye">200</li>
					<!-- 조회수 -->
					<li class="fas fa-heart">123</li>
					<!-- 추천수 -->
				</ul>
				</div>
					
			</div>
			<div class="inline-block shadow color-freeboard">
				<ul class="txt-size-nm">
					<!-- div로 인라인블록하고 ul에다가 플렉스 주면  -->
					<li>1</li>
					<li>[잡담]</li>
					<li>승라일라이(댓글+4)</li><!-- 제목(댓글수) -->
					<li><a href="">승래</a></li>
					<!-- 작성자 -->
				
				</ul>
				<a href=""><p class="word-break display-auto freeboard-p-height">12312313</p></a>
				<div class="txt-align-left">
				
				<ul class="txt-size-sm">
					<li class="fas fa-pen-fancy">2018-12-05 16:40</li>
					<!-- 등록 일자 -->
					<li class="fas fa-eye">200</li>
					<!-- 조회수 -->
					<li class="fas fa-heart">123</li>
					<!-- 추천수 -->
				</ul>
				</div>
				
			</div>
			<div class="inline-block shadow color-freeboard">
				<ul class="txt-size-nm">
					<!-- div로 인라인블록하고 ul에다가 플렉스 주면  -->
					<li>1</li>
					<li>[잡담]</li>
					<li>승라일라이(댓글+4)</li><!-- 제목(댓글수) -->
					<li><a href="">승래</a></li>
					<!-- 작성자 -->
				
				</ul>
				<a href=""><p class="word-break display-auto freeboard-p-height">12312313</p></a>
				<div class="txt-align-left">
				
				<ul class="txt-size-sm">
					<li class="fas fa-pen-fancy">2018-12-05 16:40</li>
					<!-- 등록 일자 -->
					<li class="fas fa-eye">200</li>
					<!-- 조회수 -->
					<li class="fas fa-heart">123</li>
					<!-- 추천수 -->
				</ul>
				</div>
				
			</div>
			<div class="inline-block shadow color-freeboard">
				<ul class="txt-size-nm">
					<!-- div로 인라인블록하고 ul에다가 플렉스 주면  -->
					<li>1</li>
					<li>[잡담]</li>
					<li>승라일라이(댓글+4)</li><!-- 제목(댓글수) -->
					<li><a href="">승래</a></li>
					<!-- 작성자 -->
				
				</ul>
				<a href=""><p class="word-break display-auto freeboard-p-height">12312313</p></a>
				<div class="txt-align-left">
				
				<ul class="txt-size-sm">
					<li class="fas fa-pen-fancy">2018-12-05 16:40</li>
					<!-- 등록 일자 -->
					<li class="fas fa-eye">200</li>
					<!-- 조회수 -->
					<li class="fas fa-heart">123</li>
					<!-- 추천수 -->
				</ul>
				</div>
				
			</div>
		
		</div>
	</section>

	<section class="writer-area">
		<h1 class="hidden">글쓰기 영역</h1>
		<input type="button" class="fa-pencil-alt" name="btn-reg" value="글쓰기"  />
		<!-- <input type="button" name="btn-del" value="삭제" /> 관리자가 삭제 -->
	</section>
	<section class="flex pager">
		<h1 class="hidden">페이저</h1>
		<div>
		<a href="" class="border-none"><span class="txt-align-center fas fa-arrow-circle-left"></span></a>
			<ul class="inline-flex list-style">
				<li><a href="">1</a></li>
				<li><a href="">2</a></li>
				<li><a href="">3</a></li>
				<li><a href="">4</a></li>
				<li><a href="">5</a></li>
			</ul>
		<a href=""  class="border-none"><span class="fas fa-arrow-circle-right"></span></a>
	</div>
	
	</section>
	
	</main>
	</div>
	<!-- <aside>
		<h1>어사이드</h1>
	</aside> -->
</body>
</html>