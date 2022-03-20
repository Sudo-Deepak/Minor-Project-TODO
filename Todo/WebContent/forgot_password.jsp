<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Forgot Password</title>
<link
	href="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/css/bootstrap.min.css"
	rel="stylesheet" id="bootstrap-css">
<script
	src="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/js/bootstrap.min.js"></script>
<script
	src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>

<style>
.pass_show {
	position: relative
}

.pass_show .ptxt {
	position: absolute;
	top: 50%;
	right: 10px;
	z-index: 1;
	color: #f36c01;
	margin-top: -10px;
	cursor: pointer;
	transition: .3s ease all;
}

.pass_show .ptxt:hover {
	color: #333333;
}
</style>
</head>
<body>

	<div class="container">
		<div class="row">
			<div class="col-sm-4">
				<form action="<%=request.getContextPath()%>/forgot_password">

					<label>Username</label>
					<div class="form-group pass_show">
						<input type="text" class="form-control" placeholder="Username"
							name="username" required>
					</div>
					<label>New Password</label>
					<div class="form-group pass_show">
						<input type="password" class="form-control"
							placeholder="New Password" name="new_password" required>
					</div>
					<label>Confirm Password</label>
					<div class="form-group pass_show">
						<input type="password" class="form-control"
							placeholder="Confirm Password" name="cnf_password" required>
					</div>

					<input type="submit" value="Submit"> &nbsp; <a
						href="<%=request.getContextPath()%>/login">Login Page</a>

				</form>


			</div>
		</div>
	</div>
</body>

<script>
	$(document).ready(function() {
		$('.pass_show').append('<span class="ptxt">Show</span>');
	});

	$(document).on('click', '.pass_show .ptxt', function() {

		$(this).text($(this).text() == "Show" ? "Hide" : "Show");

		$(this).prev().attr('type', function(index, attr) {
			return attr == 'password' ? 'text' : 'password';
		});

	});
</script>
</html>