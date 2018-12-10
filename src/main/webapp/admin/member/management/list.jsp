<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml" xml:lang="en" lang="en">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>회원 관리 - 화원 목록</title>

</head>


<body><section style=" position: relative;  padding-left:330px;">

		
	
			<div>
			<div>
				<main>
				<h1>메인</h1>

				<div>
					<section style="width:100%">
						<h1>바디 헤더</h1>

						<section>
							<h1 class="main-list align">회원 관리</h1>
							<section>
								<h1 class="sub-list align">회원 목록</h1>
							</section>
						</section>

					</section>


					<section style="margin-top: 50px">
						<h1>바디 메인</h1>

						<section>
							<h1>MemberList (총 회원수 : ?명, 오늘 접속한 회원수 : ?명, 어제 접속한 회원수 :
								?명)</h1>
							<div>
								<table border="1" class="table">
									<thead>
										<tr>
											<td><input type="checkbox" /></td>
											<td>아이디</td>
											<td>이름</td>
											<td>닉네임</td>
											<td>등급</td>
											<td>최근 접속일</td>
											<td>관리</td>
										</tr>
									</thead>
									<tbody>
										<tr>
											<td><input type="checkbox" /></td>
											<td>dfke153</td>
											<td>김이나박</td>
											<td>네모장군</td>
											<td>회원</td>
											<td>18-12-07</td>
											<td><input type="submit" value="수정" /> <input
												type="submit" value="관리" /> <input type="submit" value="탈퇴" />
											</td>
										</tr>
										<tr>
											<td><input type="checkbox" /></td>
											<td>seyeon1491</td>
											<td>황세연</td>
											<td>닉닉</td>
											<td>관리자</td>
											<td>18-12-07</td>
											<td><input type="submit" value="수정" /> <input
												type="submit" value="관리" /> <input type="submit" value="탈퇴" />
											</td>
										</tr>
										<tr>
											<td><input type="checkbox" /></td>
											<td>dewf3</td>
											<td>배열지존</td>
											<td>이신협</td>
											<td>회원</td>
											<td>18-12-07</td>
											<td><input type="submit" value="수정" /> <input
												type="submit" value="관리" /> <input type="submit" value="탈퇴" />
											</td>
										</tr>
									</tbody>
								</table>
							</div>

							<div style="padding-top: 30px">
								<input type="submit" value="선택수정" /> <input type="submit"
									value="선택삭제" />
							</div>
						</section>
					</section>
				</div>
				</main>
				 	

				<footer>
					<h1>푸터</h1>
					<h4>제작자 황세연^^</h4>

				</footer>
			</div>
	</section>

	
	
	<jsp:include page="header.jsp"></jsp:include>

	
	


</body>

</html>