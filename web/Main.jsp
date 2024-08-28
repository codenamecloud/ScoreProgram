<%--
  Created by IntelliJ IDEA.
  User: GOBACK
  Date: 2024-08-28
  Time: 오전 10:32
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
    <head>
        <title>성적관리 프로그램</title>
        <link rel="stylesheet" href="./MainStyle.css" />
    </head>
    <body>
        <script>
            document.body.style.backgroundColor='lightgrey';

            function submitInfo()
            {
                const num = document.getElementById("nu").value;
                const name = document.getElementById("nam").value;
                const korean = document.getElementById("ko").value;
                const math = document.getElementById("ma").value;
                const english = document.getElementById("en").value;

                location.href="./add.jsp?num=" + num + "&name=" + name + "&korean=" + korean + "&math=" + math + "&english=" + english;
            }
        </script>
        <div id="header" class="header"><p id="h" class="h">성적입력 프로그램</p></div>
        <div id="inputBox" class="inputBox">
            <span id="num" class="num">번호 <input type="text" id="nu" class="nu"></span>
            <span id="name" class="name">이름 <input type="text" id="nam" class="nam"></span>
            <span id="korean" class="korean">국어 <input type="text" id="ko" class="ko"></span>
            <span id="math" class="math">수학 <input type="text" id="ma" class="ma"></span>
            <span id="english" class="english">영어 <input type="text" id="en" class="en"></span>
        </div>
        <div>
            <input type="button" value="추가" onclick="submitInfo()">
            <input type="button" value="수정">
            <input type="button" value="삭제">

        </div>
    </body>
</html>
