package kedlaw.servletdemo;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;

@WebServlet(name = "StudentServlet", urlPatterns = "/student-servlet")
public class StudentServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        // 1. Set the content type
        response.setContentType("text/html");

        // 2. Get the print writer
        PrintWriter out = response.getWriter();
        // 3. Generate html content
        out.println("<html><body>");

        out.println("<h2>Response from @StudentServlet</h2>");
        out.println("<hr><br/>");
        out.println("First name: " + "<strong>" + request.getParameter("first_name") + "</strong>");
        out.println("<br/>");
        out.println("Last name: " + "<strong>" + request.getParameter("last_name") + "</strong>");


        out.println("</body></html>");
    }
}
