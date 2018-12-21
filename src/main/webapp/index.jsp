<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="kr">
	<head>
        <meta charset="UTF-8">
        <title>MAVIUS</title>
        <!-- <link href="css/hover.css" rel="stylesheet"> -->
        <link href="css/main/indexmain.css" rel="stylesheet">
    </head>
<body>
<section id="shabang">
    <div class="bluelight">
    <c:if test="${empty sessionScope.uid }"> <%-- 로그인상태가 아니면 로그인으로 가는 화면을 띄워줍니다 --%>
        <a href="member/login">MAVIUS</a>
    </c:if>
    <c:if test="${not empty sessionScope.uid }"> <%-- 로그인상태라면  --%>
       	<a href="/index">MAVIUS</a>
    </c:if>
    </div>
    <div class="caption links">
        <nav class="link-effect-13">
            <a href="news/notice/list"><span>NEWS</span></a>
            <a href="board/free/list"><span>COMMUNITY</span></a>
            <a href="board/archer/list"><span>TARGET</span></a>
            <c:if test="${not empty sessionScope.uid }">
            	<a href="/mypage/confirm"><span>MYPAGE</span></a>
            </c:if>
            <c:if test="${empty sessionScope.uid }">
            	<a href="member/login"><span>LOGIN</span></a>
            </c:if>
            <c:if test="${not empty sessionScope.uid }">
            	<a href="member/logout"><span>LOGOUT</span></a>
            </c:if>
        </nav>
    </div>
</section>
</body>
</html>
