<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!-- Bootstrap core CSS -->
    <link href="/sidebar/vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">
    <!--"vendor/bootstrap/css/bootstrap.min.css"-->
    <!-- Custom styles for this template -->
    <link href="/sidebar/css/simple-sidebar.css" rel="stylesheet">

<div id="sidebar">
        <div class="side-btn" onclick="toggleSidebarout()">
            <input type="submit" />
        </div>
        <ul class="sidebar-nav2">
            <li>
                <a href="#">mypage</a>
            </li>
            <li>
                <a href="#">about</a>
            </li>
            <li>
                <a href="#">contact</a>
            </li>

        </ul>
    </div>

    <script>
        function toggleSidebarout() 
        {
            document.getElementById("sidebar").classList.toggle('active');
        }

    </script>
