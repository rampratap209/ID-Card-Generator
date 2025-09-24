package signup;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

@WebServlet("/LoginController")
public class LoginController extends HttpServlet {
    private static final long serialVersionUID = 1L;

    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        int uid =Integer.parseInt(request.getParameter("uid"));
        String password = request.getParameter("password");

        // Assume you have a LoginDAO that interacts with the database to validate credentials
        LoginDAO loginDAO = new LoginDAO();

        if (loginDAO.isValidUser(uid, password)) {
            int id = loginDAO.getUid(uid);
            String Name = loginDAO.getName(uid);

          response.sendRedirect("StudentHome.jsp");
            } else {
                // Handle other cases, such as if adminrole is neither 0 nor 1
                response.sendRedirect("LoginForm.jsp");
            }
        }
        
    }

