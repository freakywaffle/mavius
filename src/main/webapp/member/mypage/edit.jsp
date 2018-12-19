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
            <link href="/member/mypage/css/edit.css" rel="stylesheet">
            <!-- <script type="text/javascript" src="myscripts.js"></script> -->
            <script type="text/javascript" src="../css/jquery-3.3.1.slim.min.js" ></script>
        <script type="text/javascript" src="../../mypage/css/popper.min.js" ></script>
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
                                    <h3>정보 수정</h3>
                                </div>
    
                                <div class="submenu2">
                                        <section class="container" id="shabang" >
                                                <article class="half">
                                                        <h1><a href="../index">MAVIUS</a></h1>
                                                        <div class="tabs">
                                                                <span class="tab signin active"><a href="#signin">Edit</a></span>
                                                                <!-- <span class="tab signup"><a href="#signup">sign up</a></span> -->
                                                        </div>
                                                        <div class="content">
                                                            <div class="signin-cont cont">
                                                                <form action="#" method="post" enctype="multipart/form-data">
                                                                    <input type="email" name="email" id="name" class="inpt" required="required" placeholder="Your name">
                                                                    <label for="name">Your name</label>
                                                                    <input type="email" name="email" id="email" class="inpt" required="required" placeholder="Your ID">
                                                                    <label for="email">Your password</label>
                                                                    <input type="password" name="password" id="password" class="inpt" required="required" placeholder="Your password">
                                                                    <label for="password">Your password chk</label>
                                                                    <div class="submit-wrap">
                                                                        <input type="submit" value="Eidt" class="submit">
                                                                        <a href="#" class="more">Terms and conditions</a>
                                                                    </div>
                                                                </form>
                                                            </div>
                                                            <!-- <div class="signup-cont cont">
                                                                <form action="#" method="post" enctype="multipart/form-data">
                                                                    <input type="email" name="email" id="name" class="inpt" required="required" placeholder="Your name">
                                                                    <label for="name">Your name</label>
                                                                    <input type="email" name="email" id="email" class="inpt" required="required" placeholder="Your ID">
                                                                    <label for="email">Your email</label>
                                                                    <input type="password" name="password" id="password" class="inpt" required="required" placeholder="Your password">
                                                                    <label for="password">Your password</label>
                                                                    <div class="submit-wrap">
                                                                        <input type="submit" value="Sign up" class="submit">
                                                                        <a href="#" class="more">Terms and conditions</a>
                                                                    </div>
                                                                </form>
                                                            </div> -->
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