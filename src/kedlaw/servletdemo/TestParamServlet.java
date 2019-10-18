package kedlaw.servletdemo;

import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;

@WebServlet(name = "TestParamServlet", urlPatterns = "/test-param-servlet")
public class TestParamServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        //1. Set content type
        response.setContentType("text/html");
        //2. Get printWriter
        PrintWriter out = response.getWriter();
        //3. Read configuration parameters
        ServletContext servletContext = getServletContext();
        int cartSize = Integer.parseInt(servletContext.getInitParameter("max-shopping-cart-size"));
        String teamName = servletContext.getInitParameter("project-team-name");
        //4. Generate html

        out.println("<html><body>");
        out.println("Shopping cart size is: " + cartSize);
        out.println("<br/>");
        out.println(("Team name is: " + teamName));
        out.println("</body></html>");
    }
}
