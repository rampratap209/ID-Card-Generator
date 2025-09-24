
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html lang="en">

<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Admin Dashboard</title>
<!-- Add Bootstrap CSS link here -->
<link
	href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css"
	rel="stylesheet">
<!-- Add your custom CSS link here -->
<style>
/* Sidebar styling */
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

#Adminid:hover {
	text-decoration: none;
}

#Adminid {
	color: white;
}
</style>
</head>

<body>
	<!-- Sidebar -->
	<nav id="sidebar">
		<div class="sidebar-header">
		<a href="AdminDashboard.jsp" id="Adminid"><h3>Admin Dashboard</h3></a>
		</div>
		<ul class="list-unstyled components">
			<li><a href="ViewCreatedID.jsp">View Created ID Records</a></li>
			<li><a href="ViewLoginDetails.jsp">View Login Records</a></li>
			<li><a href="ViewReprintIDDetails.jsp">View Reprinting Records</a>
			</li>
		</ul>
	</nav>

	<!-- Page Content -->
	<div id="content">
		<div class="container mt-4">
			<main>
				<div class="container">
					<div class="row justify-content-center">
						<div class="col-md-10">
							<div class="table-container">
								<h1>Welcome to the Admin Dashboard</h1>

								<%-- Retrieve username from session --%>
								<%
								String username = (String) session.getAttribute("Username");
								%>

								<h3>
									Hello, Admin
									<%=username%>!
								</h3>


							</div>
						</div>
					</div>
				</div>
			</main>
		</div>
	</div>

	<!-- Add Bootstrap JS and jQuery here (before your custom JavaScript) -->
	<script
		src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
	<script
		src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
	<script
		src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
	<!-- Add your custom JavaScript file -->
	<script src="js/script.js"></script>
</body>

</html>
