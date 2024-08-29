<%--
  Created by IntelliJ IDEA.
  User: GOBACK
  Date: 2024-08-28
  Time: 오후 5:52
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page import="java.util.List"%>
<%@ page import="java.util.ArrayList" %>
<%
    String num = request.getParameter("num");
    String name = request.getParameter("name");
    Integer korean = Integer.parseInt(request.getParameter("korean"));
    Integer english = Integer.parseInt(request.getParameter("english"));
    Integer math = Integer.parseInt(request.getParameter("math"));
    Integer total = korean + english + math;
    Integer avg = (korean + english + math) / 2;


    List<String> num_list = (List<String>) session.getAttribute("num_list");
    if (num_list == null)
    {
        num_list = new ArrayList<>();
        num_list.add(num);
        session.setAttribute("num_list", num_list);
    }
    else
    {
        num_list.set(num);
    }


    List<String> name_list = (List<String>) session.getAttribute("name_list");
    if (name_list == null)
    {
        name_list = new ArrayList<>();
        name_list.add(name);
        session.setAttribute("name_list", name_list);
    }
    else
    {
        name_list.add(name);
    }


    List<Integer> korean_list = (List<Integer>) session.getAttribute("korean_list");
    if (korean_list == null)
    {
        korean_list = new ArrayList<>();
        korean_list.add(korean);
        session.setAttribute("korean_list", korean_list);
    }
    else
    {
        korean_list.add(korean);
    }

    List<Integer> english_list = (List<Integer>) session.getAttribute("english_list");
    if (english_list == null)
    {
        english_list = new ArrayList<>();
        english_list.add(english);
        session.setAttribute("english_list", english_list);
    }
    else
    {
        english_list.add(english);
    }

    List<Integer> math_list = (List<Integer>) session.getAttribute("math_list");
    if (math_list == null)
    {
        math_list = new ArrayList<>();
        math_list.add(math);
        out.println(math_list);
        session.setAttribute("math_list", math_list);
    }
    else
    {
        math_list.add(math);
    }

    List<Integer> total_list = (List<Integer>) session.getAttribute("total_list");
    if (total_list == null)
    {
        total_list = new ArrayList<>();
        total_list.add(total);
        out.println(total_list);
        session.setAttribute("total_list", total_list);
    }
    else
    {
        total_list.add(total);
    }

    List<Integer> avg_list = (List<Integer>) session.getAttribute("avg_list");
    if (avg_list == null)
    {
        avg_list = new ArrayList<>();
        avg_list.add(avg);
        out.println(avg_list);
        session.setAttribute("avg_list", avg_list);
    }
    else
    {
        avg_list.add(avg);
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

