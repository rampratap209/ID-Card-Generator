package signup;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

public class LoginDAO {
    // JDBC URL, username, and password of your database
    private static final String JDBC_URL = "jdbc:mysql://localhost:3306/idcard";
    private static final String JDBC_USERNAME = "root";
    private static final String JDBC_PASSWORD = "AP9619ap";

    // SQL queries
    private static final String SELECT_USER_QUERY = "SELECT * FROM signup WHERE uid = ?";
    private static final String INSERT_USER_QUERY = "INSERT INTO signup (name,email,uid,password) VALUES (?, ?, ?, ?)";

    // Constructor
    public LoginDAO() {
        // Register JDBC driver (if not done already)
        try {
            Class.forName("com.mysql.cj.jdbc.Driver");
        } catch (ClassNotFoundException e) {
            e.printStackTrace();
        }
    }

    // Method to get user information by username
    public LoginPojo getUserByUsername(String username) {
        try (Connection connection = DriverManager.getConnection(JDBC_URL, JDBC_USERNAME, JDBC_PASSWORD);
             PreparedStatement preparedStatement = connection.prepareStatement(SELECT_USER_QUERY)) {

            preparedStatement.setString(1, username);
            ResultSet resultSet = preparedStatement.executeQuery();

            if (resultSet.next()) {
                LoginPojo user = new LoginPojo();
                user.setName(resultSet.getString("name"));
                user.setEmail(resultSet.getString("email"));
                user.setPassword(resultSet.getString("password"));
                user.setUid(resultSet.getInt("uid"));
                return user;
            }

        } catch (SQLException e) {
            e.printStackTrace();
        }
        return null; // User not found
    }

    // Method to add a new user
    public boolean addUser(LoginPojo user) {
        try (Connection connection = DriverManager.getConnection(JDBC_URL, JDBC_USERNAME, JDBC_PASSWORD);
             PreparedStatement preparedStatement = connection.prepareStatement(INSERT_USER_QUERY)) {

            preparedStatement.setString(1, user.getName());
            preparedStatement.setString(2, user.getEmail());
            preparedStatement.setInt(4, user.getUid());
            preparedStatement.setString(5, user.getPassword());

            int rowsAffected = preparedStatement.executeUpdate();
            return rowsAffected > 0;

        } catch (SQLException e) {
            e.printStackTrace();
        }
        return false; // User insertion failed
    }
    
    public boolean isValidUser(int uid, String password) {
        try (Connection connection = DriverManager.getConnection(JDBC_URL, JDBC_USERNAME ,JDBC_PASSWORD)) {
            String sql = "SELECT * FROM signup WHERE uid = ? AND password = ?";
            try (PreparedStatement preparedStatement = connection.prepareStatement(sql)) {
                preparedStatement.setInt(1, uid);
                preparedStatement.setString(2, password);

                try (ResultSet resultSet = preparedStatement.executeQuery()) {
                    return resultSet.next(); // Returns true if the user is found
                }
            }
        } catch (SQLException e) {
            e.printStackTrace();
            return false;
        }
    }
    public boolean isValidAdmin(String Username, String password) {
        try (Connection connection = DriverManager.getConnection(JDBC_URL, JDBC_USERNAME ,JDBC_PASSWORD)) {
            String sql = "SELECT * FROM admin WHERE Username = ? AND Password = ?";
            try (PreparedStatement preparedStatement = connection.prepareStatement(sql)) {
                preparedStatement.setString(1, Username);
                preparedStatement.setString(2, password);

                try (ResultSet resultSet = preparedStatement.executeQuery()) {
                    return resultSet.next(); // Returns true if the user is found
                }
            }
        } catch (SQLException e) {
            e.printStackTrace();
            return false;
        }
    }

    public int getAdminRole(int uid) {
        try (Connection connection = DriverManager.getConnection(JDBC_URL, JDBC_USERNAME ,JDBC_PASSWORD)) {
            String sql = "SELECT adminrole FROM signup WHERE uid = ?";
            try (PreparedStatement preparedStatement = connection.prepareStatement(sql)) {
                preparedStatement.setInt(1,uid);

                try (ResultSet resultSet = preparedStatement.executeQuery()) {
                    if (resultSet.next()) {
                        return resultSet.getInt("adminrole");
                        
                    }
                }
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return -1; // Default value for cases where adminrole is not found
    }
    public String getName(int uid) {
        try (Connection connection = DriverManager.getConnection(JDBC_URL, JDBC_USERNAME ,JDBC_PASSWORD)) {
            String sql = "SELECT name FROM signup WHERE uid = ?";
            try (PreparedStatement preparedStatement = connection.prepareStatement(sql)) {
                preparedStatement.setInt(1,uid);

                try (ResultSet resultSet = preparedStatement.executeQuery()) {
                    if (resultSet.next()) {
                        return resultSet.getString("name");
                        
                    }
                }
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return "error"; // Default value for cases where adminrole is not found
    }
    
    public int getUid(int uid) {
        try (Connection connection = DriverManager.getConnection(JDBC_URL, JDBC_USERNAME ,JDBC_PASSWORD)) {
            String sql = "SELECT uid FROM signup WHERE uid = ?";
            try (PreparedStatement preparedStatement = connection.prepareStatement(sql)) {
            	preparedStatement.setInt(1, uid);

                try (ResultSet resultSet = preparedStatement.executeQuery()) {
                    if (resultSet.next()) {
                        return resultSet.getInt("uid");
                    }
                }
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return -1; // Default value for cases where adminrole is not found
    }
    
    public String getUserType(int uid) {
        String userType = ""; // Default value for unknown user type

        try (Connection connection = DriverManager.getConnection(JDBC_URL, JDBC_USERNAME ,JDBC_PASSWORD)) {
            String sql = "SELECT person FROM signup WHERE UID = ?";
            try (PreparedStatement preparedStatement = connection.prepareStatement(sql)) {
                preparedStatement.setInt(1, uid);

                try (ResultSet resultSet = preparedStatement.executeQuery()) {
                    if (resultSet.next()) {
                        userType = resultSet.getString("person");
                    }
                }
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }

        return userType;
    }

}
