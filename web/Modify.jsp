<%--
  Created by IntelliJ IDEA.
  User: GOBACK
  Date: 2024-08-28
  Time: 오후 5:52
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page import="java.util.List"%>
<%@ page import="java.util.ArrayList" %>
<%@ page import="java.util.Objects" %>
<%
    String num = request.getParameter("num");
    String name = request.getParameter("name");
    String korean = request.getParameter("korean");
    String english = request.getParameter("english");
    String math = request.getParameter("math");
    Integer total = Integer.parseInt(korean) + Integer.parseInt(english) + Integer.parseInt(math);
    Integer avg = (Integer.parseInt(korean) + Integer.parseInt(english) + Integer.parseInt(math)) / 3;

    List<String> num_list = (List<String>) session.getAttribute("num_list");
    List<String> name_list = (List<String>) session.getAttribute("name_list");
    List<String> korean_list = (List<String>) session.getAttribute("korean_list");
    List<String> english_list = (List<String>) session.getAttribute("english_list");
    List<String> math_list = (List<String>) session.getAttribute("math_list");
    List<String> total_list = (List<String>) session.getAttribute("total_list");
    List<String> avg_list = (List<String>) session.getAttribute("avg_list");

    int count = 0;
    for(String number : num_list)
    {
        count += 1;
        if(num.equals(number))
        {
            name_list.set(count - 1, name);
            korean_list.set(count - 1, korean);
            english_list.set(count - 1, english);
            math_list.set(count - 1, math);
            total_list.set(count - 1, String.valueOf(total));
            avg_list.set(count - 1, String.valueOf(avg));
        } else if (Integer.parseInt(num) > Integer.parseInt(number) )
        {
            num_list.add(num);
            name_list.add(name);
            korean_list.add(korean);
            english_list.add(english);
            math_list.add(math);
            total_list.add(String.valueOf(total));
            avg_list.add(String.valueOf(avg));

            num_list.remove(count - 1);
            name_list.remove(count - 1);
            korean_list.remove(count - 1);
            english_list.remove(count - 1);
            math_list.remove(count - 1);
            total_list.remove(count - 1);
            avg_list.remove(count - 1);
        } else
        {
            num_list.set(count - 1, num);
            name_list.set(count - 1, name);
            korean_list.set(count - 1, korean);
            english_list.set(count - 1, english);
            math_list.set(count - 1, math);
            total_list.set(count - 1, String.valueOf(total));
            avg_list.set(count - 1, String.valueOf(avg));
        }
    }

    session.setAttribute("num_list", num_list);
    session.setAttribute("name_list", name_list);
    session.setAttribute("korean_list", korean_list);
    session.setAttribute("english_list", english_list);
    session.setAttribute("math_list", math_list);
    session.setAttribute("total_list", total_list);
    session.setAttribute("avg_list", avg_list);

%>
<script>
    location.href="./Main.jsp";
</script>

