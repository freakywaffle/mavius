<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="kr">
	<head>
        <meta charset="UTF-8">
        <title>${member.id } 회원가입 완료!</title>
        <!-- <link href="css/hover.css" rel="stylesheet"> -->
        <link href="../css/login/loginok.css" rel="stylesheet">
    </head>
<body>
<section id="shabang">
    <div class="bluelight">
    	<%-- <c:forEach var="m" items="${member }">
        	<a>${m.nickName } 방갑군!</a>
        </c:forEach> --%>
        	<a>${member.nickName } 가입축하!</a>
    </div>
    <div class="caption links">
        <nav class="link-effect-13">
       		<c:if test="${empty sessionScope.uid }">
            	<a href="../index"><span>MAIN</span></a>
            </c:if>
            <%-- <c:if test="${empty sessionScope.uid }">
            	<a href="#"><span>EDIT</span></a>
            </c:if> --%>
            <c:if test="${empty sessionScope.uid }">
            	<a href="../member/login"><span>LOGIN</span></a>
            </c:if>
        </nav>
    </div>
</section>
</body>
</html>