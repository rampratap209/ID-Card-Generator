package signup;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 * Servlet implementation class AdminLoginServlet
 */
@WebServlet("/AdminLoginServlet")
public class AdminLoginServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public AdminLoginServlet() {
        super();
        // TODO Auto-generated constructor stub
    }
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        String Username = request.getParameter("username");
        String password = request.getParameter("password");
        LoginDAO loginDAO = new LoginDAO();

        // Simulate checking username and password
        boolean isValidAdmin = loginDAO.isValidAdmin(Username, password);
        if (isValidAdmin) {
            HttpSession session = request.getSession();
            session.setAttribute("Username", Username);
            response.sendRedirect("AdminLoginSuccess.jsp");
        } else {
            response.sendRedirect("AdminLoginError.jsp");
        }
    }

	}


