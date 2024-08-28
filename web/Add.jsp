<%--
  Created by IntelliJ IDEA.
  User: GOBACK
  Date: 2024-08-28
  Time: 오후 4:11
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page import="java.util.List"%>
<%@ page import="java.util.ArrayList" %>
<%@ page import="vo.StudentList" %>

<%
    String num = request.getParameter("num");
    String name = request.getParameter("name");
    String korean = request.getParameter("korean");
    String english = request.getParameter("english");
    String math = request.getParameter("math");
//    out.println(num);
//    out.println(name);
//    out.println(korean);
//    out.println(english);
//    out.println(math);
    StudentList vo = new StudentList();
    vo.setNum(num);
    vo.setName(name);
    vo.setKorean(korean);
    vo.setEnglish(english);
    vo.setMath(math);

    List<StudentList> info = (List<StudentList>) session.getAttribute("studentList");
    if (info != null)
    {
        info.add(vo);
    }

    session.setAttribute("studentList", info);

//    for (StudentList student : info)
//    {
//        out.println(student.getNum());
//        out.println(student.getName());
//        out.println(student.getKorean());
//        out.println(student.getEnglish());
//        out.println(student.getMath());
//    }


%>
<script>
    location.href = "./Main.jsp";
</script>


