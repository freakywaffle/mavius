<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<link href="/sidebar/css/simple-sidebar.css" rel="stylesheet">
<link href="/sidebar/vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">
<header>
        <div id="wrapper">

            
            <!-- Header -->
            <div id="sidebar-wrapper">
                <img class="header-bg" src="/images/park-header.jpg" />
                <ul class="sidebar-nav header-box">
                    <div class="main-img">
                        <img  src="/images/login-logo-135.png" />
                    </div>
                    <li class="sidebar-brand">
                        <a href="#">
                            MAVIUS
                        </a>
                    </li>
                    <li>
                        <div class="pa" onmouseover="sosikdown()" onmouseout="sosikup()">
                            <a href="#One">소식</a>
                            <div class="submenu submenu-sm">
                                <ul>
                                    <li><a href="/news/notice/list">공지사항</a></li>
                                    <li><a href="/news/event/list">이벤트</a></li>
                                    <li><a href="/news/update/list">업데이트</a></li>
                                </ul>
                            </div>
                        </div>
                    </li>
                    <li>
                        <div class="pa" onmouseover="sosikdown()" onmouseout="sosikup()">

                            <a href="#Two">커뮤니티</a>
                            <div class="submenu submenu-sm">
                                <ul>
                                    <li><a href="/board/community/freeboard/list">자유게시판</a></li>
                                    <li><a href="/board/community/coordi/list">코디게시판</a></li>
                                    <li><a href="/board/community/server/list">서버게시판</a></li>

                                </ul>
                            </div>
                        </div>
                    </li>
                    <li>
                        <div class="pa" onmouseover="sosikdown()" onmouseout="sosikup()">

                            <a href="#">공략</a>
                            <div class="submenu submenu-lg">
                                <ul>
                                    <li><a href="/board/target/warrior/list">전사게시판</a></li>
                                    <li><a href="/board/target/archer/list">궁수게시판</a></li>
                                    <li><a href="/board/target/magician/list">법사게시판</a></li>
                                    <li><a href="/board/target/rogue/list">도적게시판</a></li>
                                    <li><a href="/board/target/pirate/list">해적게시판</a></li>
                                    <li><a href="#">보스공략</a></li>
                                </ul>
                            </div>
                        </div>
                    </li>
                </ul>
            </div>

        </div>
    </header>