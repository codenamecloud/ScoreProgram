<%--
  Created by IntelliJ IDEA.
  User: GOBACK
  Date: 2024-08-29
  Time: 오후 5:22
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

  num_list.clear();
  name_list.clear();
  korean_list.clear();
  english_list.clear();
  math_list.clear();
  total_list.clear();
  avg_list.clear();

  session.setAttribute("num_list", num_list);
  session.setAttribute("name_list", name_list);
  session.setAttribute("korean_list", korean_list);
  session.setAttribute("english_list", english_list);
  session.setAttribute("math_list", math_list);
  session.setAttribute("total_list", total_list);
  session.setAttribute("avg_list", avg_list);
%>
<script>
  location.href = "./Main.jsp";
</script>