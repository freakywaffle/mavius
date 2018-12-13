<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link href="../../../css/targetboardreg.css" rel="stylesheet">
<link href="../../../sidebar/css/simple-sidebar.css" rel="stylesheet">
<link href="../../../sidebar/vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">
<link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.5.0/css/all.css">
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css" integrity="sha384-MCw98/SFnGE8fJT3GXwEOngsV7Zt27NXFoaoApmYm81iuXoPkFOJwJ8ERdknLPMO" crossorigin="anonymous">
<script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.3/umd/popper.min.js" integrity="sha384-ZMP7rVo3mIykV+2+9J3UJ46jBk0WLaUAdn689aCwoqbBJiSnjAK/l8WvCWPIPm49" crossorigin="anonymous"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/js/bootstrap.min.js" integrity="sha384-ChfqqxuZUCnJSK3+MXmPNIyE6ZbWh2IMqE241rYiqJxyMiZ6OW/JmZQ5stwEULTy" crossorigin="anonymous"></script>
<script src="https://cdn.ckeditor.com/4.11.1/standard/ckeditor.js"></script>
<script src="../../../js/targetboardreg.js"></script>
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
	    <div class="blank"></div>
		<div class="head-border-line"></div>
		<div class="wrapper">
			<section class="board-header">
				<h1 class="border-title text-center font-medium">ARCHER</h1>
				<h3 class="text-center">공략게시판</h3>
			</section>
			<section class="main margin-bottom reset-padding">
				<h3 class="text-center margin-top">글쓰기</h3>
				<div class="main-page block-flex margin-top">
					<div class="input-form">
						<div class="set-form-div">
							<select class="job-category border-color-gray">
								<option>직업 카테고리</option>
								<option>보우마스터</option>
								<option>신궁</option>
								<option>메르세데스</option>
								<option>와일드헌터</option>
								<option>윈드브레이커</option>
							</select>
							<br/>
							<input autocomplete="off" placeholder="  글제목" type="text" name="title" class="title border-color-gray"/>
							<br/>
							<div class="content border-color-gray" id="editor1" contenteditable="true"></div>
						</div>
					</div>
					<div class="input-sup-form ">
						<div class="set-form-div">
							<div class="margin-top">
								<label>스킬 아이콘</label><br/>
								<select class="skill-option1 option-category border-color-gray reset-margin-top">
									<option>직업군</option>
									<option>전사</option>
									<option>궁수</option>
									<option>마법사</option>
									<option>도적</option>
									<option>해적</option>
								</select>
								<div class="option2-list">
									<select name="warrior" class="skill-option2 option-category border-color-gray hidden">
										<option>세부직업</option>
										<option>히어로</option>
										<option>팔라딘</option>
										<option>다크나이트</option>
										<option>아란</option>
										<option>블래스터</option>
										<option>소울마스터</option>
										<option>제로</option>
										<option>미하일</option>
										<option>카이저</option>
										<option>데몬어벤저</option>
										<option>데몬슬레이어</option>
									</select>
									<select name="archer" class="skill-option2 option-category border-color-gray hidden">
										<option>세부직업</option>
										<option>보우마스터</option>
										<option>신궁</option>
										<option>메르세데스</option>
										<option>윈드브레이커</option>
										<option>와일드헌터</option>
									</select>
									<select name="magician" class="skill-option2 option-category border-color-gray hidden">
										<option>세부직업</option>
										<option>아크메이지(썬콜)</option>
										<option>아크메이지(불독)</option>
										<option>비숍</option>
										<option>플레임위자드</option>
										<option>에반</option>
										<option>배틀메이지</option>
										<option>루미너스</option>
										<option>키네시스</option>
										<option>일리움</option>
									</select>
									<select name="rogue" class="skill-option2 option-category border-color-gray hidden">
										<option>세부직업</option>
										<option>나이트로드</option>
										<option>섀도어</option>
										<option>나이트워커</option>
										<option>듀얼블레이드</option>
										<option>팬텀</option>
										<option>카데나</option>
									</select>
									<select name="pirate" class="skill-option2 option-category border-color-gray hidden">
										<option>세부직업</option>
										<option>메카닉</option>
										<option>바이퍼</option>
										<option>캡틴</option>
										<option>스트라이커</option>
										<option>캐논슈터</option>
										<option>앤젤릭버스터</option>
										<option>제논</option>
										<option>은월</option>
										<option>아크</option>
									</select>
								</div>
								<button type="button" id="modalBtn" class="modalBtn btn btn-secondary hidden">
									열기
								</button>
							</div>
							<div class="margin-top" >
								<label>아이템 아이콘</label><br/>
								<select class="item-option1 option-category border-color-gray reset-margin-top">
									<option>세트장비</option>
									<option>네크로 세트</option>
									<option>반레온 세트</option>
									<option>여제 세트</option>
									<option>루타비스 세트</option>
									<option>앱솔랩스 세트</option>
									<option>아케인 세트</option>
								</select>
								<select class="item-option2-job option-category border-color-gray hidden">
									<option>직업군</option>
									<option>전사</option>
									<option>궁수</option>
									<option>마법사</option>
									<option>도적</option>
									<option>해적</option>
								</select>
								
								<button type="button" id="modalBtn2" class="modalBtn btn btn-secondary">
									열기
								</button>
							</div>
							<div class="margin-top reg-btns">
								<button class="btn btn-secondary">취소</button>
								<button class="btn btn-primary">등록</button>
							</div>
						</div>
					</div>
				</div>
			</section>				
		</div>
	</div>
	<div class="modal fade" id="regModal" tabindex="-1" role="dialog" aria-labelledby="regModalLabel" aria-hidden="true">
		<div class="modal-dialog modal-lg" role="document">
			<div class="modal-content">
				<div class="modal-header">
					<h5 class="modal-title" id="regModalLabel">게시글 등록</h5>
					<button type="button" class="close" data-dismiss="modal" aria-label="Close">
						<span aria-hidden="true">&times;</span>
					</button>
				</div>
				<div class="modal-body block-flex">
					<div class="content">
						<label>내용</label>
						<div id="editor2" class="border-color-gray" contenteditable="true"></div>
					</div>
					<div class="icon-list">
						<label>아이콘</label>
						<div class="border-color-gray">
							<ul>
								<li><img alt="카테고리1" src="../../../../images/catalog1.png"></li>
								<li><img alt="카테고리1" src="../../../../images/catalog2.png"></li>
								<li><img alt="카테고리1" src="../../../../images/catalog3.png"></li>
								<li><img alt="카테고리1" src="../../../../images/catalog4.png"></li>
							</ul>
						</div>
					</div>			
				</div>
				<div class="modal-footer">
					<button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
					<button type="button" class="btn btn-primary" id="modalSave">Save changes</button>
				</div>
			</div>
		</div>
	</div>
	
	
</body>
</html>