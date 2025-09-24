<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>

<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Reset Page</title>
<style>
input[type="password"] {
	padding: 10px;
	border: 1px solid #ccc;
	border-radius: 5px;
	width: 200px;
}
body {
	font-family: Arial, sans-serif;
	margin: 0;
	display: flex;
	justify-content: center;
	align-items: center;
	height: 100vh;
	background: linear-gradient(to left, #bdc3c7, #2c3e50);
}

section {
	display: flex;
	min-height: 100vh;
	align-items: center;
	justify-content: center;

}


.container {
	width: 350px;
	display: flex;
	min-height: 500px;
	position: relative;
	border-radius: 10px;
	align-items: center;
	justify-content: center;
	background-color:white;
	border: 1px solid rgba(255, 255, 255, 0.5);
	border-right: 1px solid black;
	border-bottom: 1px solid black;
	border-top: 1px solid #000000;
	border-left: 1px solid black;
}

.form {
	width: 100%;
	height: 100%;
	padding: 40px;
	position: relative;
}

.form h1 {
	color: #000000;
	text-align: center;
	font-family: Arial, Helvetica, sans-serif;
	font-size: 24px;
	font-weight: 600;
	position: relative;
	letter-spacing: 1px;
	margin-bottom: 50px;
}

.form .input__box {
	width: 85%;
	margin-top: 25px;
}

.form .input__box input {
	width: 100%;
	border: 1px;
	outline: none;
	font-size: 16px;
	padding: 10px 20px;
	letter-spacing: 1px;
	border-radius: 10px;
	background: rgba(255, 255, 255, 0.2);
	border: 1px solid rgb(0, 0, 0);
	
}

.form::placeholder {
	color: #ffffff;
}

.form .input__box input[type="submit"] {
	color: #ffffff;
	cursor: pointer;
	background: #000000;
	max-width: 100px;
	font-weight: 600;
	margin-bottom: 20px;
	border-right: none;
	border-bottom: none;
	box-shadow: none;
}

.forget {
	color: #000000;
	margin-top: 5px;
}

.forget a {
	color: #3300ff;
	font-weight: 600;
	text-decoration: none;
}

.forget a:hover {
	text-decoration: underline;

}


button {
	padding: 10px;
	background-color: #000000;
	color: #ffffff;
	border: none;
	border-radius: 5px;
	cursor: pointer;
}

.form .input__box input[type="submit"]:hover {
	background-color: #002bff;
}
b{
font-size: large;
}
#adminRole{
    margin-top: 8%;
}
</style>
</head>
<body>
	<section>
		<div class="container">
			<div class="form">
				<h1>Reset Password</h1>
				<form action="ResetPasswordServlet" method="Post">
					<div class="input__box">UID:
						<input type="tel" placeholder="Your Uid" name="uid" />
					</div>
					<div class="input__box">New Password:
						<input type="Password" placeholder="New Password" name="newPassword" />
					</div>
					<div class="input__box">Confirm Password:</b>
						<input type="Password" placeholder="Confirm Password" name="confirmPassword" />
					</div>
					<div class="input__box">
						<input type="submit" value="Reset" />
					</div>
				</form>
			</div>
		</div>
	</section>
</body>
</html>
