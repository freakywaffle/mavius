<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link href="../../../css/targetboardlist.css" rel="stylesheet">
<link href="../../../sidebar/css/simple-sidebar.css" rel="stylesheet">
<link href="../../../sidebar/vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">
<link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.5.0/css/all.css">
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
	<div class="wrapper">
	<div class="head-boarder-line"></div>
		<section class="main margin-top">
			<h1 class="boarder-title text-center font-medium">MAGICIAN</h1>
			<h3 class="text-center">공략게시판</h3>
			<div class="menu-bar margin-top text-right">
				<input class="btn-write" type="button" value="글쓰기"/>
			</div>
			<div class="main-page block-flex margin-top">
				<div>
					<h1 class="hidden">모아보기 리스트</h1>
					<section class="simbol action">
						<img alt="카테고리1" src="../../../../images/catalog1.png">
					</section>
					<section class="simbol action">
						<img alt="카테고리2" src="../../../../images/catalog2.png">
					</section>
					<section class="simbol action">
						<img alt="카테고리3" src="../../../../images/catalog3.png">
					</section>
					<section class="simbol action">
						<img alt="카테고리4" src="../../../../images/catalog4.png">
					</section>
					<section class="simbol action">
						<img alt="카테고리5" src="../../../../images/catalog5.png">
					</section>
				</div>
				<div class="target-board-main">
					<section class="target-board">		
						<div class="vertical-line"></div>
						
						<h1 class="hidden">목록</h1>
						<div class="first-div board-content">
							<div class="horizontal-line"></div>
							<div class="category">보우마스터</div>
							<div class="body">
								<div class="content-title font-bold"><a href="#">보마 스킬트리 공략 </a></div>
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