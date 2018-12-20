<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>

<html lang="kr">
	<head>
        <meta charset="UTF-8">
        <title>MAVIUS - 아이디 중복 확인</title>

        <link href="/css/login/loginok.css" rel="stylesheet">
        
        <!-- <link href="../css/login/animate.css" rel="stylesheet"> -->
        <!-- <link href="../css/login/bootstrap.css" rel="stylesheet"> -->
        <!-- <script src="http://b1ix.net/public/js/boot1.min.js"></script> -->
        <script src="/js/idchk.js"></script>
        
        <!-- <script type="text/javascript">
	        window.addEventListner("load", function(){
	        	
	        	var idchk = document.querySelector("#idchk");
	        	var btnDuplCheck = idchk.querySelector('input[name="dupl-check"]');
	        	var txtUid = idchk.querySelector('input[name="uid"]');
	
	        	btnDuplCheck.onclick = function(){
	        		
	        		alert("중복체크 클릭");
	        		console.log(btnDuplChek);
	        	};
	
	        });
        </script> -->
    </head>
<body>
<section id="shabang">
	<section id="idchk">
		<!-- <input name="btn-reg" form="reg-form" type="submit" value="등록">
		<form method="POST" id="reg-form"> -->
			<table>
				<tr>
					<td>
					<label>아이디 : </label>	
					</td>
					<td>
						<input required="required" autocomplete="off" placeholder="6자이상의 문사" type="text" name="uid"/>
						<input type="button" name="dupl-check" value="아디 중복체크" onclick="id_chk()"/>
						<!-- <img  class="icon-ajax hidden" src="image/ajax-loader.gif" /> -->
					</td>
				</tr>
			</table>
		<!-- </form> -->
	</section>
</body>
</html>
