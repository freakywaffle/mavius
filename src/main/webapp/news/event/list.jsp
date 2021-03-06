<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>MAVIUS - 이벤트</title>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-beta/css/bootstrap.min.css" integrity="sha384-/Y6pD6FV/Vv2HJnA6t+vslU6fwYXjCFtcEpHbNJ0lyAFsXTsjBbfaDjzALeQsN6M" crossorigin="anonymous">
    <!-- Bootstrap core CSS -->
    <link href="../../sidebar/vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">

    <link href="../../sidebar/css/simple-sidebar.css" rel="stylesheet">
    <link rel="stylesheet" href="../../css/news/newslist.css">
    <!--달력-->
    <link rel="stylesheet" href="../../css/fullcalendar.min.css">
    <script src="../../js/moment.min.js"></script>
    <script src="../../js/jquery.min.js"></script>
    <script src="../../js/fullcalendar.min.js"></script>
    <script src="https://unpkg.com/sweetalert/dist/sweetalert.min.js"></script>
<script>

    $(document).ready(function() {
        var today = new Date();
                    var dd = today.getDate();
                    var mm = today.getMonth()+1; //January is 0!
                    var yyyy = today.getFullYear();
                    
                    if(dd<10) {
                        dd='0'+dd
                    }
                    
                    if(mm<10) {
                        mm='0'+mm
                    }
                    var todayis = yyyy+'-'+mm+'-'+dd;
    $('#calendar').fullCalendar({
    defaultDate: todayis,
   /*  dayclick:function(date, jsEvent, view, resourceObj){
        alert('Date: ' + today.timeFormat );
        alert('Resource ID: ' + resourceObj.getElementById);
    }, */
    // editable: true,
    timeFormat: "HH:mm",
    eventLimit: 4, // allow "more" link when too many events
    events: [
        {
        	title: '썬데이 메이플',
            start: '2018-12-23',
            url: "https://maplestory.nexon.com/News/Event/29",
            color: '#353677'
        },
        {
        title: '썬데이 메이플',
        start: '2018-12-30',
        url: "https://maplestory.nexon.com/News/Event/29",
        color: '#353677'
        },
        {
        title: '썬데이 메이플',
        start: '2019-1-6',
        url: "https://maplestory.nexon.com/News/Event/29",
        color: '#353677'
        },
        {
        title: '카밀라의 크리스마스 베이커리',
        start: '2018-12-13',
        end: '2018-12-26T23:59:59',
        //constraint: 'availableForMeeting', // defined below
        url: "https://maplestory.nexon.com/News/Event/28",
        color: '#4e664d'
        },
        {
            title: '어드벤처 사전예약',
            start: '2018-12-27',
            end: '2019-01-09T23:59:59',
            color: '#231EB7'
        },
        {
            title: '어드벤처 박스',
            start: '2018-12-27',
            end: '2019-01-09T23:59:59',
/*             url: "detail?no=${n.no }", */
            		url: "detail?no=58", 
            color: '#231EB7'
        },
        {
            title: '어드벤처 슈가타임!',
            start: '2018-12-29T12:00:00',
            end: '2018-12-29T23:59:59',
            color:'#e9e9e9'
        },
        {
        title: '<테라 버닝> 프로젝트!',
        start: '2018-12-27',
        end: '2019-01-30T23:59:59',
        color: '#626262'
        }
    ],
    
	    eventClick:function(event){
	    	if(event.url){
	    		/* alert(event.title + "\n" + event.url, "wicked", "width=700,height=600");
	    		window.open(event.url); */
	    		swal(event.title, "현명한 사람이라면 이벤트를 확인해볼걸?", "info", {
	    			  buttons: {
	    				    cancel: "확인안해",
	    				    defeat: "현재창",
	    				    catch: {
	    				      text: "이벤트 확인하러 가기",
	    				      value: "catch",
	    				    },
	    				  },
	    				})
	    				.then((value) => {
	    				  switch (value) {
	    				    case "defeat":
								location.href=event.url;
								break;
	    				    case "catch":
                              window.open(event.url);
	    				      break;
	    				 
	    				    default:
	    				      swal({
                                  title: "WoW ! 이런 미련한 자를 보았나~",
                                  text: "이벤트를 확인하지 않는다라!",
                                  icon: "warning"
                              })
	    				  }
	    				});
	    		//window.open(event.url);
	    		return false;
	    	}
	    }
    
    });

});

</script>
<!--달력end-->
</head>
<body>
<div id="hiririk">
<!-- 왼쪽 사이드바 메인헤더 -->
<jsp:include page="/sidebar/header.jsp" />
<!-- 오른쪽쪽 사이드바 로그인메뉴 -->
<jsp:include page="/sidebar/sidebar.jsp" />

    <!-- 메인 바디 헤더 -->
    <main>
        <div class="main-body-div">
	        <div class="main-body-header">
	            <h1 class="text-center">E v e n t</h1>
	            <h3 class="text-center">이 벤 트</h3>
	        </div>
        </div>

        <!--달력-->
        <div class="event-calendar">
            <div id='calendar'></div>
        </div>
        <!-- </div> -->

        <!-- 바디 content ------------------------------>

        <!-- 게시판 검색 폼-->
        <div class="float-left search-form">
            <form action="" method="GET">
                <h1 class="hidden">히든.. 검색폼</h1>
                <div class="input-group">
                    <label class="hidden">검색</label>
                    <select style="width: 90px;" class="form-control" name="f" id="">
                        <option value="title">제목</option>
                        <option value="content">내용</option>
                    </select>
                    <input style="width: 250px;" class="form-control" type="text" name="" placeholder="검색어를 입력하쎄용"/>
                    <span class="input-group-btn">
                        <button class="btn btn-secondary" type="button">
                            <i class="fas fa-search"></i>
                        </button>
                    </span>
                </div>
            </form>
        </div>
        <!-- 게시판 검색 폼 end-->
		
		<!-- 게시판 목록 table -->
        <div class="board-list">
            <div>
                <table class="table table-striped table-hover">
                    <thead class="thead-dark">
                        <tr>
                            <th class="text-center">번호</th>
                            <th class="text-center">제목</th>
                            <th class="text-center">작성일</th>
                            <th class="text-center">조회수</th>
                        </tr>
                    </thead>
                    <tbody>
                    <c:forEach var="n" items="${list }">
                    <tr> 
                        <td class="text-center">${n.no }</td>
                        <td><a style="color: #000000; text-decoration: none;" href="detail?no=${n.no }">${n.title }</a></td>
                        <td class="text-center">${n.regDate }</td>
                        <td class="text-center">${n.hit }</td>
                    </tr>
                    </c:forEach>
                   <!--  <tr> 
                        <td class="text-center">3</td>
                        <td>table-striped는 홀수마다 색을 주네</td>
                        <td class="text-center">2015-01-03</td>
                        <td class="text-center">6323</td>
                    </tr> -->
                    </tbody>
                </table>
            </div>
        </div>
        <!-- 게시판 목록 table end-->
        
            <!-- 페이저 -->
            <c:set var="page" value="1"/>
            <c:if test="${!empty param.p }">
            	<c:set var="page" value="${param.p }"/>
            </c:if>
            
            <%-- <c:set var="cls" value="${i==page?':''}"/> --%>
            <div class="pager">
                <nav aria-label="Page navigation example">
                    <ul class="pagination justify-content-center" style="margin-bottom: 0px;">
                        <li class="page-item"><a class="page-link" href="#"> < </a></li>
            <c:forEach var="i" begin="1" end="3">
                        <li class="page-item"><a class="page-link" href="?p=${i }">${i }</a></li>
            </c:forEach>
                        <li class="page-item"><a class="page-link" href="#"> > </a></li>
                    </ul>
                </nav>
            </div>
            <!-- 페이저 end-->
    </main>
</div>
<!-- 바디 content END ------------------------------>
<script defer src="https://use.fontawesome.com/releases/v5.0.8/js/solid.js" integrity="sha384-+Ga2s7YBbhOD6nie0DzrZpJes+b2K1xkpKxTFFcx59QmVPaSA8c7pycsNaFwUK6l" crossorigin="anonymous"></script>
<script defer src="https://use.fontawesome.com/releases/v5.0.8/js/fontawesome.js" integrity="sha384-7ox8Q2yzO/uWircfojVuCQOZl+ZZBg2D2J5nkpLqzH1HY0C1dHlTKIbpRz/LG23c" crossorigin="anonymous"></script>
</body>
</html>