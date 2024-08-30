<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page import="vo.StudentVO"%>
<%
    String number  = request.getParameter("num");
    String name    = request.getParameter("name");
    String korean  = request.getParameter("korean");
    String english = request.getParameter("english");
    String math    = request.getParameter("math");

    StudentVO studentListVO = new StudentVO(number, name, english, korean, math);





%>
<%--<script>--%>
<%--    location.href = "./Main.jsp";--%>
<%--</script>--%>


