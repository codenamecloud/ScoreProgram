package servlet;

import vo.StudentVO;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.List;

@webServlet("/servlet")
public class StudentsServlet extends HttpServlet
{
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException
    {
        // Main.jsp에서 전송된 데이터 받기
        String number = request.getParameter("num");

        System.out.println(number);
    }

}