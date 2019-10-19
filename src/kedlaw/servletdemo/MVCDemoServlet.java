package kedlaw.servletdemo;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet(name = "MVCDemoServlet", urlPatterns = "/mvc-demo-servlet")
public class MVCDemoServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        // Step 0. Add data
        String[] studentsList = {"Ewa","Bozena", "Szymon", "Damian"};
        request.setAttribute("student_list",studentsList);
        // Step 1. get request dispatcher
        RequestDispatcher rDispatcher = request.getRequestDispatcher("servlet-demo/view_students.jsp");
        // Step 2. forward the request to JSP
        rDispatcher.forward(request,response); // forward is explicit | we pass along request and response
                                                // received by the servlet
    }
}
