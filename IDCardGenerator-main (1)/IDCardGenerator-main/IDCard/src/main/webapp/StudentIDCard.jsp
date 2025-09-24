<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Student ID Card</title>
    <!-- Include Bootstrap CSS (adjust the path as needed) -->
    <link href="/your-project-path/bootstrap/css/bootstrap.min.css" rel="stylesheet">
    <style>
    /* Reset default styles */
body, h1, h2, h3, h4, h5, h6, p, ul, li {
    margin: 0;
    padding: 0;
}

/* Set a background color and font for the entire page */
body {
    background-color: #f7f7f7;
    font-family: Arial, sans-serif;
}

/* Style the card container */
.card {
    margin: 20px auto;
    max-width: 600px;
    background-color: #fff;
    box-shadow: 0 4px 6px rgba(0, 0, 0, 0.1);
}

/* Style the card header */
.card-title {
    background-color: #007bff;
    color: #fff;
    padding: 10px;
    text-align: center;
    font-size: 24px;
}

/* Style the card body */
.card-body {
    padding: 20px;
}

/* Style the table */
.table {
    width: 100%;
    border-collapse: collapse;
    margin-top: 20px;
}

/* Style table headers */
.table th {
    background-color: #f7f7f7;
    font-weight: bold;
    padding: 10px;
    text-align: left;
}

/* Style table data cells */
.table td {
    padding: 10px;
    border-bottom: 1px solid #ddd;
}

/* Style the student's photo */
.card img {
    max-width: 100%;
    height: auto;
    display: block;
    margin: 0 auto;
}

/* Add a margin to the container */
.container {
    margin-top: 20px;
}

/* Style the "Back to Profile List" button */
.btn-primary {
    margin-top: 20px;
    display: block;
    margin: 0 auto;
}

/* Responsive design adjustments */
@media (max-width: 768px) {
    .card {
        margin: 10px;
    }
    .container {
        margin-top: 10px;
    }
}
    
    </style>
</head>
<body>
    <div class="container mt-5">
        <div class="card">
            <div class="card-body">
                <h4 class="card-title">Student ID Card</h4>
                <div class="row">
                    <div class="col-md-4">
                        <!-- Include the student's profile photo -->
                        <img src="<%= request.getAttribute("profilePhotoPath") %>" alt="Student Photo" class="img-fluid">
                    </div>
                    <div class="col-md-8">
                        <table class="table">
                            <tr>
                                <th>Roll No:</th>
                                <td><%= request.getAttribute("rollNo") %></td>
                            </tr>
                            <tr>
                                <th>Name:</th>
                                <td><%= request.getAttribute("name") %></td>
                            </tr>
                            <tr>
                                <th>Class:</th>
                                <td><%= request.getAttribute("className") %></td>
                            </tr>
                            <tr>
                                <th>Division:</th>
                                <td><%= request.getAttribute("division") %></td>
                            </tr>
                            <tr>
                                <th>Date of Birth:</th>
                                <td><%= request.getAttribute("dateOfBirth") %></td>
                            </tr>
                            <tr>
                                <th>Mobile No:</th>
                                <td><%= request.getAttribute("mobileNo") %></td>
                            </tr>
                            <tr>
                                <th>Address:</th>
                                <td><%= request.getAttribute("address") %></td>
                            </tr>
                        </table>
                    </div>
                </div>
            </div>
        </div>
    </div>

    <!-- Include Bootstrap JS (adjust the path as needed) -->
    <script src="/your-project-path/bootstrap/js/bootstrap.min.js"></script>
</body>
</html>
