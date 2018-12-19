<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
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
        <link href="/member/mypage/css/messagelist.css" rel="stylesheet">
        <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo"
            crossorigin="anonymous"></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.3/umd/popper.min.js" integrity="sha384-ZMP7rVo3mIykV+2+9J3UJ46jBk0WLaUAdn689aCwoqbBJiSnjAK/l8WvCWPIPm49"
            crossorigin="anonymous"></script>
        <script src="/bootstrap-4.1.3/bootstrap-4.1.3/dist/js/bootstrap.min.js" integrity="sha384-ChfqqxuZUCnJSK3+MXmPNIyE6ZbWh2IMqE241rYiqJxyMiZ6OW/JmZQ5stwEULTy"
            crossorigin="anonymous"></script>
    
    </head>
    
    
    <body id="body">
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
                            <div class="message-subtitle">
                                <h3>Message</h3>
                                <button type="button" class="btn btn-primary solo-send" data-toggle="modal" data-target="#exampleModal"
                                                data-whatever="@mdo">새메시지</button>
                            </div>
    
                            <table class="table table-hover">
                                <thead>
                                    <tr>
                                        <th colspan="1" scope="col">no</th>
                                        <th colspan="1" scope="col">받은 날짜</th>
                                        <th colspan="1" scope="col">보낸이</th>
                                        
                                        <th colspan="2" scope="col">내용</th>
                                        <th scope="col">receice</th>
                                    </tr>
                                </thead>
                                <tbody>
                                    <tr>
                                        <th colspan="1" scope="row">1</th>
                                        <td colspan="1">2018.02.06</td>
                                        <td colspan="1">뉴렉</td>
                                        <td colspan="2" class="ms-table-lg">지각천재지현스</td>
                                        <td colspan="1">
                                            <button type="button" class="btn btn-primary" data-toggle="modal" data-target="#exampleModal"
                                                data-whatever="@mdo">답장</button>
                                            
                                        </td>
                                    </tr>
                                    <tr>
                                        <th colspan="1" scope="row">2</th>
                                        <td colspan="1">2018.02.06</td>
                                        <td colspan="1">뉴렉</td>
                                        <td colspan="2" class="ms-table-lg">지각천재지현스</td>
                                        <td colspan="1">
                                            <button type="button" class="btn btn-primary" data-toggle="modal" data-target="#exampleModal"
                                                data-whatever="@mdo">답장</button>
                                            
                                        </td>
                                    </tr>
                                    <tr>
                                        <th colspan="1" scope="row">3</th>
                                        <td colspan="1">2018.02.06</td>
                                        <td colspan="1">뉴렉</td>
                                        <td colspan="2" class="ms-table-lg">지각천재지현스</td>
                                        <td colspan="1">
                                            <button type="button" class="btn btn-primary" data-toggle="modal" data-target="#exampleModal"
                                                data-whatever="@mdo">답장</button>
                                            
                                        </td>
                                    </tr>
                                </tbody>
                            </table>
                            
                        </div>
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
                                                <label for="recipient-name" class="col-form-label">받는 사람:</label>
                                                <input type="text" class="form-control" id="recipient-name">
                                            </div>
                                            <div class="form-group">
                                                <label for="message-text" class="col-form-label">Message:</label>
                                                <textarea class="form-control" id="message-text"></textarea>
                                            </div>
                                        </form>
                                    </div>
                                    <div class="modal-footer">
                                        <button type="button" class="btn btn-secondary" data-dismiss="modal">취소</button>
                                        <button type="button" class="btn btn-primary">보내기</button>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <script>$('#exampleModal').on('show.bs.modal', function (event) {
                                var button = $(event.relatedTarget) // Button that triggered the modal
                                var recipient = button.data('whatever') // Extract info from data-* attributes
                                // If necessary, you could initiate an AJAX request here (and then do the updating in a callback).
                                // Update the modal's content. We'll use jQuery here, but you could use a data binding library or other methods instead.
                                var modal = $(this)
                                modal.find('.modal-title').text(recipient + '님께 메시지 보내기')
                                modal.find('.modal-body input').val(recipient)
                            })
                        </script>
                    </section>
                </main>
            </div>
        </div>
        </div>
    
    
    </body>
    
    </html>