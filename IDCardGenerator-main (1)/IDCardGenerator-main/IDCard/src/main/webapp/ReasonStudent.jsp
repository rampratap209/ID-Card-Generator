<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!doctype html>
<html lang="en">

<head>
  <title>Reason Form</title>
  <!-- Required meta tags -->
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

  <!-- Bootstrap CSS v5.2.1 -->
  <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.1/dist/css/bootstrap.min.css" rel="stylesheet"
    integrity="sha384-iYQeCzEYFbKjA/T2uDLTpkwGzCiq6soy8tYaI1GyVh/UjpbCx/TYkiZhlZB6+fzT" crossorigin="anonymous">
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
</style>
</head>

<body>
  <header>
    <!-- place navbar here -->
  </header>
  <main>
    <form action="ReasonIDServlet" method="post" >
    <div class="container">
		<div class="row justify-content-center">
			<div class="col-md-10">
				<div class="table-container">
					<h2 class="text-center">Reprinting Reason</h2>
					<div class="table-responsive">
						<div class="mb-3">
                          <label for="reason" class="form-label">Reason For Reprinting !</label>
                          <textarea class="form-control" name="reason" id="reason" rows="3" placeholder="Why Do You Want To Reprint Your ID Card ?"></textarea>
                        </div>
                        <div style="text-align: center;">
                        <input type="submit" value="submit and Reprint" class="btn btn-primary">
                    </div>
					</div>
				</div>
			</div>
		</div>
	</div>
</form>
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