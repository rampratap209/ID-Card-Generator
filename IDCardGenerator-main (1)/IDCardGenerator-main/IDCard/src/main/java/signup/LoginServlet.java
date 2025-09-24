package signup;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

@WebServlet("/LoginServlet")
public class LoginServlet extends HttpServlet {
    private static final long serialVersionUID = 1L;

    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        int uid = Integer.parseInt(request.getParameter("uid"));
        String password = request.getParameter("password");
        LoginDAO loginDAO = new LoginDAO();

        // Simulate checking username and password
        boolean isValidUser = loginDAO.isValidUser(uid, password);
        boolean isAdmin = checkAdminRole(uid);

        if (isValidUser) {
        	int id = loginDAO.getUid(uid);
            String Name = loginDAO.getName(uid);
            HttpSession session = request.getSession();
            session.setAttribute("Uid", uid);
            session.setAttribute("Name", Name);
            response.sendRedirect("StudentSuccess.jsp");
        } else {
            response.sendRedirect("LoginError.jsp");
        }
    }

    // Simulated authentication method (replace with actual logic)
    private boolean authenticate(int username, String password) {
        // Replace with your authentication logic
        return "Uid".equals(username) && "password".equals(password);
    }

    // Simulated admin role check (replace with actual logic)
    private boolean checkAdminRole(int username) {
        // Replace with your admin role check logic
		return "admin_username".equals(username); // Example admin username
	}
}
