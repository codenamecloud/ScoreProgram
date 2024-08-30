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

    if (num_list == null)
    {
        num_list = new ArrayList<>();
        name_list = new ArrayList<>();
        korean_list = new ArrayList<>();
        english_list = new ArrayList<>();
        math_list = new ArrayList<>();
        total_list = new ArrayList<>();
        avg_list = new ArrayList<>();

        num_list.add(num);
        name_list.add(name);
        korean_list.add(korean);
        english_list.add(english);
        math_list.add(math);
        total_list.add(String.valueOf(total));
        avg_list.add(String.valueOf(avg));
    } else
    {
        boolean inserted = false;
        int insertIndex = 0;

        for (int i = 0; i < num_list.size(); i++)
        {
            if (Integer.parseInt(num) < Integer.parseInt(num_list.get(i)))
            {
                insertIndex = i;
                inserted = true;
                break;
            }
        }

        if (inserted) {
            num_list.add(insertIndex, num);
            name_list.add(insertIndex, name);
            korean_list.add(insertIndex, korean);
            english_list.add(insertIndex, english);
            math_list.add(insertIndex, math);
            total_list.add(insertIndex, String.valueOf(total));
            avg_list.add(insertIndex, String.valueOf(avg));
        } else {
            num_list.add(num);
            name_list.add(name);
            korean_list.add(korean);
            english_list.add(english);
            math_list.add(math);
            total_list.add(String.valueOf(total));
            avg_list.add(String.valueOf(avg));
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
    location.href = "./Main.jsp";
</script>


