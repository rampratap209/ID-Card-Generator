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

#sidebar {
	min-width: 250px;
	max-width: 250px;
	height: 100%;
	position: fixed;
	top: 0;
	left: 0;
	overflow-y: auto;
	background-color: #333;
	color: #fff;
	transition: all 0.3s;
}

#sidebar .sidebar-header {
	padding: 20px;
	text-align: center;
	background-color: #1a1a1a;
}

#sidebar ul.components {
	padding: 0;
}

#sidebar ul li {
	padding: 15px;
}

#sidebar ul li a {
	color: #fff;
	text-decoration: none;
	display: block;
}

#sidebar ul li a:hover {
	background-color: #1a242f;
}

/* Content styling */
#content {
	margin-left: 250px;
	padding: 20px;
}

/* Button to toggle sidebar */
#sidebarCollapse {
	background-color: #333;
	color: #fff;
	border: none;
	position: fixed;
	top: 20px;
	left: 20px;
	z-index: 9999;
}

/* Responsive styles */
@media ( max-width : 768px) {
	#sidebar {
		margin-left: -250px;
		display: none;
	}
	#content {
		margin-left: 0;
	}
	#sidebarCollapse {
		display: block;
	}
}

/* Additional styling for a button icon */
#sidebarCollapse i {
	font-size: 20px;
	margin-right: 10px;
}

#Adminid {
	color: white;
	text-decoration: none;
}
</style>
</head>
<body>
	<nav id="sidebar">
		<div class="sidebar-header">
			<a href="AdminDashboard.jsp" id="Adminid"><h3>Admin
					Dashboard</h3></a>
		</div>
		<ul class="list-unstyled components">
			<li><a href="ViewCreatedID.jsp">View Created ID Records</a></li>
			<li><a href="ViewLoginDetails.jsp">View Login Records</a></li>
			<li><a href="ViewReprintIDDetails.jsp">View Reprinting
					Records</a></li>
		</ul>
	</nav>
	<div id="content">
		<div class="container mt-4">
			<div class="container">
				<div class="row justify-content-center">
					<div class="col-md-10">
						<div class="table-container">
							<h2 class="text-center">Regenerated ID Records</h2>
							<div class="table-responsive">
								<table class="table table-hover table-striped">
									<thead>
										<tr>
											<th>Uid</th>
											<th>Name</th>
											<th>Reason</th>
										</tr>
									</thead>
									<tbody>
										<%
										try {
											// Establish a database connection (update with your database details)
											Class.forName("com.mysql.cj.jdbc.Driver");
											Connection connection = DriverManager.getConnection("jdbc:mysql://localhost:3306/idcard", "root", "AP9619ap");

											// Get the uid from the request (you should receive it as a parameter)

											// Prepare and execute the SQL query
											String sql = "SELECT * FROM Reason";
											PreparedStatement preparedStatement = connection.prepareStatement(sql);

											ResultSet resultSet = preparedStatement.executeQuery();

											// Iterate through the results and display data in the table
											while (resultSet.next()) {
												int Uid = resultSet.getInt("Uid");
												String Name = resultSet.getString("Name");
												String Reason = resultSet.getString("Reason");
										%>
										<tr>
											<td><%=Uid%></td>
											<td><%=Name%></td>
											<td><%=Reason%></td>

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
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
	<!-- Include Bootstrap JS and jQuery -->
	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>