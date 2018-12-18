<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01//EN" "http://www.w3.org/TR/html4/strict.dtd">
    <html lang="en" id="html">
    
    <page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8">
    
        <head>
    
            <meta http-equiv="Content-Type" content="text/html; charset=utf-8">
            <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
            <meta name="description" content="">
            <meta name="author" content="">
    
            <title>Simple Sidebar - Start Bootstrap Template</title>
    
            <!-- Bootstrap core CSS -->
            <link href="../../../sidebar/vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">
            <!--"vendor/bootstrap/css/bootstrap.min.css"-->
            <!-- Custom styles for this template -->
            <link href="/member/mypage/css/qnalist.css" rel="stylesheet">
            <!-- <script type="text/javascript" src="myscripts.js"></script> -->
            <script type="text/javascript" src="../css/jquery-3.3.1.slim.min.js" ></script>
        <script type="text/javascript" src="../css/popper.min.js" ></script>
        <script type="text/javascript" src="../../../bootstrap-4.1.3/bootstrap-4.1.3/dist/js/bootstrap.min.js" ></script>
    
        </head>
    
    
        <body id="body">
                <div class="modal fade" id="exampleModal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel"
                aria-hidden="true">
                <div class="modal-dialog" role="document">
                    <div class="modal-content">
                        <div class="modal-header">
                            <h5 class="modal-title" id="exampleModalLabel">New message</h5>
                            <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                                <span aria-hidden="true">&times;</span>
                            </button>
                        </div>
                        <div class="modal-body">
                            <form>
                                <div class="form-group">
                                    <label for="recipient-name" class="col-form-label">Recipient:</label>
                                    <input type="text" class="form-control" id="recipient-name">
                                </div>
                                <div class="form-group">
                                    <label for="message-text" class="col-form-label">Message:</label>
                                    <textarea class="form-control" id="message-text"></textarea>
                                </div>
                            </form>
                        </div>
                        <div class="modal-footer">
                            <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
                            <button type="button" class="btn btn-primary">Send message</button>
                        </div>
                    </div>
                </div>
            </div>
        </section>
        <script>
            $('#exampleModal').on('show.bs.modal', function (event) {
                var button = $(event.relatedTarget) // Button that triggered the modal
                var recipient = button.data('whatever') // Extract info from data-* attributes
                // If necessary, you could initiate an AJAX request here (and then do the updating in a callback).
                // Update the modal's content. We'll use jQuery here, but you could use a data binding library or other methods instead.
                var modal = $(this)
                modal.find('.modal-title').text(recipient+' 질문 있어요!')
                modal.find('.modal-body input').val(recipient)
            })
        </script>
            <div id="hiririk">
                <!-- <div id="dam">
    
                </div>
                <div class="boxbox">
                    <div id="sidebar">
                        <div class="side-btn" onclick="toggleSidebarout()">
                        </div>
                        <ul class="sidebar-nav">
                            <li>
                                <a href="#">home</a>
                            </li>
                            <li>
                                <a href="#">about</a>
                            </li>
                            <li>
                                <a href="#">contact</a>
                            </li>
    
                        </ul>
                    </div>
                    <header id="header">
                        <div>
    
                            <div id="header-wrapper">
                                <ul class="header-nav header-box">
                                    <li class="header-brand">
                                        <a href="#">
                                            MAVIUS
                                        </a>
                                    </li>
                                    <li>
                                        <div class="pa" " >
                                            <a href="#One">정보수정</a>
                                            
                                        </div>
    
    
                                    </li>
                                    <li>
                                        <div class="pa" >
                                            <a href="#One">내가 쓴글</a>
                                            <div class="submenu">
                                                <ul>
                                                    <li><a href="#">게시글</a></li>
                                                    <li><a href="#">댓글</a></li>
                                                </ul>
                                            </div>
                                        </div>
    
    
                                    </li>
                                    <li>
                                        <div class="pa" >
    
                                            <a href="#Two">쪽지</a>
                                            <div class="submenu">
                                                <ul>
                                                    <li><a href="#1">보내기</a></li>
                                                    <li><a href="#2">받은쪽지함</a></li>
    
                                                </ul>
                                            </div>
                                        </div>
                                    </li>
                                    <li>
                                        <div class="pa" >
    
                                            <a href="#">QnA</a>
                                            <div class="submenu">
                                                <ul>
                                                    <li><a href="#1">1</a></li>
                                                    <li><a href="#2">2</a></li>
                                                    <li><a href="#3">3</a></li>
                                                </ul>
                                            </div>
                                        </div>
                                    </li>
                                    <li>
                                        <div class="pa" >
    
                                            <a href="#">Reply</a>
                                            <div class="submenu">
                                                <ul>
                                                    <li><a href="#1">1</a></li>
                                                    <li><a href="#2">2</a></li>
                                                    <li><a href="#3">3</a></li>
                                                </ul>
                                            </div>
                                        </div>
                                    </li>
                                    <li>
                                        <div class="pa" >
    
                                            <a href="#">Scrap</a>
                                            <div class="submenu">
                                                <ul>
                                                    <li><a href="#1">1</a></li>
                                                    <li><a href="#2">2</a></li>
                                                    <li><a href="#3">3</a></li>
                                                </ul>
                                            </div>
                                        </div>
                                    </li>
    
                                </ul>
                            </div>
    
                        </div>
                    </header>
    
    
    
    
    
                    <script>
    
                        function toggleSidebarout() {
    
                            document.getElementById("sidebar").classList.toggle('active');
    
                            var dd = getElementById("hiririk");
                        }
    
                    </script> -->
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
                                    <h3>QnA</h3>
                                    <button type="button" class="btn btn-primary" data-toggle="modal" data-target="#exampleModal"
                                        data-whatever="관리자님">문의하기</button>
                                </div>
    
                                <div class="submenu2">
                                    <div class="category-div-sm cat-div">
                                        <h5>번호</h5>
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
                                    <div class="category-div-md cat-div">
                                        <h5>작성 날짜</h5>
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
                                        <h5>작성자</h5>
                                        <ul>
                                            <li> <a>뉴렉</a></li>
                                            <li> <a>뉴렉</a></li>
                                            <li> <a>뉴렉</a></li>
                                            <li> <a>뉴렉</a></li>
                                            <li> <a>뉴렉</a></li>
                                            <li> <a>뉴렉</a></li>
                                            <li> <a>뉴렉</a></li>
                                            <li> <a>뉴렉</a></li>
                                            <li> <a>뉴렉</a></li>
                                            <li> <a>뉴렉</a></li>
                                        </ul>
                                    </div>
    
                                    <div class="category-div-lg cat-div">
    
                                        <h5>문의 제목</h5>
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
                                    <div class="category-div-md cat-div">
                                        <h5>문의 상태</h5>
                                        <ul>
                                            <li> <a>처리중</a></li>
                                            <li> <a>처리중</a></li>
                                            <li> <a>처리중</a></li>
                                            <li> <a>처리중</a></li>
                                            <li> <a>처리중</a></li>
                                            <li> <a>처리중</a></li>
                                            <li> <a>처리중</a></li>
                                            <li> <a>처리중</a></li>
                                            <li> <a>처리중</a></li>
                                            <li> <a>처리중</a></li>
                                        </ul>
                                    </div>
    
                                    <div class="category-div-md cat-div">
                                        <h5>처리완료 날짜</h5>
                                        <ul>
                                            <li> <a>2019.05.06</a></li>
                                            <li> <a>2019.05.06</a></li>
                                            <li> <a>2019.05.06</a></li>
                                            <li> <a>2019.05.06</a></li>
                                            <li> <a>2019.05.06</a></li>
                                            <li> <a>2019.05.06</a></li>
                                            <li> <a>2019.05.06</a></li>
                                            <li> <a>2019.05.06</a></li>
                                            <li> <a>2019.05.06</a></li>
                                            <li> <a>2019.05.06</a></li>
                                        </ul>
                                    </div>
    
    
                                </div>
    
                            </div>
    
    
                            
                    </main>
                </div>
            </div>
            </div>
    
    
        </body>
    
    </html>