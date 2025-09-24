package profile;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;

public class ProfileDAO {
    private String jdbcUrl = "jdbc:mysql://localhost:3306/idcard";
    private String jdbcUsername = "root";
    private String jdbcPassword = "AP9619ap";

    public ProfileDAO() {
        try {
            Class.forName("com.mysql.cj.jdbc.Driver");
        } catch (ClassNotFoundException e) {
            e.printStackTrace();
        }
    }

    // Create a new profile
    public boolean createProfile(ProfilePojo profile) {
        try (Connection connection = DriverManager.getConnection(jdbcUrl, jdbcUsername, jdbcPassword)) {
            String sql = "INSERT INTO profile (RollNo, Name, Class, Division, DateOfBirth, MobileNo, Address, ProfilePhotoName ,issuedate,Uid) VALUES (?, ?, ?, ?, ?, ?, ?, ?,?)";
            try (PreparedStatement preparedStatement = connection.prepareStatement(sql)) {
                preparedStatement.setInt(1, profile.getRollNo());
                preparedStatement.setString(2, profile.getName());
                preparedStatement.setString(3, profile.getClassName());
                preparedStatement.setString(4, profile.getDivision());
                preparedStatement.setDate(5, new java.sql.Date(profile.getDateOfBirth().getTime()));
                preparedStatement.setString(6, profile.getMobileNo());
                preparedStatement.setString(7, profile.getAddress());
                preparedStatement.setString(8, profile.getProfilePhotoName());
                preparedStatement.setDate(9, new java.sql.Date(profile.getIssuedate().getTime()));
                preparedStatement.setInt(10, profile.getUid());

                int rowsAffected = preparedStatement.executeUpdate();
                return rowsAffected > 0;
            }
        } catch (SQLException e) {
            e.printStackTrace();
            return false;
        }
    }

    // Retrieve a profile by RollNo
    public ProfilePojo getProfile(int Uid) {
        try (Connection connection = DriverManager.getConnection(jdbcUrl, jdbcUsername, jdbcPassword)) {
            String sql = "SELECT * FROM profile WHERE Uid = ?";
            try (PreparedStatement preparedStatement = connection.prepareStatement(sql)) {
                preparedStatement.setInt(1, Uid);

                try (ResultSet resultSet = preparedStatement.executeQuery()) {
                    if (resultSet.next()) {
                    	int rollno = resultSet.getInt("RollNo");
                        String name = resultSet.getString("Name");
                        String className = resultSet.getString("Class");
                        String division = resultSet.getString("Division");
                        Date dateOfBirth = resultSet.getDate("DateOfBirth");
                        String mobileNo = resultSet.getString("MobileNo");
                        String address = resultSet.getString("Address");
                        String profilePhotoName = resultSet.getString("ProfilePhotoName");
                        Date issuedate = resultSet.getDate("IssueDate");
                    

                        return new ProfilePojo(rollno, name, className, division, dateOfBirth, mobileNo, address, profilePhotoName,issuedate,Uid);
                    }
                }
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return null; // Profile not found
    }

    // Update an existing profile
    public boolean updateProfile(ProfilePojo profile) {
        try (Connection connection = DriverManager.getConnection(jdbcUrl, jdbcUsername, jdbcPassword)) {
            String sql = "UPDATE profile SET Name = ?, Class = ?, Division = ?, DateOfBirth = ?, MobileNo = ?, Address = ?, ProfilePhotoName = ? WHERE RollNo = ?";
            try (PreparedStatement preparedStatement = connection.prepareStatement(sql)) {
                preparedStatement.setString(1, profile.getName());
                preparedStatement.setString(2, profile.getClassName());
                preparedStatement.setString(3, profile.getDivision());
                preparedStatement.setDate(4, new java.sql.Date(profile.getDateOfBirth().getTime()));
                preparedStatement.setString(5, profile.getMobileNo());
                preparedStatement.setString(6, profile.getAddress());
                preparedStatement.setString(7, profile.getProfilePhotoName());
                preparedStatement.setInt(8, profile.getRollNo());

                int rowsAffected = preparedStatement.executeUpdate();
                return rowsAffected > 0;
            }
        } catch (SQLException e) {
            e.printStackTrace();
            return false;
        }
    }

    // Delete a profile by RollNo
    public boolean deleteProfile(int rollNo) {
        try (Connection connection = DriverManager.getConnection(jdbcUrl, jdbcUsername, jdbcPassword)) {
            String sql = "DELETE FROM profile WHERE RollNo = ?";
            try (PreparedStatement preparedStatement = connection.prepareStatement(sql)) {
                preparedStatement.setInt(1, rollNo);

                int rowsAffected = preparedStatement.executeUpdate();
                return rowsAffected > 0;
            }
        } catch (SQLException e) {
            e.printStackTrace();
            return false;
        }
    }

    // Retrieve all profiles
    public List<ProfilePojo> getAllProfiles() {
        List<ProfilePojo> profiles = new ArrayList<>();
        try (Connection connection = DriverManager.getConnection(jdbcUrl, jdbcUsername, jdbcPassword)) {
            String sql = "SELECT * FROM profile";
            try (PreparedStatement preparedStatement = connection.prepareStatement(sql)) {
                try (ResultSet resultSet = preparedStatement.executeQuery()) {
                    while (resultSet.next()) {
                        int rollNo = resultSet.getInt("RollNo");
                        String name = resultSet.getString("Name");
                        String className = resultSet.getString("Class");
                        String division = resultSet.getString("Division");
                        Date dateOfBirth = resultSet.getDate("DateOfBirth");
                        String mobileNo = resultSet.getString("MobileNo");
                        String address = resultSet.getString("Address");
                        String profilePhotoName = resultSet.getString("ProfilePhotoName");
                        Date issuedate = resultSet.getDate("IssueDate");
                        int Uid = resultSet.getInt("Uid");

                        ProfilePojo profile = new ProfilePojo(rollNo, name, className, division, dateOfBirth, mobileNo, address, profilePhotoName,issuedate,Uid);
                        profiles.add(profile);
                    }
                }
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return profiles;
    }
    
 
}
