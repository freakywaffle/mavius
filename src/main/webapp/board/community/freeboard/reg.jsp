<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link href="../../../css/communityBoardReg.css" rel="stylesheet">
<link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.5.0/css/all.css">
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css" integrity="sha384-MCw98/SFnGE8fJT3GXwEOngsV7Zt27NXFoaoApmYm81iuXoPkFOJwJ8ERdknLPMO" crossorigin="anonymous">
<script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.3/umd/popper.min.js" integrity="sha384-ZMP7rVo3mIykV+2+9J3UJ46jBk0WLaUAdn689aCwoqbBJiSnjAK/l8WvCWPIPm49" crossorigin="anonymous"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/js/bootstrap.min.js" integrity="sha384-ChfqqxuZUCnJSK3+MXmPNIyE6ZbWh2IMqE241rYiqJxyMiZ6OW/JmZQ5stwEULTy" crossorigin="anonymous"></script>
<script src="../../../js/communityReg.js"></script>
<script src="../../../ckeditor/ckeditor.js"></script>
</head>
<body>
	<div id="hiririk">
		<jsp:include page="/sidebar/header.jsp" />
		<jsp:include page="/sidebar/sidebar.jsp" />
	    <div class="blank"></div>
		<div class="head-border-line"></div>
		<div class="wrapper">
			<section class="board-header">
				<h1 class="border-title text-center font-medium">커뮤니티</h1>
				<h3 class="text-center">자유게시판</h3>
			</section>
			<section class="main margin-bottom reset-padding">
				<h3 class="text-center margin-top">글쓰기</h3>
				<div class="main-page block-flex margin-top">
					<form class="input-form" id="reg-form" action="reg" method="post" onsubmit="return dataSubmit();" enctype="multipart/form-data">
						<div class="set-form-div">
					
							<input autocomplete="off" placeholder="  글제목" type="text" name="title" class="title border-color-gray"/>
							<br/>
							<div class="file-area">
								<input type="file" class="hidden" name="file" multiple/>
								<button type="button" class="btn btn-info">파일첨부</button>
								<input type="text" disabled class="file-names"/>
							</div>
							<div class="content border-color-gray" id="editor1" contenteditable="true"></div>
							<input type="hidden" name="content" />
						</div>
					</form>
					<div class="input-sup-form ">
						<div class="set-form-div">
							
							
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
	
	
	
</body>
</html>