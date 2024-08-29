<%@ page import="java.io.FileWriter" %>
<%@ page import="java.io.PrintWriter" %>
<%@ page import="java.util.List" %>
<%@ page import="java.io.IOException" %>

<%
  List<String> num_list = (List<String>) session.getAttribute("num_list");
  List<String> name_list = (List<String>) session.getAttribute("name_list");
  List<String> korean_list = (List<String>) session.getAttribute("korean_list");
  List<String> english_list = (List<String>) session.getAttribute("english_list");
  List<String> math_list = (List<String>) session.getAttribute("math_list");
  List<String> total_list = (List<String>) session.getAttribute("total_list");
  List<String> avg_list = (List<String>) session.getAttribute("avg_list");

  String path = application.getRealPath("/") + "output.txt";

  try (FileWriter fileWriter = new FileWriter(path);
       PrintWriter printWriter = new PrintWriter(fileWriter)) {
    if (num_list != null) {
      for (int i = 0; i < num_list.size(); i++) {
        printWriter.println(num_list.get(i));
        printWriter.println(name_list.get(i));
        printWriter.println(korean_list.get(i));
        printWriter.println(english_list.get(i));
        printWriter.println(math_list.get(i));
        printWriter.println(total_list.get(i));
        printWriter.println(avg_list.get(i));
      }
    }
  } catch (IOException e) {
    e.printStackTrace();
  }

  response.sendRedirect("Main.jsp");
%>
