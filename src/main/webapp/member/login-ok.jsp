<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>

<c:if test="${not empty sessionScope.uid }"> <%-- 로그인 상태가 아니라면 이창은 안뜹이다 --%>
<html lang="kr">
	<head>
        <meta charset="UTF-8">
        <title>${member.id }님 로그인</title>
        <!-- <link href="css/hover.css" rel="stylesheet"> -->
        <link href="../css/login/loginok.css" rel="stylesheet">
    </head>
<body>
<section id="shabang">
    <div class="bluelight">
    	<%-- <c:forEach var="m" items="${member }">
        	<a>${m.nickName } 방갑군!</a>
        </c:forEach> --%>
        <a>${member.nickName}!<br/>방갑군!</a>
    </div>
    <div class="caption links">
        <nav class="link-effect-13">
            <a href="/news/event/list"><span>NEWS</span></a>
            <a href="/board/free/list"><span>COMMUNITY</span></a>
            <a href="/board/archer/list"><span>TARGET</span></a>
            <a href="/mypage/confirm"><span>MYPAGE</span></a>
            <a href="/member/logout"><span>LOGOUT</span></a>
        </nav>
    </div>
</section>
</body>
</html>
</c:if>
