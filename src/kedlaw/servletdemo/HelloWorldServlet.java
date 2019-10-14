package kedlaw.servletdemo;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;

@WebServlet(name = "Servlet", urlPatterns = "/hello-servlet")
public class HelloWorldServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {


    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        // request is what is coming from the browser
        // response is what the servlet is sending back to the browser

        // 1. Set the content type
        response.setContentType("text/html");
        // 2. get the printwriter
        PrintWriter out = response.getWriter();
        // 3. generate HTML comtent
        out.println("<html><body>");

        out.println("<h2>Hello Servlet World! </h2><hr/>");
        out.println("Time on the server is:  " + new java.util.Date());

        out.println("</body></html>");
    }
}
