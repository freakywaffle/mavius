<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>

<head>
    <meta charset="UTF-8">
    <title>커뮤니티-코디게시판</title>
    <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.5.0/css/all.css" integrity="sha384-B4dIYHKNBt8Bc12p+WXckhzcICo0wtJAoU8YZTY5qE0Id1GSseTk6S+L3BlXeVIU"
        crossorigin="anonymous">
        <script src="../../../js/communityreg.js"></script>
    <link href="../../../css/coordiBoardReg.css" type="text/css" rel="stylesheet" />
    <script src="../../../ckeditor/ckeditor.js"></script>
</head>

<!--게시글 보기, 수정, 삭제, 댓글, 기본적인 보드 컬럼명 가져오고 타이틀이랑 컨텐트  ,이미지 공간? -->
<div id="hiririk">
    <header>
        <jsp:include page="/sidebar/header.jsp" />
    </header>
    <aside>
        <jsp:include page="/sidebar/sidebar.jsp" />
    </aside>

    <body id="body">
     
        <section id="header">
            <h1>코디게시판</h1>
        </section>
        <main class="reg-main">
            <section id="reg-area">
                <h1 class="hidden">글쓰기 영역</h1>
                <form class="reg-form">
                    <!--select는 서버게시판에만 필요-->
                    <span>제목</span>
                    <input type="" name="title"/>
                    <div class="content border-color-gray" 
                            id="editor1" contenteditable="true"></div>
                </form>
            </section>

        </main>
    </body>
</div>

</html>

</html>