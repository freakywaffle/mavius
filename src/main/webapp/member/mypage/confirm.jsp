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
            <link href="/sidebar/vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">
            <!--"vendor/bootstrap/css/bootstrap.min.css"-->
            <!-- Custom styles for this template -->
            <link href="/member/mypage/css/index.css" rel="stylesheet">
            <!-- <script type="text/javascript" src="myscripts.js"></script> -->
            <script type="text/javascript" src="/member/mypage/css/jquery-3.3.1.slim.min.js" ></script>
        <script type="text/javascript" src="/member/mypage/css/popper.min.js" ></script>
        <script type="text/javascript" src="/bootstrap-4.1.3/bootstrap-4.1.3/dist/js/bootstrap.min.js" ></script>
    
        </head>
    
    
        <body id="body">
                
            <div id="hiririk">
                
                    <jsp:include page="/member/mypage/mypageheader.jsp"></jsp:include>

    
                    <jsp:include page="/sidebar/sidebar.jsp"></jsp:include>

                    <main id="main">
    
    
    
                        <div class="box board-title">
                            <h1>MYPAGE</h1>
                            <h3>마이페이지</h3>
    
                        </div>
    
    
                        <section id="form-login" class="box">
                            <div class="pwd-box">
                                <div class="subtitle">
                                    <h3>비밀번호 확인</h3>
                                </div>
    
                                <div class="submenu2">
                                        <section class="container" id="shabang" >
                                                <article class="half">
                                                        <h1><a href="../index">MAVIUS</a></h1>
                                                        <div class="tabs">
                                                                <span class="tab signin active"><a href="#signin">본인 인증</a></span>
                                                        </div>
                                                        <div class="content">
                                                            <div class="signin-cont cont">
                                                                <form action="#" method="post" enctype="multipart/form-data">
                                                                    <input type="" name="uid" id="uid" value="${session.uid}" class="inpt" required="required" placeholder="Your ID">
                                                                    
                                                                    <input type="password" name="password" id="password" class="inpt" required="required" placeholder="Your password">
                                                                    <label for="password">Your password</label>
                                                                    
                                                                    <div class="submit-wrap">
                                                                        <input type="submit" value="Sign in" class="submit">
                                                                        <a href="#" class="more">Forgot your password?</a>
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
                                </div>
    
                            </div>
    
    
                            
                    </main>
                </div>
            </div>
            </div>
    
    
        </body>
    
    </html>