<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link href="../../../css/targetboardlist.css" rel="stylesheet">
<link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.5.0/css/all.css">
</head>
<body>
	<div id="hiririk">
        <!-- <header>
        <div id="wrapper">

            Header
            <div id="sidebar-wrapper">
                <img class="header-bg" src="../images/park-header.jpg" />
                <ul class="sidebar-nav header-box">
                    <div class="main-img">
                        <img  src="../images/login-logo-135.png" />
                    </div>
                    <li class="sidebar-brand">
                        <a href="#">
                            MAVIUS
                        </a>
                    </li>
                    <li>
                        <div class="pa" onmouseover="sosikdown()" onmouseout="sosikup()">
                            <a href="#One">소식</a>
                            <div class="submenu">
                                <ul>
                                    <li><a href="#">공지사항</a></li>
                                    <li><a href="#">이벤트</a></li>
                                    <li><a href="#">업데이트</a></li>
                                </ul>
                            </div>
                        </div>
                    </li>
                    <li>
                        <div class="pa" onmouseover="sosikdown()" onmouseout="sosikup()">

                            <a href="#Two">커뮤니티</a>
                            <div class="submenu">
                                <ul>
                                    <li><a href="#1">자유게시판</a></li>
                                    <li><a href="#2">코디게시판</a></li>
                                    <li><a href="#2">서버게시판</a></li>

                                </ul>
                            </div>
                        </div>
                    </li>
                    <li>
                        <div class="pa" onmouseover="sosikdown()" onmouseout="sosikup()">

                            <a href="#">공략</a>
                            <div class="submenu">
                                <ul>
                                    <li><a href="#1">직업별 팁&공략</a></li>
                                    <li><a href="#2">보스공략</a></li>
                                </ul>
                            </div>
                        </div>
                    </li>
                </ul>
            </div>

        </div>
    </header>
        
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

    </script> -->
       <jsp:include page="/sidebar/header.jsp" />
       <jsp:include page="/sidebar/sidebar.jsp" />
       
      	<div class="blank"></div>
       <div class="head-border-line"></div>
		<div class="wrapper">
			<section class="board-header">
					<h1 class="border-title text-center font-medium">ARCHER</h1>
					<h3 class="text-center">공략게시판</h3>
					<div class="menu-bar text-right">
						<a class="btn btn-outline-secondary" href="reg">글쓰기</a>
					</div>
			</section>
			<section class="main">
				<div class="main-page block-flex margin-top">
					<div>
						<h1 class="hidden">모아보기 리스트</h1>
						<div class="simbol action">
							<img alt="카테고리1" src="../../../../images/catalog1.png">
						</div>
						<div class="simbol action">
							<img alt="카테고리2" src="../../../../images/catalog2.png">
						</div>
						<div class="simbol action">
							<img alt="카테고리3" src="../../../../images/catalog3.png">
						</div>
						<div class="simbol action">
							<img alt="카테고리4" src="../../../../images/catalog4.png">
						</div>
						<div class="simbol action">
							<img alt="카테고리5" src="../../../../images/catalog5.png">
						</div>
					</div>
					<div class="target-board-main">
						<section class="target-board">		
							<div class="vertical-line"></div>
							
							<h1 class="hidden">목록</h1>
							<div class="first-div board-content">
								<div class="horizontal-line"></div>
								<div class="category">보우마스터</div>
								<div class="body">
									<div class="content-title font-bold"><a href="detail">보마 스킬트리 공략</a></div>
									<ul class="inline-list font-light">
										<li><i class="fas fa-chalkboard-teacher"></i>&nbsp;형호</li>
										<li><i class="far fa-clock"></i>&nbsp;12-06</li>
										<li><i class="far fa-comment"></i>&nbsp;6</li>
										<li><i class="fas fa-book-reader"></i>&nbsp;10</li>
										<li><i class="far fa-thumbs-up"></i>&nbsp;5</li>
									</ul>
								</div>
							</div>
							<div class="board-content">
								<div class="horizontal-line" ></div>
								<div class="category">메르세데스</div>
								<div class="body">
									<div class="content-title font-bold"><a href="#">메르 스킬트리 공략</a></div>
									<ul class="inline-list font-light">
										<li><i class="fas fa-chalkboard-teacher"></i>&nbsp;형호</li>
										<li><i class="far fa-clock"></i>&nbsp;12-06</li>
										<li><i class="far fa-comment"></i>&nbsp;6</li>
										<li><i class="fas fa-book-reader"></i>&nbsp;10</li>
										<li><i class="far fa-thumbs-up"></i>&nbsp;5</li>
									</ul>
								</div>
							</div>
							<div class="board-content">
								<div class="horizontal-line"></div>
								<div class="category">윈드브레이커</div>
								<div class="body">
									<div class="content-title font-bold"><a href="#">윈브 스킬트리 공략</a></div>
									<ul class="inline-list font-light">
										<li><i class="fas fa-chalkboard-teacher"></i>&nbsp;형호</li>
										<li><i class="far fa-clock"></i>&nbsp;12-06</li>
										<li><i class="far fa-comment"></i>&nbsp;6</li>
										<li><i class="fas fa-book-reader"></i>&nbsp;10</li>
										<li><i class="far fa-thumbs-up"></i>&nbsp;5</li>
									</ul>
								</div>
							</div>
							<div class="board-content">
								<div class="horizontal-line"></div>
								<div class="category">신궁</div>
								<div class="body">
									<div class="content-title font-bold"><a href="#">신궁 스킬트리 공략</a></div>
									<ul class="inline-list font-light">
										<li><i class="fas fa-chalkboard-teacher"></i>&nbsp;형호</li>
										<li><i class="far fa-clock"></i>&nbsp;12-06</li>
										<li><i class="far fa-comment"></i>&nbsp;6</li>
										<li><i class="fas fa-book-reader"></i>&nbsp;10</li>
										<li><i class="far fa-thumbs-up"></i>&nbsp;5</li>
									</ul>
								</div>
							</div>
							<div class="board-content">
								<div class="horizontal-line"></div>
								<div class="category">윈드브레이커</div>
								<div class="body">
								<div class="content-title font-bold"><a href="#">윈브 스킬트리 공략</a></div>
								<ul class="inline-list font-light">
									<li><i class="fas fa-chalkboard-teacher"></i>&nbsp;형호</li>
									<li><i class="far fa-clock"></i>&nbsp;12-06</li>
									<li><i class="far fa-comment"></i>&nbsp;6</li>
									<li><i class="fas fa-book-reader"></i>&nbsp;10</li>
									<li><i class="far fa-thumbs-up"></i>&nbsp;5</li>
								</ul>
								</div>
							</div>
							<div class="board-content">
								<div class="horizontal-line"></div>
								<div class="category">윈드브레이커</div>
								<div class="body">
								<div class="content-title font-bold"><a href="#">윈브 스킬트리 공략</a></div>
								<ul class="inline-list font-light">
									<li><i class="fas fa-chalkboard-teacher"></i>&nbsp;형호</li>
									<li><i class="far fa-clock"></i>&nbsp;12-06</li>
									<li><i class="far fa-comment"></i>&nbsp;6</li>
									<li><i class="fas fa-book-reader"></i>&nbsp;10</li>
									<li><i class="far fa-thumbs-up"></i>&nbsp;5</li>
								</ul>
								</div>
							</div>
							<div class="board-content">
								<div class="horizontal-line"></div>
								<div class="category">윈드브레이커</div>
								<div class="body">
								<div class="content-title font-bold"><a href="#">윈브 스킬트리 공략</a></div>
								<ul class="inline-list font-light">
									<li><i class="fas fa-chalkboard-teacher"></i>&nbsp;형호</li>
									<li><i class="far fa-clock"></i>&nbsp;12-06</li>
									<li><i class="far fa-comment"></i>&nbsp;6</li>
									<li><i class="fas fa-book-reader"></i>&nbsp;10</li>
									<li><i class="far fa-thumbs-up"></i>&nbsp;5</li>
								</ul>
								</div>
							</div>
						</section>	
						<section class="target-pager margin-top">
							<h1 class="hidden">페이저</h1>
							<p class="inline"><i class="fas fa-caret-left"></i></p>
							<ul class="inline-list">
								<li class="font-bold underline"><a href="#">1</a></li>
								<li><a href="#">2</a></li>
								<li><a href="#">3</a></li>
								<li><a href="#">4</a></li>
								<li><a href="#">5</a></li>
							</ul>
							<p class="inline"><i class="fas fa-caret-right"></i></p>
						</section>
					</div>
				</div>
			</section>	
		</div>
	</div>
</body>
</html>