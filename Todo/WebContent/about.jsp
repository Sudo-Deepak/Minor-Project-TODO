<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>About Me</title>
<style>
body {
	font-family: Arial, Helvetica, sans-serif;
	margin: 0;
}

html {
	box-sizing: border-box;
}

*, *:before, *:after {
	box-sizing: inherit;
}

.column {
	float: center;
	width: 33.3%;
	margin-bottom: 16px;
	padding: 0 8px;
}

.card {
	box-shadow: 0 4px 8px 0 rgba(0, 0, 0, 0.2);
	margin: 8px;
}

.about-section {
	padding: 50px;
	text-align: center;
	background-color: #474e5d;
	color: white;
}

.container {
	padding: 0 16px;
}

.container::after, .row::after {
	content: "";
	clear: both;
	display: table;
}

.title {
	color: grey;
}

.button {
	border: none;
	outline: 0;
	display: inline-block;
	padding: 8px;
	color: white;
	background-color: #000;
	text-align: center;
	cursor: pointer;
	width: 100%;
}

.button:hover {
	background-color: #555;
}

@media screen and (max-width: 650px) {
	.column {
		width: 100%;
		display: block;
	}
}
</style>
</head>
<body>

	<div class="about-section">
		<h1>About Me</h1>
	</div>


	<div class="row">
		<div >
			<div class="card">
				<img src="Professional_Photo.jpg" alt="Deepak Prajapati"
					style="width: 100%; height:100%"/>
				<div class="container">
					<h2>Deepak Prajapati</h2>
					<p class="title">Associate Software Engineer</p>
					<p>Hi, I am Deepak, an Associate Software Engineer Intern at
						Coditas. I love writing code, I believe in the power of
						programming to transform and improve the lives of people around
						the world. Interested in Full Stack Development, always ready to
						explore new place as well as new things.</p>
					<p>Email : deepak.kumar@coditas.com</p>
					<p>Contact No :- 9546579738</p>
					
				</div>
			</div>
		</div>
	</div>
</body>
</html>