<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="en" id="html">


<head>

    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta name="description" content="">
    <meta name="author" content="">

    <title>Simple Sidebar - Start Bootstrap Template</title>

    <!-- Bootstrap core CSS -->
    <link href="/sidebar/vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">
    <!--"vendor/bootstrap/css/bootstrap.min.css"-->
    <!-- Custom styles for this template -->
    <link href="/member/mypage/css/mypagescraplist.css" rel="stylesheet">

</head>


<body id="body">
    <div id="hiririk">
        <div id="dam">

        </div>
        <div class="boxbox">

           
            <jsp:include page="/member/mypage/mypageheader.jsp"></jsp:include>

            <jsp:include page="/sidebar/sidebar.jsp"></jsp:include>


            <main id="main">



                <!--마이페이지 로그인 시-->

                <div class="box board-title">
                    <h1>MYPAGE</h1>
                    <h3>마이페이지</h3>

                </div>


                <section id="form-login" class="box">
                    <div class="pwd-box">
                        <div class="subtitle">
                            <h3>내가 쓴 게시글</h3>
                        </div>
                        <div class="searchtxt">
                            <!-- <div class="all-box"> -->
                                <button class="select-all"><a>전체선택</a></button>
                            <!-- </div> -->
                               
                            <select>
                                <option value="">게시판 분류</option>
                                <option value="게시판">전사게시판</option>
                                <option value="게시판">전사게시판</option>
                                <option value="게시판">전사게시판</option>
                                <option value="게시판">전사게시판</option>
                                <option value="게시판">전사게시판</option>
                            </select>
                            
                            <div class="d6">
                                <form>
                                  <input type="text" placeholder="검색어 입력">
                                  <button type="submit"></button>
                                </form>
                            </div>
                        </div>
                        <div class="submenu2">
                                <div class="category-div-sm cat-div">
                                        <h5>chk</h5>
                                            
                                            <ul>
                                                    <li><input class="chekbox" type="checkbox" /></li>
                                                    <li><input class="chekbox" type="checkbox" /></li>
                                                    <li><input class="chekbox" type="checkbox" /></li>
                                                    <li><input class="chekbox" type="checkbox" /></li>
                                                    <li><input class="chekbox" type="checkbox" /></li>
                                                    <li><input class="chekbox" type="checkbox" /></li>
                                                    <li><input class="chekbox" type="checkbox" /></li>
                                                    <li><input class="chekbox" type="checkbox" /></li>
                                                    <li><input class="chekbox" type="checkbox" /></li>
                                                    <li><input class="chekbox" type="checkbox" /></li>
                                                </ul>
                                    </div>
                            <div class="category-div-cr cat-div">
                                <h5>작성일</h5>
                                <ul>
                                    <li> <a>2018.01.01</a></li>
                                    <li> <a>2018.01.01</a></li>
                                    <li> <a>2018.01.01</a></li>
                                    <li> <a>2018.01.01</a></li>
                                    <li> <a>2018.01.01</a></li>
                                    <li> <a>2018.01.01</a></li>
                                    <li> <a>2018.01.01</a></li>
                                    <li> <a>2018.01.01</a></li>
                                    <li> <a>2018.01.01</a></li>
                                    <li> <a>2018.01.01</a></li>
                                </ul>
                            </div>
                            <div class="category-div-md cat-div">
                                <h5>게시판 분류</h5>
                                <ul>
                                    <li> <a>adsf</a></li>
                                    <li> <a>adsf</a></li>
                                    <li> <a>adsf</a></li>
                                    <li> <a>adsf</a></li>
                                    <li> <a>adsf</a></li>
                                    <li> <a>adsf</a></li>
                                    <li> <a>adsf</a></li>
                                    <li> <a>adsf</a></li>
                                    <li> <a>adsf</a></li>
                                    <li> <a>adsf</a></li>
                                </ul>
                            </div>

                            <div class="category-div-lg cat-div">

                                <h5>제 목</h5>
                                <ul>
                                    <li> <a href="">지현이 뱃살은 몇살</a></li>
                                    <li> <a href="">지현이 뱃살은 몇살</a></li>
                                    <li> <a href="">지현이 뱃살은 몇살</a></li>
                                    <li> <a href="">지현이 뱃살은 몇살</a></li>
                                    <li> <a href="">지현이 뱃살은 몇살</a></li>
                                    <li> <a href="">지현이 뱃살은 몇살</a></li>
                                    <li> <a href="">지현이 뱃살은 몇살</a></li>
                                    <li> <a href="">지현이 뱃살은 몇살</a></li>
                                    <li> <a href="">지현이 뱃살은 몇살</a></li>
                                    <li> <a href="">지현이 뱃살은 몇살</a></li>
                                </ul>

                            </div>
                            <div class="category-div-sm cat-div">
                                <h5>조회수</h5>
                                <ul>
                                    <li> <a>1</a></li>
                                    <li> <a>2</a></li>
                                    <li> <a>3</a></li>
                                    <li> <a>4</a></li>
                                    <li> <a>5</a></li>
                                    <li> <a>6</a></li>
                                    <li> <a>7</a></li>
                                    <li> <a>8</a></li>
                                    <li> <a>9</a></li>
                                    <li> <a>10</a></li>
                                </ul>
                            </div>
                            <div class="category-div-sm cat-div">
                                <h5>추천수</h5>
                                <ul>
                                    <li> <a>1</a></li>
                                    <li> <a>2</a></li>
                                    <li> <a>3</a></li>
                                    <li> <a>4</a></li>
                                    <li> <a>5</a></li>
                                    <li> <a>6</a></li>
                                    <li> <a>7</a></li>
                                    <li> <a>8</a></li>
                                    <li> <a>9</a></li>
                                    <li> <a>10</a></li>
                                </ul>
                            </div>


                        </div>
                        <div class="pagerbox">
                                <nav>
                                    <ul class="pager-list">
                                        <li class="pager-item"><a class="pager-link" href="#">
                                                < </a> </li> <li class="pager-item"><a class="pager-link" href="#"> 1 </a></li>
                                        <li class="pager-item"><a class="pager-link" href="#"> 2 </a></li>
                                        <li class="pager-item"><a class="pager-link" href="#"> 3 </a></li>
                                        <li class="pager-item"><a class="pager-link" href="#"> 4 </a></li>
                                        <li class="pager-item"><a class="pager-link" href="#"> 5 </a></li>
                                        <li class="pager-item"><a class="pager-link" href="#"> 6 </a></li>
                                        <li class="pager-item"><a class="pager-link" href="#"> 7 </a></li>
                                        <li class="pager-item"><a class="pager-link" href="#"> 8 </a></li>
                                        <li class="pager-item"><a class="pager-link" href="#"> 9 </a></li>
                                        <li class="pager-item"><a class="pager-link" href="#"> 10 </a></li>
                                        <li class="pager-item"><a class="pager-link" href="#"> > </a></li>
                                    </ul>
                                </nav>
                            </div>
                    </div>
                   
                </section>
            </main>
        </div>
    </div>


</body>

</html>