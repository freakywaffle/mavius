<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link href="/css/targetboardreg.css" rel="stylesheet">
<link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.5.0/css/all.css">
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css" integrity="sha384-MCw98/SFnGE8fJT3GXwEOngsV7Zt27NXFoaoApmYm81iuXoPkFOJwJ8ERdknLPMO" crossorigin="anonymous">
<script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.3/umd/popper.min.js" integrity="sha384-ZMP7rVo3mIykV+2+9J3UJ46jBk0WLaUAdn689aCwoqbBJiSnjAK/l8WvCWPIPm49" crossorigin="anonymous"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/js/bootstrap.min.js" integrity="sha384-ChfqqxuZUCnJSK3+MXmPNIyE6ZbWh2IMqE241rYiqJxyMiZ6OW/JmZQ5stwEULTy" crossorigin="anonymous"></script>
<script src="/js/targetboardreg.js"></script>
<script src="/ckeditor/ckeditor.js"></script>
</head>
<body>
	<div id="hiririk">
		<jsp:include page="/sidebar/header.jsp" />
		<jsp:include page="/sidebar/sidebar.jsp" />
	    <div class="blank"></div>
		<div class="head-border-line"></div>
		<div class="wrapper">
			<section class="board-header">
				<div>
					<h1 class="border-title text-center font-medium">ARCHER</h1>
					<h3 class="text-center">공략게시판</h3>
				</div>
			</section>
			<section class="main margin-bottom reset-padding">
				<h3 class="text-center margin-top">글쓰기</h3>
				<div class="main-page block-flex margin-top">
					<form class="input-form" id="reg-form" action="reg" method="post" onsubmit="return dataSubmit();" enctype="multipart/form-data">
						<div class="set-form-div">
							<select class="job-category border-color-gray" name="category">
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
							<div class="file-area">
								<input type="file" class="hidden" name="file"/>
								<button type="button" class="btn btn-info">파일첨부</button>
								<input type="text" disabled class="file-names"/>
							</div>
							<div class="content border-color-gray" id="editor1" contenteditable="true"></div>
							<input type="hidden" name="content" />
						</div>
					</form>
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
								<button type="button" id="modalBtn" class="modalBtn btn btn-secondary hidden margin-top">
									열기
								</button>
							</div>
							<div class="margin-top-20">
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
								<div>
									<select class="item-option2 option-category border-color-gray hidden">
										<option>직업군</option>
										<option>전사</option>
										<option>궁수</option>
										<option>마법사</option>
										<option>도적</option>
										<option>해적</option>
									</select>
								</div>
								<button type="button" id="modalBtn2" class="modalBtn btn btn-secondary hidden margin-top">
									열기
								</button>
							</div>
							<div class="margin-top reg-btns">
								<button type="button" class="btn btn-secondary" onclick="location.href='list'">취소</button>
								<button type="submit" class="btn btn-primary" id="btn-submit" form="reg-form">등록</button>
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
								<li><img alt="어드밴스드쿼버" src="/images/skill/어드밴스드 쿼버.gif"></li>
								<li><img alt="언카블" src="/images/skill/언카블.gif"></li>
								<li><img alt="운즈샷" src="/images/skill/운즈샷.gif"></li>
								<li><img alt="폭풍의시" src="/images/skill/폭풍의시.gif"></li>
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