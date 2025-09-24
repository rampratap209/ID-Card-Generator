<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Logout</title>
    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
    <!-- Font Awesome Icons -->
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.3/css/all.min.css">
    <style>
        body {
            background: linear-gradient(to left, #bdc3c7, #2c3e50);
            
        }
        .card{
            margin-top: 200px;
            margin-bottom: 200px;
            margin-left: 35%;
            border-radius:10px;
        }

        .container-1 {
            
            text-align: center;
        }

        .checkmark-circle {
            width: 70px;
            height: 70px;
            border-radius: 50%;
            border: 3px solid #28a745;
            display: inline-flex;
            justify-content: center;
            align-items: center;
            margin-bottom: 30px;
            animation: checkmark-circle-animation 0.5s ease-in-out;
        }

        .checkmark-circle i {
            color: #28a745;
            font-size: 40px;
        }

        .message {
            font-size: 20px;
            font-weight: bold;
            margin-bottom: 30px;
        }

        #btn {
            background-color: #007bff;
            color: white;
            border: none;
            border-radius: 5px;
            padding: 10px 20px;
            cursor: pointer;
            font-size: 14px;
        }

        #btn:hover {
            background-color: black;
        }
    </style>
</head>

<body>
    <form action="LoginForm.jsp" method="post">
        <div class="card col-4">
            <div class="card-body">
                <div class="container-1">
                    <div class="checkmark-circle">
                        <i class="fas fa-check"></i>
                    </div>

                    <div class="message">Reset Password Successfully</div>
                    <button type="submit" id="btn" hidden></button>
                </div>
            </div>
        </div>
    </form>
    <!-- Font Awesome Icons -->
    <script src="https://kit.fontawesome.com/your-font-awesome-kit.js" crossorigin="anonymous"></script>

</body>
<script>
    document.addEventListener('DOMContentLoaded', function () {
        setTimeout(function () {
            document.getElementById('btn').click();
        }, 1100);
    });
</script>

</html>