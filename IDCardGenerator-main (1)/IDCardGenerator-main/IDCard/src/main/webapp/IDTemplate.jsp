<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!doctype html>
<html lang="en">

<head>
    <title>ID Card</title>
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

    <!-- Bootstrap CSS v5.2.1 -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.1/dist/css/bootstrap.min.css" rel="stylesheet"
        integrity="sha384-iYQeCzEYFbKjA/T2uDLTpkwGzCiq6soy8tYaI1GyVh/UjpbCx/TYkiZhlZB6+fzT" crossorigin="anonymous">
    <style>
        main .container {
            width: px;
            max-height: 1000px;
            background-color: #fff;
            border-radius: 10px;
            box-shadow: 0 2px 5px rgba(0, 0, 0, 0.1);
            overflow: auto;
        }
        header {
            background: radial-gradient(circle, #004e92, #000428);
            
        }
        a{
        text-decoration: none;
        }
    </style>

</head>

<body style="background: linear-gradient(to left, #bdc3c7, #2c3e50);">
    <header>
        <!-- place navbar here -->
        <!-- Nav tabs -->
        <ul class="nav nav-tabs" id="myTab" role="tablist">
          <li class="nav-item" role="presentation">
          <a href="StudentHome.jsp">
            <button class="nav-link" id="home-tab" data-bs-toggle="tab" data-bs-target="#home" type="button" role="tab" aria-controls="home" aria-selected="true">Home</button>
          </a>
          </li>
          <li class="nav-item" role="presentation">
          <a href="ProfilePage.jsp">
            <button class="nav-link" id="profile-tab" data-bs-toggle="tab" data-bs-target="#profile" type="button" role="tab" aria-controls="profile" aria-selected="false">Profile</button>
          </a>
          </li>
          
        </ul>
        
        <!-- Tab panes -->
        <div class="tab-content">
          <div class="tab-pane" id="home" role="tabpanel" aria-labelledby="home-tab"> </div>
          <div class="tab-pane" id="profile" role="tabpanel" aria-labelledby="profile-tab">  </div>
          
        </div>
    </header>
    <main>
        <div class="container p-3 my-5">
            <div style="text-align: center;">
                <h1>Add ID Card</h1>
            </div>
            <form class="row justify-content-center align-items-center g-3 p-2 my-2"   action="ProfileServlet" method="post" enctype="multipart/form-data">
                <div class="col-sm-12 col-md-6">
                    <label for="name" class="form-label">Name :</label>
                    <input type="text" class="form-control" name="name" id="name" aria-describedby="helpId"
                        placeholder="Name" required>
                </div>
                <div class="col-sm-12 col-md-6">
                    <label for="rollNo" class="form-label">Roll NO :</label>
                    <input type="number" class="form-control" name="rollNo" id="rollNo" aria-describedby="helpId"
                        placeholder="Roll No" required>
                </div>
                <div class="col-sm-12 col-md-6">
                    <label for="className" class="form-label">Class :</label>
                    <input type="text" class="form-control" name="className" id="className" aria-describedby="helpId"
                        placeholder="Class Name" required>
                </div>
                <div class="col-sm-12 col-md-6">
                    <label for="division" class="form-label">Division :</label>
                    <input type="text" class="form-control" name="division" id="division" aria-describedby="helpId"
                        placeholder="Division" required>
                </div>
                <div class="col-sm-12 col-md-6">
                    <label for="dateOfBirth" class="form-label">Date of Birth</label>
                    <input type="date" class="form-control" name="dateOfBirth" id="dateOfBirth"
                        aria-describedby="helpId" placeholder="Date of Birth" required>
                </div>
                <div class="col-sm-12 col-md-6">
                    <label for="mobileNo" class="form-label">Mobile No :</label>
                    <input type="tel" class="form-control" name="mobileNo" id="mobileNo" aria-describedby="helpId"
                        placeholder="Mobile No" required>
                </div>
                <div class="col-sm-12 col-md-6">
                    <label for="address" class="form-label">Address :</label>
                    <textarea class="form-control" name="address" id="address" rows="3" required></textarea>
                </div>
                <div class="col-sm-12 col-md-6">
                    <label for="profilePhoto" class="form-label">Upload Photo</label>
                    <input type="file" class="form-control" name="profilePhoto" id="profilePhoto"
                        placeholder="Upload Photo" aria-describedby="fileHelpId" accept="image/*" required>
                </div>
               <input type="submit" value="Submit" class="btn btn-primary">
            </form>
        </div>

    </main>
    <footer>
        <!-- place footer here -->
    </footer>
    <!-- Bootstrap JavaScript Libraries -->
    <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.11.6/dist/umd/popper.min.js"
        integrity="sha384-oBqDVmMz9ATKxIep9tiCxS/Z9fNfEXiDAYTujMAeBAsjFuCZSmKbSSUnQlmh/jp3" crossorigin="anonymous">
        </script>

    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.1/dist/js/bootstrap.min.js"
        integrity="sha384-7VPbUDkoPSGFnVtYi0QogXtr74QeVeeIs99Qfg5YCF+TidwNdjvaKZX19NZ/e6oz" crossorigin="anonymous">
        </script>
</body>

</html>