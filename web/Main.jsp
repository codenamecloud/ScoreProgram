<%--
  Created by IntelliJ IDEA.
  User: GOBACK
  Date: 2024-08-28
  Time: 오전 10:32
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page import="java.util.List" %>
<%
    List<String> num_list = (List<String>) session.getAttribute("num_list");
    List<String> name_list = (List<String>) session.getAttribute("name_list");
    List<String> korean_list = (List<String>) session.getAttribute("korean_list");
    List<String> english_list = (List<String>) session.getAttribute("english_list");
    List<String> math_list = (List<String>) session.getAttribute("math_list");
    List<String> total_list = (List<String>) session.getAttribute("total_list");
    List<String> avg_list = (List<String>) session.getAttribute("avg_list");

    String req_num = request.getParameter("number_list");
    String req_name = request.getParameter("name_list");
    String req_korean = request.getParameter("korean_list");
    String req_english = request.getParameter("english_list");
    String req_math = request.getParameter("math_list");
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

                if (num == "" || name == "" || korean == "" || english == "" || math == "")
                {
                    alert("제대로 입력하세요.");
                    history.back();
                } else
                {
                    location.href="../servlet/StudentsServlet?num=" + num + "&name=" + name + "&korean=" + korean + "&math=" + math + "&english=" + english;
                }
            }

            function read_info(index)
            {
                const number_list = document.getElementsByClassName("number_list")[index].innerText;
                const name_list = document.getElementsByClassName("name_list")[index].innerText;
                const korean_list = document.getElementsByClassName("korean_list")[index].innerText;
                const english_list = document.getElementsByClassName("english_list")[index].innerText;
                const math_list = document.getElementsByClassName("math_list")[index].innerText;

                 location.href="./Main.jsp?number_list=" + number_list + "&name_list=" + name_list + "&korean_list=" + korean_list + "&english_list=" + english_list +
                     "&math_list=" + math_list;
            }

            function modifyInfo()
            {
                const num = document.getElementById("nu").value;
                const name = document.getElementById("nam").value;
                const korean = document.getElementById("ko").value;
                const math = document.getElementById("ma").value;
                const english = document.getElementById("en").value;

                if (num == "" || name == "" || korean == "" || english == "" || math == "")
                {
                    alert("제대로 입력하세요.");
                    history.back();
                } else
                {
                    location.href = "./Modify.jsp?num=" + num + "&name=" + name + "&korean=" + korean + "&math=" + math + "&english=" + english;
                }
            }

            function deleteInfo()
            {
                const num = document.getElementById("nu").value;
                const name = document.getElementById("nam").value;
                const korean = document.getElementById("ko").value;
                const math = document.getElementById("ma").value;
                const english = document.getElementById("en").value;

                if (num == "" || name == "" || korean == "" || english == "" || math == "")
                {
                    alert("삭제할 값이 없습니다.");
                    history.back();
                } else
                {
                    location.href = "./Delete.jsp?num=" + num + "&name=" + name + "&korean=" + korean + "&math=" + math + "&english=" + english;
                }
            }

            function saveTxt()
            {
                location.href = "./SaveTxt.jsp";
            }

            function openTxt()
            {
                location.href = "./OpenTxt.jsp";
            }

            function deleteAll()
            {
                location.href = "./DeleteAll.jsp"
            }

        </script>
        <div id="header" class="header"><p id="h" class="h">성적입력 프로그램</p></div>
        <div id="inputBox" class="inputBox">
            <%
                if (req_num != null && req_name != null && req_korean != null && req_english != null && req_math != null)
                {
                 %>
                    <span id="num" class="num">번호 <input type="text" id="nu" class="nu" value=<%= req_num %>></span>
                    <span id="name" class="name">이름 <input type="text" id="nam" class="nam" value=<%= req_name %>></span>
                    <span id="korean" class="korean">국어 <input type="text" id="ko" class="ko" value=<%= req_korean %>></span>
                    <span id="math" class="math">수학 <input type="text" id="ma" class="ma" value=<%= req_english %>></span>
                    <span id="english" class="english">영어 <input type="text" id="en" class="en" value=<%= req_math %>></span>
                 <%
                } else
                    {
                    %>
                    <span id="num" class="num">번호 <input type="text" id="nu" class="nu"></span>
                    <span id="name" class="name">이름 <input type="text" id="nam" class="nam"></span>
                    <span id="korean" class="korean">국어 <input type="text" id="ko" class="ko"></span>
                    <span id="math" class="math">수학 <input type="text" id="ma" class="ma"></span>
                    <span id="english" class="english">영어 <input type="text" id="en" class="en"></span>
                    <%
                    }
            %>
        </div>
        <div id="btn" class="btn">
            <input id="add" class="add" type="button" value="추가" onclick="submitInfo()">
            <input id="modify" class="modify" type="button" value="수정" onclick="modifyInfo()">
            <input id="delete" class="delete" type="button" value="삭제" onclick="deleteInfo()">
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
                if (num_list != null && name_list != null && korean_list != null && english_list != null && math_list != null && total_list != null && avg_list != null)
                {
                    for (int i = 0; i < num_list.size(); i++)
                    {
                        %>
                        <div id="std_list" class="std_list" onclick="read_info(<%= i %>)">
                                <span id="number_list" class="number_list"><%= num_list.get(i)%></span>
                                <span id="name_list" class="name_list"><%= name_list.get(i)%></span>
                                <span id="korean_list" class="korean_list"><%= korean_list.get(i)%></span>
                                <span id="english_list" class="english_list"><%= english_list.get(i)%></span>
                                <span id="math_list" class="math_list"><%= math_list.get(i)%></span>
                                <span id="total_list" class="total_list"><%= total_list.get(i)%></span>
                                <span id="avg_list" class="avg_list"><%= avg_list.get(i)%></span>
                        </div>
                        <%
                    }
                } else
                    {
                        out.println("정보가 없습니다.");
                    }
            %>
        </div>
        <input type="button" id="save" class="save" value="파일저장" onclick="saveTxt()">
        <input type="button" id="open" class="open" value="파일열기" onclick="openTxt()">
        <input type="button" id="reset" class="reset" value="초기화" onclick="deleteAll()">
    </body>
</html>
