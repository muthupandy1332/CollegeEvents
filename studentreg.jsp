<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
<link rel="stylesheet" href="css/style.css">
<style>
@import url(https://fonts.googleapis.com/css?family=Exo:100,200,400);
@import url(https://fonts.googleapis.com/css?family=Source+Sans+Pro:700,400,300);

body{
	margin: 0;
	padding: 0;
	background: #fff;

	color: #fff;
	font-family: Arial;
	font-size: 12px;
}

.body{
	position: absolute;
	top: -20px;
	left: -20px;
	right: -40px;
	bottom: -40px;
	width: auto;
	height: auto;
	background-image: url(http://ginva.com/wp-content/uploads/2012/07/city-skyline-wallpapers-008.jpg);
	background-size: cover;
	-webkit-filter: blur(5px);
	z-index: 0;
}

.grad{
	position: absolute;
	top: -20px;
	left: -20px;
	right: -40px;
	bottom: -40px;
	width: auto;
	height: auto;
	    background: -webkit-gradient(linear, left top, left bottom, color-stop(0%,rgb(135 97 27 / 92%)), color-stop(100%,rgb(28 63 191)));
	z-index: 1;
	opacity: 0.7;
}

.header{
	position: absolute;
	top: calc(50% - 35px);
	left: calc(50% - 255px);
	z-index: 2;
}

.header div{
	float: left;
	color: #fff;
	font-family: 'Exo', sans-serif;
	font-size: 35px;
	font-weight: 200;
}

.header div span{
	color: #86f1e7f2 !important;
	margin-right:200px;
}

.login{
	position: absolute;
	top: calc(30% - 75px);
	left: calc(50% - 50px);
	height: 100px;
	width: 350px;
	padding: 5px;
	z-index: 2;
}
.login textarea,input[type=text]{
	width: 250px;
	height: 40px;
	background: transparent;
	border: 1px solid rgba(255,255,255,0.6);
	border-radius: 2px;
	color: #fff;
	font-family: 'Exo', sans-serif;
	font-size: 16px;
	font-weight: 400;
	padding: 4px;
}

.login input[type=email]{
	width: 250px;
	height: 30px;
	background: transparent;
	border: 1px solid rgba(255,255,255,0.6);
	border-radius: 2px;
	color: #fff;
	font-family: 'Exo', sans-serif;
	font-size: 16px;
	font-weight: 400;
	padding: 4px;
}

.login input[type=password],input[type=file]{
	width: 250px;
	height: 30px;
	background: transparent;
	border: 1px solid rgba(255,255,255,0.6);
	border-radius: 2px;
	color: #fff;
	font-family: 'Exo', sans-serif;
	font-size: 16px;
	font-weight: 400;
	padding: 4px;
	margin-top: 10px;
}

.login input[type=submit]{
	width: 260px;
	height: 35px;
	background: #fff;
	border: 1px solid #fff;
	cursor: pointer;
	border-radius: 2px;
	color: #a18d6c;
	font-family: 'Exo', sans-serif;
	font-size: 16px;
	font-weight: 400;
	padding: 6px;
	margin-top: 10px;
}

.login input[type=submit]:hover{
	opacity: 0.8;
}

.login textarea, input[type=submit]:active{
	opacity: 0.8;
}

.login textarea,input[type=text]:focus{
	outline: none;
	border: 1px solid rgba(255,255,255,0.9);
}

.login input[type=password]:focus{
	outline: none;
	border: 1px solid rgba(255,255,255,0.9);
}

.login input[type=submit]:focus{
	outline: none;
}

::-webkit-input-placeholder{
   color: rgba(255,255,255,0.6);
}

::-moz-input-placeholder{
   color: rgba(255,255,255,0.6);
}
</style>
</head>

<body>

<center>

<form action="Studentreg" method="post" >
<div class="body"></div>
		<div class="grad"></div>
		<div class="header">
			<div ><span >Register</span></div>
		</div>
		<br>
			<div class="login">
<input type="text" name="username" placeholder="STUDENT NAME "><br><br>
<input type="text" name="college" placeholder="STUDENT COLLEGE "><br><br>

<!-- <textarea type="text" name="caddress" placeholder="COMPANY ADDRESS" style="heigth:20px;"></textarea><br><br> -->
<input type="email" name="email" placeholder="STUDENT EMAIL" ><br><br>
<input type="text" name="phoneno" placeholder=" CONTACT NUMBER" ><br><br>

<input type="password" name="password1" placeholder="PASSWORD" id="password1" ><br><br>

<input type="password" name="password2" placeholder="CONFIRM PASSWARD" id="password2" onchange="validatepassword()"><br><br>
<!-- <lable> Company id proff</lable><br> -->
<!-- <input type="file" name="filename"   ><br><br> -->
<input type="submit" value="Submit">

</div>




</form>
</center>
</body>
                        <script>
				/* window.onload = function () {
					document.getElementById("password1").onchange = validatePassword;
					document.getElementById("password2").onchange = validatePassword;
				} */

				function validatePassword() {
					var pass2 = document.getElementById("password2").value;
					var pass1 = document.getElementById("password1").value;
					if (pass1 != pass2)
						document.getElementById("password2").setCustomValidity("Password Doesn't Match");
					else
						document.getElementById("password2").setCustomValidity('');
					//empty string means no validation error
				}
			</script>
</html>