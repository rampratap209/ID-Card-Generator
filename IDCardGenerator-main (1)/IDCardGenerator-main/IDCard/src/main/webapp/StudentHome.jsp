<!doctype html>
<html lang="en">

<head>
<title>HomePage</title>
<!-- Required meta tags -->
<meta charset="utf-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">

<!-- Bootstrap CSS v5.2.1 -->
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.1/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-iYQeCzEYFbKjA/T2uDLTpkwGzCiq6soy8tYaI1GyVh/UjpbCx/TYkiZhlZB6+fzT"
	crossorigin="anonymous">
<style>
header {
	background: radial-gradient(circle, #004e92, #000428);
}

#student {
	text-align: center;
	border-top: 5px solid #00bfff;
}

#record {
	text-align: center;
	border-top: 5px solid #ffcc00;
}

#student:hover a {
	background-color: black;
}

#record:hover a {
	background-color: black;
}

p {
	font-size: 15px;
	color: white;
}

a {
	text-decoration: none;
}

ul .hello {
	margin-bottom: 0px;
	margin-top: 8px;
	margin-left: 1200px;
}
</style>
</head>

<body style="background: linear-gradient(to left, #bdc3c7, #2c3e50);">
	<header>
		<!-- place navbar here -->
		<!-- Nav tabs -->
		<ul class="nav nav-tabs" id="myTab" role="tablist">
			<li class="nav-item" role="presentation"><a
				href="StudentHome.jsp">
					<button class="nav-link active" id="home-tab" data-bs-toggle="tab"
						data-bs-target="#home" type="button" role="tab"
						aria-controls="home" aria-selected="true">Home</button>
			</a></li>
			<li class="nav-item" role="presentation"><a
				href="ProfilePage.jsp">
					<button class="nav-link" id="profile-tab" data-bs-toggle="tab"
						data-bs-target="#profile" type="button" role="tab"
						aria-controls="profile" aria-selected="false">Profile</button>
			</a></li>

			<%
			String name = (String) request.getSession().getAttribute("Name");
			%>

			<p class="hello">
				Hello,<%=name%></p>

		</ul>

		<!-- Tab panes -->
		<div class="tab-content">
			<div class="tab-pane active" id="home" role="tabpanel"
				aria-labelledby="home-tab"></div>
			<div class="tab-pane" id="profile" role="tabpanel"
				aria-labelledby="profile-tab"></div>

		</div>
	</header>
	<main>
		<%-- Retrieve username from session --%>

		<div class="container mt-5 p-5">
			<div class="row justify-content-center p-3 g-3"
				style="margin-top: 100px">
				<div class="col">
					<div class="card" id="student">
						<div class="card-body">
							<lable class="card-title"
								style="font-weight:640; font-size:large;">Student's ID
							Cards</lable>
							<br> <a href="IDTemplate.jsp" class="btn btn-primary">Get
								ID Card</a>
						</div>
					</div>
				</div>
				<div class="col">
					<div class="card" id="record">
						<div class="card-body">
							<lable class="card-title"
								style="font-weight:640; font-size:large;">Records of
							ID's</lable>
							<br> <a href="ViewStudentCardRecord.jsp"
								class="btn btn-primary">View Records</a>
						</div>
					</div>
				</div>
			</div>
		</div>
	</main>
	<footer>
		<!-- place footer here -->
	</footer>
	<!-- Bootstrap JavaScript Libraries -->
	<script
		src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.11.6/dist/umd/popper.min.js"
		integrity="sha384-oBqDVmMz9ATKxIep9tiCxS/Z9fNfEXiDAYTujMAeBAsjFuCZSmKbSSUnQlmh/jp3"
		crossorigin="anonymous">
		
	</script>

	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.1/dist/js/bootstrap.min.js"
		integrity="sha384-7VPbUDkoPSGFnVtYi0QogXtr74QeVeeIs99Qfg5YCF+TidwNdjvaKZX19NZ/e6oz"
		crossorigin="anonymous">
		
	</script>
</body>

</html>