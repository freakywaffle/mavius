<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="kr">
	<head>
	<meta charset="UTF-8">
	<title>MAVIUS - 로그인</title>
    <link href="../css/login/login.css" rel="stylesheet">
</head>
<body>

<section class="container" id="shabang" >
    <article class="half">
            <h1><a href="../index">MAVIUS</a></h1>
            <div class="tabs">
                    <span class="tab signin active"><a href="#signin">sign in</a></span>
                    <span class="tab signup"><a href="#signup">sign up</a></span>
            </div>
            <div class="content">
                <div class="signin-cont cont">
                    <form action="login" method="post" >
                        <label for="uid">Your ID</label>
                        <input name="uid" class="inpt" required="required" placeholder="Your ID">
                        <label for="pwd">Your password</label>
                        <input type="password" name="pwd" class="inpt" required="required" placeholder="Your password">
	                        <c:if test="${param.er==1 }">
	                        	<label for="remember">회원정보가 올바르지 않습니다.</label>
	                       	</c:if>
                        <input type="checkbox" id="remember" class="checkbox" checked>
                        <div class="submit-wrap">
                       		<input type="hidden" name="return-url" value="${param['return-url']}" />
                            <input type="submit" value="Sign in" class="submit">
                            <a href="#" class="more">Forgot your password?</a>
                        </div>
                    </form>
                </div>
                <div class="signup-cont cont">
                    <form action="join" method="post" >
                        <label for="uid">Use ID</label>
                        <input name="uid" class="inpt" required="required" placeholder="Use ID">
                        <label for="pwd">Use password</label>
                        <input type="password" name="pwd" class="inpt" required="required" placeholder="Use password">
                        <label for="email">Your email</label>
                        <input type="email" name="email" class="inpt" required="required" placeholder="Your email">
                        <div class="submit-wrap">
                            <input type="submit" value="Sign up" class="submit">
                            <a href="#" class="more">Terms and conditions</a>
                        </div>
                    </form>
                </div>
            </div>
    </article>
    <div class="half bg"></div>
</section>



<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.3/jquery.min.js"></script> 
<script type="text/javascript">
$('.tabs .tab').click(function(){
    if ($(this).hasClass('signin')) {
        $('.tabs .tab').removeClass('active');
        $(this).addClass('active');
        $('.cont').hide();
        $('.signin-cont').show();
    } 
    if ($(this).hasClass('signup')) {
        $('.tabs .tab').removeClass('active');
        $(this).addClass('active');
        $('.cont').hide();
        $('.signup-cont').show();
    }
});
$('.container .bg').mousemove(function(e){
    var amountMovedX = (e.pageX * -1 / 30);
    var amountMovedY = (e.pageY * -1 / 9);
    $(this).css('background-position', amountMovedX + 'px ' + amountMovedY + 'px');
});
</script>
</body>
</html>