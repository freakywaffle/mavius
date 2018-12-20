<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
    
    <!DOCTYPE html>
    <html lang="en" id="html">
    
<!--     <page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8">
 -->    
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
            <link href="/member/mypage/css/qnalist.css" rel="stylesheet">
            <!-- <script type="text/javascript" src="myscripts.js"></script> -->
            <script type="text/javascript" src="/member/mypage/css/jquery-3.3.1.slim.min.js" ></script>
        <script type="text/javascript" src="/member/mypage/css/popper.min.js" ></script>
        <script type="text/javascript" src="/bootstrap-4.1.3/bootstrap-4.1.3/dist/js/bootstrap.min.js" ></script>
        <script src="http://code.jquery.com/jquery-1.10.2.js"></script>

        </head>
    <!--  detail -->
    
    
        <body id="body">

            <!--  제목 클릭시 나오는 디테일 Modal  -->
                <div class="modal fade" id="detailmodal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel"
                aria-hidden="true">
                <div class="modal-dialog modal-lg" role="document">
                    <div class="modal-content">
                        <div class="modal-header">
                            <h5 class="modal-title adminname" id="exampleModalLabel">관리자님께 물어보아요!</h5>
                            <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                                <span aria-hidden="true">&times;</span>
                            </button>
                        </div>
                        <div class="modal-body">
                            <form>
                                <div class="form-group">
                                    <label for="recipient-name" class="col-form-label">제목:</label>
                                    <input type="text" class="form-control" id="detailtitle"> <!-- 디테일 문의 제목 -->
                                </div>
                                <div class="form-group">
                                    <label for="message-text" class="col-form-label">문의 내용:</label>
                                    <textarea class="form-control" id="detailcontent"></textarea> <!-- 디테일 문의 내용 -->
                                </div>
                                <div class="form-group">
                                    <label for="message-text" class="col-form-label">답변 내용:</label>
                                    <textarea class="form-control" id="answercontent" disabled></textarea> <!-- 디테일 답변 내용 -->
                                </div>
                            </form>
                        </div>
                        <div class="modal-footer">
                            <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
                            <!-- <button type="button" class="btn btn-primary">Send</button> -->
                        </div>
                    </div>
                </div>
            </div>

            <!-- 문의하기 버튼을 눌렀을때 관리자에게 보내는 Modal -->

            <div class="modal fade" id="sendmodal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel"
                aria-hidden="true">
                <div class="modal-dialog modal-lg" role="document">
                    <div class="modal-content">
                        <div class="modal-header">
                            <h5 class="modal-title adminname" id="exampleModalLabel">관리자님께 물어보아요!</h5>
                            <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                                <span aria-hidden="true">&times;</span>
                            </button>
                        </div>
                        <div class="modal-body">
                            <form>
                                <div class="form-group">
                                    <label for="recipient-name" class="col-form-label">제목:</label>
                                    <input type="text" class="form-control" id="sendtitle"> <!-- 디테일 문의 제목 -->
                                </div>
                                <div class="form-group">
                                    <label for="message-text" class="col-form-label">문의 내용:</label>
                                    <textarea class="form-control" id="sendcontent"></textarea> <!-- 디테일 문의 내용 -->
                                </div>
                            </form>
                        </div>
                        <div class="modal-footer">
                            <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
                            <button type="button" class="btn btn-primary send-btn">Send</button>
                        </div>
                    </div>
                </div>
            </div>

        
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
                                    <h3>QnA</h3>
                                    <button type="button" class="btn btn-primary send-start" data-toggle="modal" data-target="#exampleModal"
                                        data-whatever="관리자님">문의하기</button>
                                </div>
                                <div class="searchtxt">
                                        <form action="qnalist" method="get" id="option-form">
                
                                            <select onchange="location = this.options[this.selectedIndex].value;" >
                                                <option value="">정렬기준</option>
                                                <option value="list">전체</option>
                                                <option value="list?during=처리대기중">처리대기중</option>
                                                <option value="list?during=처리완료">처리완료</option>
                                            </select>
                
                                          
                                            <input type="hidden" value="" name="page" />
                                            <input type="hidden" value="${param.during }" name="during" />
                                        </form>
                                    </div>
    
                                <div class="submenu2">
					
                                        <div class="submenu-cat">
                                            <ul>
                                                <li class="subcat-md"><a>작성일</a></li>
                                                <li class="subcat-sm"><a>작성자</a></li>
                                                <li class="subcat-lg"><a>제  목</a></li>
                                                <li class="subcat-sm"><a>처리상태</a></li>
                                                <li class="subcat-sm"><a>처리완료날짜</a></li>
                                            </ul>
                                        </div>
                                        
                                        <c:forEach var="qna" items="${list}">
                                            <div class="submenu-cat cscs">
                                                <ul>
                                                    <li class="subcat-md"><a>${qna.sendDate }</a></li>
                                                    <li class="subcat-sm"><a>${qna.senderId}</a></li>
                                                    <li class="subcat-lg "><a class="modalgo">${qna.title }</a></li>
                                                    <li class="subcat-sm"><a>${qna.during }</a></li>
                                                    <li class="subcat-sm"><a>${qna.answerContent }</a></li>
                                                </ul>
                                                <input type="hidden" value="${qna.content }" class="sendercontent"/>
                                                <input type="hidden" value="${qna.answerContent }" class="answercontent"/>
                                            </div>
                                        </c:forEach>
            
                                        <script>

                                            $('.modalgo').on('click',function()
                                            {
                                                var div = $(this).parent().parent().parent();

                                                var sendercontent = div.children('.sendercontent');
                                                var answerContent = div.children('.answercontent');
												
                                                console.log(div);
                                                console.log(sendercontent.attr('value'));
                                                console.log(answerContent.attr('value'));


                                            });
                                            

                                            // window.addEventListener("load",function()
                                            // {
                                            	
                                            //     var submenu2 = document.querySelector(".submenu2");

                                            //     submenu2.onclick=function(e)
                                            //     {
                                            //         if(e.target.classList.contains("modalgo"))
                                            //         {
                                            //         	var content = $('.modalgo').closet('sendercontent');

                                            //             console.log(content.value);


                                            //             // var con = document.querySelector(".sendercontent");

                                            //             // console.log(con);
                                                    	
                                            //         	// console.log(e.target.text());
                                            //             // var content = e.target.dataset.serndertitle;


                                            //         }
                                            //     }; 

                                                // 디테일 Modal을 띄우는 스크립트 코드이다.
                                                // var modalgo = document.querySelectorAll(".modalgo");
                                               
                                               
                                               
                                               
                                                // for (var i = 0; i < modalgo.length; i++) 
                                                // {

                                                    
                                                //     modalgo[i].onclick=function(e)
                                                //     {
                                                //         // alert("ddd");
                                                //          var modal = document.querySelector("#detailmodal");
                                                         
                                                //          var modaltitle = modal.querySelector("#detailtitle");
                                                //          modaltitle.value="이건 뭔가요";
                                                //         $("#detailmodal").modal("show");

                                                //         // modal.find('.modal-title').text(recipient+' 질문 있어요!');
                                                //         // modal.find('.modal-body input').val(recipient);
                                                //     }
                                                // }


                                                //문의하기 버튼을 눌러서 나오는 Modal을 띄우는 스크립트 코드이다.

                                            //     var btnMuny = document.querySelector(".send-start");
                                                
                                            //         btnMuny.onclick=function(e)
                                            //         {
                                            //             // alert("ddd");
                                            //              var modal = document.querySelector("#sendmodal");
                                                         
                                            //              var modaltitle = modal.querySelector("#sendtitle");
                                            //              modaltitle.value="이건 뭔가요";
                                            //             $("#sendmodal").modal("show");

                                            //             // modal.find('.modal-title').text(recipient+' 질문 있어요!');
                                            //             // modal.find('.modal-body input').val(recipient);
                                            //         }
                                                
                                            // });
                                            
                                        </script>
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
            
                                    </div>
    <jsp:include page="/inc/pager.jsp"></jsp:include>
                            </div>
    </section>
    
                            
                    </main>
                </div>
            </div>
            </div>
    
    
        </body>
    
    </html>