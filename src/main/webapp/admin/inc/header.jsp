<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml" xml:lang="en" lang="en">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>Insert title here</title>

<link
	href="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/css/bootstrap.min.css"
	rel="stylesheet" id="bootstrap-css">
<script
	src="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/js/bootstrap.min.js"></script>
<script
	src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<!------ Include the above in your HEAD tag ---------->

<link
	href="//netdna.bootstrapcdn.com/bootstrap/3.2.0/css/bootstrap.min.css"
	rel="stylesheet" id="bootstrap-css">
<script
	src="//netdna.bootstrapcdn.com/bootstrap/3.2.0/js/bootstrap.min.js"></script>
<script src="//code.jquery.com/jquery-1.11.1.min.js"></script>
<!------ Include the above in your HEAD tag ---------->

<link
	href="//maxcdn.bootstrapcdn.com/font-awesome/4.2.0/css/font-awesome.min.css"
	rel="stylesheet">

<link href="../css/aside-left.css" rel="stylesheet" id="bootstrap-css">

</head>
<body>	

<header class="nav-side-menu"   style="float: left; position: fixed;">
            <div class="brand"><a href="../../../index" style="text-decoration: none; color: #ffffff;">mavius</a></div>
            <!--i class="fa fa-bars fa-2x toggle-btn" data-toggle="collapse" data-target="#menu-content"></i-->
            
            <div class="menu-list">
        
                <ul id="menu-content" class="menu-content collapse">
                    
    
                    <li  data-toggle="collapse" data-target="#products" class="collapsed">
                        <a href="#"><span>&nbsp;&nbsp;</span><i class="fa fa-user fa-lg"></i> 회원 관리<span class="arrow"></span></a>
                    </li>
                    <ul class="sub-menu collapse" id="products">
                        <li><a href="/admin/member/management/list">회원 목록</a></li>
                        <li><a href="/admin/member/sendmessage/list">회원 쪽지 발송</a></li>
                    </ul>
    
    
                    <li data-toggle="collapse" data-target="#service" class="collapsed">
                        <a href="#"><span>&nbsp;&nbsp;</span><i class="fa fa-file-text fa-lg"></i> 게시판 관리<span class="arrow"></span></a>
                    </li>  
                    <ul class="sub-menu collapse" id="service">
                        <li><a href="/admin/board/community/freeboard/list">자유 게시판</a></li>
                        <li><a href="/admin/board/community/server/list.jsp">서버 게시판</a></li>
                        <li><a href="/admin/board/target/boss/list.jsp">보스 공략 게시판</a></li>
                        <li><a href="/admin/board/target/job/list.jsp">직업 게시판</a></li>
                        <li><a href="/admin/board/community/coordi/list.jsp">코디 게시판</a></li>
                    </ul>
    
    
                    <li data-toggle="collapse" data-target="#new" class="collapsed">
                        <a href="#"><span>&nbsp;&nbsp;</span><i class="fa fa-newspaper-o fa-lg"></i> 뉴스<span class="arrow"></span></a>
                    </li>
                    <ul class="sub-menu collapse" id="new">
                        <li><a href="/admin/news/notice/list">공지사항</a></li>
                        <li><a href="/admin/news/update/list">업데이트</a></li>
                        <li><a href="/admin/news/event/list">이벤트</a></li>
                        <li><a href="">1:1 문의</a></li>
                        <li><a href="">게시글/댓글 신고</a></li>
                    </ul>
    
                    <li data-toggle="collapse" data-target="#newa" class="collapsed">
                        <a href="#"><span>&nbsp;&nbsp;</span><i class="fa fa-line-chart fa-lg"></i> 통계<span class="arrow"></span></a>
                    </li>
                    
                    <ul class="sub-menu collapse" id="newa">
                        <li><a href="">접속자 통계</a></li>
                        <li><a href="">현재 접속자</a></li>
                        <li><a href="">인기 게시판</a></li>
                        <li><a href="">인기 게시글</a></li>
                    </ul>
    
					<li data-toggle="collapse" data-target="#newaa" class="collapsed">
                        <a href="#"><span>&nbsp;&nbsp;</span><i class="fa fa-search fa-lg"></i> 검색<span class="arrow"></span></a>
                    </li>
                    
                    <ul class="sub-menu collapse" id="newaa" style="min-width: 300px;">
    					
								<div class="row">
									<div class="col-md-12">
										<form class="navbar-form navbar-left" role="search">
											<div class="input-group">
												<input type="text" class="form-control"
													placeholder="Search" /> <span class="input-group-btn">
													<button class="btn btn-primary" type="button">
														Go!</button>
												</span>
											</div>
										</form>
									</div>
								</div>
						
                    </ul>
                    
                    
					
					
			
                </ul>
            </div>
        </header>
        
        
        



	
	
	
	

</body>
</html>