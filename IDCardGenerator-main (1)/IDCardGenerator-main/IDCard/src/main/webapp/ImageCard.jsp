<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="profile.*"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Image Card</title>
<!-- Include Bootstrap CSS (adjust the path as needed) -->
 <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.1/dist/css/bootstrap.min.css" rel="stylesheet"
        integrity="sha384-iYQeCzEYFbKjA/T2uDLTpkwGzCiq6soy8tYaI1GyVh/UjpbCx/TYkiZhlZB6+fzT" crossorigin="anonymous">
<style>
        body {
            background: linear-gradient(to left, #bdc3c7, #2c3e50);
            font-family: Arial, sans-serif;
            background-color: #f0f0f0;
            margin: 0;
            padding: 0;
            justify-content: center;
            align-items: center;
            text-align:center;
            height: 100vh;
        }
        header{
        background: radial-gradient(circle, #004e92, #000428);
        }

        .container {
            text-align: center;
            background-image:url('data:image/jpeg;base64,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');
            background-size: cover;
            background-repeat: no-repeat;
            border-radius: 10px;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
            margin-top: 100px;
            width: 20pc;
        }

        .card img {
            max-width: 100%;
            height: auto;
        }

        img {
            max-width: 150px;
            max-height: 125px;
            border-radius: 5%;
            margin-right: 20px;
        }

        .card {
            background-color:transparent;
            border:transparent ;
            margin: 40px;
            height: 20pc;
        }

        .sign {
            margin-left: 140px;
            margin-top: 30px;
            font-family: Impact, Haettenschweiler, 'Arial Narrow Bold', sans-serif;
        }

        .card-body {
            padding-right:;
        }



        div .card-text {
           text-align: left;
            padding: 5px;
            font-size: large;
        }
        a{
        text-decoration: none;
        }
    </style>
</head>
<body>
<header>
<ul class="nav nav-tabs" id="myTab" role="tablist">
            <li class="nav-item" role="presentation">
            <a href="StudentHome.jsp">
                <button class="nav-link" id="home-tab" data-bs-toggle="tab" data-bs-target="#home" type="button"
                    role="tab" aria-controls="home" aria-selected="true">Home</button>
            </a>
            </li>
            <li class="nav-item" role="presentation">
            <a href="ProfilePage.jsp">
                <button class="nav-link" id="profile-tab" data-bs-toggle="tab" data-bs-target="#Profile" type="button"
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

		<%-- Fetch data from the database using ProfileDAO --%>
		<%
		int Uid = (int) request.getSession().getAttribute("Uid");
		ProfileDAO profileDAO = new ProfileDAO();
		ProfilePojo profile = profileDAO.getProfile(Uid); // Replace with the desired profile ID
		%>
        <div class="row" id="content">
            <div class="col-sm-6">
                <div class="container p-3">
                    <h4>Student ID Card</h4>
                    <div class="card">
                        <!-- Display the profile photo -->
                        <div class="card-img">
                            <img src="<%=profile.getProfilePhotoName()%>" class="card-img-top" id="profilePhoto" alt="Student Photo">
                        </div>
                        <div class="card-body">
                            <!-- Display other profile information -->
                            <h5 class="card-title"><%=profile.getName()%></h5>
                            <div class="card-text">Roll No:<%=profile.getRollNo()%></div>
                            <div class="card-text">Class: <%=profile.getClassName()%></div>
                            <div class="card-text">Division: <%=profile.getDivision()%></div>
                        </div>
                        <label class="sign" for="text">signature</label>
                    </div>
                </div>
            </div>
            <div class="col-sm-6">
                <div class="container p-1">
                    <br>
                    <br>
                    <div class="card">
                        <div class="card-body">
                            <div class="card-text">Date of Birth:<%=profile.getDateOfBirth()%> </div>
                            <div class="card-text">Mobile No:<%=profile.getMobileNo()%> </div>
                            <div class="card-text">Address:<%=profile.getAddress()%></div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <div>
        <button id="btn-one" class="btn btn-success btn-lg">Download PDF</button>
        </div>
    </main>
	<!-- Include Bootstrap JS (adjust the path as needed) -->
	 <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>

    <script src="https://cdnjs.cloudflare.com/ajax/libs/jspdf/1.3.4/jspdf.min.js"></script>

    <script src="https://cdnjs.cloudflare.com/ajax/libs/html2canvas/1.4.1/html2canvas.min.js"
        integrity="sha512-BNaRQnYJYiPSqHHDb58B0yaPfCu+Wgds8Gp/gU33kqBtgNS4tSPHuGibyoeqMV/TJlSKda6FXzoEyYGjTe+vXA=="
        crossorigin="anonymous" referrerpolicy="no-referrer"></script>
	
	<script>
        document.addEventListener('DOMContentLoaded', function () {
            document.querySelector('#btn-one').addEventListener('click', function () {
                html2canvas(document.querySelector('#content')).then((canvas) => {
                    let base64image = canvas.toDataURL('image/png');
                    // console.log(base64image);
                    let pdf = new jsPDF('p', 'px', [1600, 1131]);
                    pdf.addImage(base64image, 'PNG', 15, 15, 1110, 360);
                    pdf.save('IdCard.pdf');
                });
            });
        });
    </script>
</body>
</html>
