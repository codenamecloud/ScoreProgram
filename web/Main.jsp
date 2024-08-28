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
                List<String> num_list = (List<String>) session.getAttribute("num_list");
                List<String> name_list = (List<String>) session.getAttribute("name_list");
                List<Integer> korean_list = (List<Integer>) session.getAttribute("korean_list");
                List<Integer> english_list = (List<Integer>) session.getAttribute("english_list");
                List<Integer> math_list = (List<Integer>) session.getAttribute("math_list");
                List<Integer> total_list = (List<Integer>) session.getAttribute("total_list");
                List<Integer> avg_list = (List<Integer>) session.getAttribute("avg_list");
                if (num_list != null && name_list != null && korean_list != null && english_list != null && math_list != null && total_list != null && avg_list != null)
                {
                    for (int i = 0; i < num_list.size(); i++)
                    {
            %>
                    <span id="number_list" class="number_list"><%= num_list.get(i)%></span>
                    <span id="name_list" class="name_list"><%= name_list.get(i)%></span>
                    <span id="korean_list" class="korean_list"><%= korean_list.get(i)%></span>
                    <span id="english_list" class="english_list"><%= english_list.get(i)%></span>
                    <span id="math_list" class="math_list"><%= math_list.get(i)%></span>
                    <span id="total_list" class="total_list"><%= total_list.get(i)%></span>
                    <span id="avg_list" class="avg_list"><%= avg_list.get(i)%></span>
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
