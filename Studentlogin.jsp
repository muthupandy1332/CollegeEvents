<!DOCTYPE html>
<html>
	<head>
		<meta charset="utf-8">
		<title>RegistrationForm_v1 by Colorlib</title>
		<meta name="viewport" content="width=device-width, initial-scale=1.0">
		
		<!-- MATERIAL DESIGN ICONIC FONT -->
		<link rel="stylesheet" href="fonts/material-design-iconic-font/css/material-design-iconic-font.min.css">

		<!-- STYLE CSS -->
		<link rel="stylesheet" href="css/style.css">
	</head>
<style>
a{
text-decoration:none;
color:black;
}
</style>
	<body>

		<div class="wrapper" style="background-color:black;">
			<div class="inner">
				<div class="image-holder">
					<img src="image/19.jpeg" style= "margin:20px; width:300px; height:300px;" alt="">
				</div>
				<form action="Studentlogin" method="post">
				
					<h3>STUDENT LOGIN !!</h3>
					
					<div class="form-wrapper">
						<input type="text" placeholder="College Name" name="college" class="form-control">
						<i class="zmdi zmdi-star zmdi-hc-fw"></i>
					</div>
				
					<div class="form-wrapper">
						<input type="email" placeholder="User Name" name="email" class="form-control">
						<i class="zmdi zmdi-star zmdi-hc-fw"></i>
					</div>
					
					<div class="form-wrapper">
						<input type="password" placeholder="Password" name="password" class="form-control">
						<i class="zmdi zmdi-lock"></i>
					</div>
					
					<button>Login
						<i class="zmdi zmdi-arrow-right"></i>
					</button><br>
					<center>
					<a href="studentreg.jsp">New Student Register Here</a>
					</center>
				</form>
			</div>
		</div>
		
	</body><!-- This templates was made by Colorlib (https://colorlib.com) -->
</html>