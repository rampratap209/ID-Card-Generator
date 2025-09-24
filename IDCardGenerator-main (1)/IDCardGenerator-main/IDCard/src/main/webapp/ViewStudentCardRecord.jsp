<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ page import="java.sql.*"%>
<!DOCTYPE html>
<html>
<head>
<title>ID Records</title>
<!-- Include Bootstrap CSS -->
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css"
	rel="stylesheet">
<style>
body {
	background: linear-gradient(to left, #bdc3c7, #2c3e50);
}

.table-container {
	max-width: 1400px;
	margin: 0 auto;
	padding: 30px;
	background-color: #ffffff;
	border-radius: 10px;
	box-shadow: 0px 0px 10px rgba(0, 0, 0, 0.1);
	margin-top: 100px;
}

.table-responsive {
	overflow-x: auto;
}

table {
	width: 100%;
	border-collapse: collapse;
}

th, td {
	padding: 10px;
	text-align: left;
}

th {
	background-color: #000;
	color: #fff;
}

tr:nth-child(even) {
	background-color: #000000;
}

tr:hover {
	background-color: #d9d9d9;
}

header {
	background: radial-gradient(circle, #004e92, #000428);
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
			<li class="nav-item" role="presentation"><a
				href="StudentHome.jsp">
					<button class="nav-link" id="home-tab" data-bs-toggle="tab"
						data-bs-target="#home" type="button" role="tab"
						aria-controls="home" aria-selected="true">Home</button>
			</a></li>
			<li class="nav-item" role="presentation"><a
				href="ProfilePage.jsp">
					<button class="nav-link" id="profile-tab" data-bs-toggle="tab"
						data-bs-target="#profile" type="button" role="tab"
						aria-controls="profile" aria-selected="false">Profile</button>
			</a></li>

		</ul>

		<!-- Tab panes -->
		<div class="tab-content">
			<div class="tab-pane" id="home" role="tabpanel"
				aria-labelledby="home-tab"></div>
			<div class="tab-pane" id="profile" role="tabpanel"
				aria-labelledby="profile-tab"></div>

		</div>
	</header>
	<div class="container">
		<div class="row justify-content-center">
			<div class="col-md-10">
				<div class="table-container">
					<h2 class="text-center">ID Generated Records</h2>
					<div class="table-responsive">
						<table class="table table-hover table-striped">
							<thead>
								<tr>
									<th>Name</th>
									<th>IssueDate</th>
									<th>Action</th>
								</tr>
							</thead>
							<tbody>
								<%
								try {
									// Establish a database connection (update with your database details)
									Class.forName("com.mysql.cj.jdbc.Driver");
									Connection connection = DriverManager.getConnection("jdbc:mysql://localhost:3306/idcard", "root", "AP9619ap");

									// Get the uid from the request (you should receive it as a parameter)
									int uid = (int) request.getSession().getAttribute("Uid");

									// Prepare and execute the SQL query
									String sql = "SELECT Name, IssueDate FROM profile WHERE uid = ?";
									PreparedStatement preparedStatement = connection.prepareStatement(sql);
									preparedStatement.setInt(1, uid);
									ResultSet resultSet = preparedStatement.executeQuery();

									// Iterate through the results and display data in the table
									while (resultSet.next()) {
										String name = resultSet.getString("Name");
										String issueDate = resultSet.getString("IssueDate");
								%>
								<tr>
									<td><%=name%></td>
									<td><%=issueDate%></td>
									<td><a href="ImageCard.jsp" class="btn btn-primary"
										role="button">Download PDF</a></td>
								</tr>
								<%
								}
								resultSet.close();
								preparedStatement.close();
								connection.close();
								} catch (Exception e) {
								e.printStackTrace();
								}
								%>
							</tbody>

						</table>

					</div>

					<a href="ReasonStudent.jsp" class="btn btn-primary" role="button">Reprint
						ID</a>
				</div>
			</div>
		</div>
	</div>

	<!-- Include Bootstrap JS and jQuery -->
	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>