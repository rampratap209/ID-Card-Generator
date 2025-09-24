<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="java.sql.*" %>
<!DOCTYPE html>
<html>
<head>
    <title>User Profile</title>
    <!-- Include Bootstrap CSS -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet">
    <style>
        /* Custom CSS for User Profile Page */
        body {
            background: linear-gradient(to left, #bdc3c7, #2c3e50);
        }
        header{
        background: radial-gradient(circle, #004e92, #000428);
        }

        .container {
            margin-top: 50px;
        }

        .card {
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.2);
            max-width: 400px;
            margin: 0 auto;
            background-color: #fff;
            border-radius: 10px;
           
        }

        .card-title {
            font-size: 24px;
            font-weight: bold;
        }

        .card-text {
            font-size: 18px;
        }

        .alert-danger {
            margin-top: 20px;
        }
        a {
        text-decoration: none;
        }
        
    </style>
</head>
<body>
<header>
        <!-- place navbar here -->
        <!-- Nav tabs -->
        <ul class="nav nav-tabs" id="myTab" role="tablist">
            <li class="nav-item" role="presentation">
            <a href="StudentHome.jsp">
                <button class="nav-link" id="home-tab" data-bs-toggle="tab" data-bs-target="#home" type="button"
                    role="tab" aria-controls="home" aria-selected="true">Home</button>
            </a>
            </li>
            <li class="nav-item" role="presentation">
            <a href="ProfilePage.jsp">
                <button class="nav-link active" id="profile-tab" data-bs-toggle="tab" data-bs-target="#Profile" type="button"
                    role="tab" aria-controls="profile" aria-selected="false" >Profile</button>
			</a>
            </li>
        </ul>

        <!-- Tab panes -->
        <div class="tab-content">
            <div class="tab-pane active" id="home" role="tabpanel" aria-labelledby="home-tab"></div>
            <div class="tab-pane" id="profile" role="tabpanel" aria-labelledby="profile-tab"></div>
        </div>
    </header>
<main>
    <div class="container mt-5">
        <div class="row justify-content-center">
            <div class="col-md-6">
               <%
                    try {
                        // Establish a database connection (update with your database details)
                        Class.forName("com.mysql.cj.jdbc.Driver");
                        Connection connection = DriverManager.getConnection("jdbc:mysql://localhost:3306/idcard", "root", "AP9619ap");
                        
                        // Get the uid from the request (you should receive it as a parameter)
                        int uid = (int)request.getSession().getAttribute("Uid");

                        // Prepare and execute the SQL query
                        String sql = "SELECT Name, Email, Uid FROM signup WHERE Uid = ?";
                        PreparedStatement preparedStatement = connection.prepareStatement(sql);
                        preparedStatement.setInt(1, uid);
                        ResultSet resultSet = preparedStatement.executeQuery();

                        // Check if the user exists
                        if (resultSet.next()) {
                            String name = resultSet.getString("Name");
                            String email = resultSet.getString("Email");
                            int userUid = resultSet.getInt("Uid");
                %>
                <div class="card">
                
                    <div class="card-body">
                    <h1 class="text-center">User Profile</h1><hr>
                        <h5 class="card-title">Name: <%= name %></h5>
                        <h3 class="card-text">Email: <%= email %></h3>
                        <h3 class="card-text">UID: <%= userUid %></h3>
                    </div>
                </div>
                <%
                        } else {
                %>
                <div class="alert alert-danger mt-3" role="alert">
                    User not found.
                </div>
                <%
                        }
                        
                        resultSet.close();
                        preparedStatement.close();
                        connection.close();
                    } catch (Exception e) {
                        e.printStackTrace();
                    }
                %>
            </div>
        </div>
    </div>
</main>
    <!-- Include Bootstrap JS and jQuery -->
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>
