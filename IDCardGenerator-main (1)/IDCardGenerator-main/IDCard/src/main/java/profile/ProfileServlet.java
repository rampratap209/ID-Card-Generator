package profile;

import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.nio.file.Files;
import java.nio.file.StandardCopyOption;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;
import java.text.SimpleDateFormat;
import java.util.Date;
import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import javax.servlet.http.Part;

import java.text.ParseException;
import java.text.SimpleDateFormat;


@WebServlet("/ProfileServlet")
@MultipartConfig
public class ProfileServlet extends HttpServlet {
    /**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	private static final String JDBC_URL = "jdbc:mysql://localhost:3306/idcard";
    private static final String JDBC_USER = "root";
    private static final String JDBC_PASSWORD = "AP9619ap";
    //private static final String imagePath = "C:\\Users\\abhis\\Abhishek\\IDCard\\src\\main\\webapp"; 


 // ...

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        // Retrieve form data
        int rollNo = Integer.parseInt(request.getParameter("rollNo"));
        String name = request.getParameter("name");
        String className = request.getParameter("className");
        String division = request.getParameter("division");
        Date dateOfBirth = null;
        try {
            dateOfBirth = new SimpleDateFormat("yyyy-MM-dd").parse(request.getParameter("dateOfBirth"));
        } catch (ParseException e) {
            e.printStackTrace();
        }
        String mobileNo = request.getParameter("mobileNo");
        String address = request.getParameter("address");
        
        //code to add the the photo path in the table and actual image in theImage folder in the webApp 
        System.out.println("done");
		Part file=request.getPart("profilePhoto");
		String imagefilename=file.getSubmittedFileName();
		System.out.println("Image name "+imagefilename);
		String path="C:/Users/abhis/Abhishek/IDCard/src/main/webapp/"+imagefilename;
		System.out.println("Path "+path);
		FileOutputStream fo=new FileOutputStream(path);
		try {
			InputStream is=file.getInputStream();
			byte[] data= new byte[is.available()];
			is.read(data);
			fo.write(data);
			fo.close();
		}catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
		}
		long millis=System.currentTimeMillis();  
        java.sql.Date issuedate=new java.sql.Date(millis);
        int Uid = (int)request.getSession().getAttribute("Uid");
        // Save data to the database
        try {
            Class.forName("com.mysql.cj.jdbc.Driver");
            Connection connection = DriverManager.getConnection(JDBC_URL, JDBC_USER, JDBC_PASSWORD);
            String sql = "INSERT INTO profile (RollNo, Name, Class, Division, DateOfBirth, MobileNo, Address, ProfilePhotoName,issuedate,Uid) VALUES (?, ?, ?, ?, ?, ?, ?, ?, ?, ?)";
            PreparedStatement preparedStatement = connection.prepareStatement(sql);
            preparedStatement.setInt(1, rollNo);
            preparedStatement.setString(2, name);
            preparedStatement.setString(3, className);
            preparedStatement.setString(4, division);
            preparedStatement.setDate(5, new java.sql.Date(dateOfBirth.getTime()));
            preparedStatement.setString(6, mobileNo);
            preparedStatement.setString(7, address);
            preparedStatement.setString(8, imagefilename); // Store the original file name in the table
            preparedStatement.setDate(9, new java.sql.Date(issuedate.getTime()));
            preparedStatement.setInt(10, Uid);
            preparedStatement.executeUpdate();
            connection.close();
            
            HttpSession session = request.getSession();
            session.setAttribute("rollno", rollNo);
        } catch (ClassNotFoundException | SQLException e) {
            e.printStackTrace();
        }
        

        response.sendRedirect("ImageCard.jsp"); // Redirect to a confirmation page
    }

    // ...

}
