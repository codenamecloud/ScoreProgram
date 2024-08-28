<%--
  Created by IntelliJ IDEA.
  User: GOBACK
  Date: 2024-08-28
  Time: 오전 10:32
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page import="vo.StudentList" %>
<%@ page import="java.util.ArrayList" %>
<%@ page import="java.util.List" %>
<%

%>
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

                location.href="./Add.jsp?num=" + num + "&name=" + name + "&korean=" + korean + "&math=" + math + "&english=" + english;
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
        <div id="btn" class="btn">
            <input id="add" class="add" type="button" value="추가" onclick="submitInfo()">
            <input id="modify" class="modify" type="button" value="수정">
            <input id="delete" class="delete" type="button" value="삭제">
        </div>
        <div id="class" class="class">
            <span id="num2" class="num2">학번</span>
            <span id="name2" class="name2">이름</span>
            <span id="korean2" class="korean2">국어</span>
            <span id="english2" class="english2">영어</span>
            <span id="math2" class="math2">수학</span>
            <span id="total" class="total">합계</span>
            <span id="avg" class="avg">평균</span>
        </div>
        <div style="overflow: scroll" id="scroll" class="scroll">
            <%
                List<StudentList> info = (List<StudentList>) session.getAttribute("studentList");
                if (info != null)
                {
                    for (StudentList students : info)
                    {
            %>
                    <span><%= students.getNum()%></span>
                    <span><%= students.getName()%></span>
                    <span><%= students.getKorean()%></span>
                    <span><%= students.getEnglish()%></span>
                    <span><%= students.getMath()%></span>
            <%
                    }
                }else
                    {
                        out.println("정보가 없습니다.");
                    }
            %>
        </div>
    </body>
</html>
