<!DOCTYPE html>
<html>
    <head lang="en">
        <meta charset="utf-8">
        <meta name="description" content="Free Web tutorials">
        <meta name="keywords" content="HTML, CSS, XML, JavaScript"> <!-- i dont know -->
        <meta name="author" content="Mohamed Essam">
   <!-- <meta http-equiv="refresh" content="30"> --> <!-- make refresh to the page -->
        <link rel="stylesheet" href="https://necolas.github.io/normalize.css/8.0.1/normalize.css">
        <link rel="stylesheet" href="Untitled-3.css">
    </head>
    <style>* {
    box-sizing: border-box
}
body {
    background: #282229;
}
.container {
    width: 80px;
    height: 20px;
    background-color: #f1f3f4;
    margin: -600px auto ;
    padding: 25px;
    overflow: hidden;
    position: relative;
}
h1 {
    text-align: center;
    font-size: 30px;
}
h1:hover {
    font-family: fantasy;
}
.input-one {
    width: 450px;
    margin: 10px 0;
    height: 50px;
    padding: 10px;
    display: none;
    border-radius: 5px;
    border: 0px;
    
}
.input-three {
    display: none;
}

button  {
    background: #f1f3f4;
    border: 1px solid #282229;
    color: #282229;
    width: 215px;
    height: 38px;
    font-size: 29px;
    margin-left: 25%;
    display: none;
    
}
button:hover {
    color: #94a0a7;
}
span {
    display: none;
}
p {
    display: none;
}</style>
    <body>
        <div class="container">
            <div class="div-one" style="height: 25%"><br>
                <h1>Login Form</h1><br><hr>
            </div>
            <form action="Adminlogin" method="post">
            <div class="div-two" style="height: 65%"><form>
                <input class="input-one" type="text" name="email" placeholder="Username" required>
                <input class="input-one" type="password" name="pass" placeholder="Password" required><br>
                <input class="input-three" type="checkbox"><span>Remember me?</span><br><br>
                <br><button style="border-radius:20px">Login</button></form>
            </div>
            </form>
            <div class="div-three" style="height: 10%">
                
               
            </div>
        </div>
        
        <script src="https://code.jquery.com/jquery-3.3.1.min.js"></script>
        <script src="Untitled-2.js"></script>
    </body>
</html>
<script>
/*eslint-env browser*/
/*global console, alert, prompt, $,*/


$(document).ready(function () {
    "use strict";
    $(".container")
        .animate({margin: "100px auto"}, 1500)
        .animate({width: "500px"}, 1500)
        .animate({height: "600px"}, 1500, function () {
            $(".input-one").fadeIn(1000);
            $(".input-three").fadeIn(1000);
            $("button").fadeIn(1000);
            $("span").fadeIn(1000);
        })
        .animate({borderRadius: "10px"}, 1500, function () {
            $("p").slideToggle(1000);
        });
    
    $("h1").mouseenter(function () {
        $(this).animate({fontSize: "40px"}, 1000);
    });
    $("h1").mouseleave(function () {
        $(this).animate({fontSize: "30px"}, 1000);
    });
    
    
});</script>