

<div id="sidebar">
        <div class="side-btn" onclick="toggleSidebarout()">
            <input type="submit" />
        </div>
        <ul class="sidebar-nav2">
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

    <script>
        function toggleSidebarout() 
        {
            document.getElementById("sidebar").classList.toggle('active');
        }

    </script>
