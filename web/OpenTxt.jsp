<%@ page import="java.io.FileInputStream" %>
<%@ page import="java.io.IOException" %>

<%
  String path = application.getRealPath("/") + "output.txt";
  java.io.File file = new java.io.File(path);

  if (file.exists()) {
    response.setContentType("application/octet-stream");
    response.setHeader("Content-Disposition", "attachment;filename=" + file.getName());

    try (FileInputStream fileInputStream = new FileInputStream(file)) {
      int i;
      while ((i = fileInputStream.read()) != -1) {
        out.write(i);
      }
    } catch (IOException e) {
      e.printStackTrace();
    }
  } else {
    out.println("파일이 존재하지 않습니다.");
  }
%>
