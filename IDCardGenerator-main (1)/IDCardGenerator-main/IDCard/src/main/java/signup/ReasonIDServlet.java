package signup;

import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;


import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/ReasonIDServlet")
public class ReasonIDServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public ReasonIDServlet() {
		super();
		// TODO Auto-generated constructor stub
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// TODO Auto-generated method stub
		//Creating the instance from loginDAO to Get Name
		LoginDAO loginDAO = new LoginDAO();
		int Uid = (int) request.getSession().getAttribute("Uid");
		String Name = loginDAO.getName(Uid);
		String Reason = request.getParameter("reason");

		try {
			Class.forName("com.mysql.cj.jdbc.Driver");
			Connection connection = DriverManager.getConnection("jdbc:mysql://localhost:3306/idcard", "root",
					"AP9619ap");

			String sql = "INSERT INTO Reason (Uid ,Name, Reason) VALUES (?,?,?)";
			PreparedStatement preparedStatement = connection.prepareStatement(sql);

			preparedStatement.setInt(1, Uid);
			preparedStatement.setString(2, Name);
			preparedStatement.setString(3, Reason);

			int rowsAffected = preparedStatement.executeUpdate();
            if (rowsAffected > 0) {
                response.sendRedirect("UpdateIDTemplate.jsp");
            } else {
                response.sendRedirect("ViewStudentCardRecord.jsp");
            }

            preparedStatement.close();
            connection.close();	
		} catch (Exception e) {
			e.printStackTrace();
		}
	}

}
