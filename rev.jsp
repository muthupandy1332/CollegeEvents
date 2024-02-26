<html ng-app="ionicApp">
  <head>
    <meta charset="utf-8">
    <meta name="viewport" content="initial-scale=1, maximum-scale=1, user-scalable=no, width=device-width">
    
    <title>Rate Stras</title>

    <link href="//code.ionicframework.com/nightly/css/ionic.css" rel="stylesheet">
    <script src="//code.ionicframework.com/nightly/js/ionic.bundle.js"></script>
    <style>
    @import url('https://fonts.googleapis.com/css2?family=Acme&display=swap');
*{
    padding: 0; margin: 0;
    box-sizing: border-box;
    font-family: 'Acme', sans-serif;
    user-select: none;
}
.content{
    display: flex;
    align-items: center;
    justify-content: center;
    background-color: gold;
    width: 100%; min-height: 100vh;
}
.container{
    background-color: white;
    display: flex;
    flex-direction: column;
    width: 350px;
    height: 400px;
    justify-content: space-evenly;
    border-radius: 10px;
    box-shadow: 0 0 10px 10px rgba(0,0,0,0.2);
}
.mid{
    display: flex;
    flex-wrap: wrap;
    justify-content: space-evenly;
}
.head, .mid, .textarea, .end{
    padding: 15px;
}
img{
    height: 50px; width: 50px;
    cursor: pointer;
    background-color: rgba(233, 212, 97, 0.507);
    border-radius: 50%;
    transition: 0.1s linear;
}
img:hover{
    background-color: gold;
    transform: scale(1.2);
}
.active{
  background-color: gold;
    transform: scale(1.2);
}
.head{
    display: flex;
    justify-content: space-between;
    align-items: center;
}
.heading{
    width: 70%;
}
.heading h1{
    font-size: 25px;
    border-bottom: 8px solid gold;
    font-weight: bolder;
}
.close{
    display: flex;
    justify-content: space-between;
    cursor: pointer;
    transition: 0.1s linear;
    padding: 0 10px;
}
.close:hover{
    transform: scale(1.2);
}
.s{
    width: 1.5px; height: 20px;
    background-color: black;
    border-radius: 100px;
}
.s1{
    transform: translateX(1.5px) rotate(45deg);
}
.s2{
    transform: rotate(-45deg);
}
.textarea{
    display: flex;
    flex-direction: column;
    justify-content: space-evenly;
}
.textarea p{
    font-size: 18px;
}
textarea{
    outline: none;
    resize: none;
    height: 100px;
    border: 1.5px solid black;
    border-radius: 10px;
    padding: 5px;
}
.end{
    display: flex;
    justify-content: space-evenly;
    align-items: center;
}
.btn{
    width: 150px;
    height: 35px;
    border: 1px solid black;
    cursor: pointer;
    background-color: transparent;
    font-size: 15px;
}
.sub{
    background: gold;
    border: 1px solid transparent;
    transition: 0.1s linear;
}
.skp{
    transition: 0.1s linear;
    border: 1px solid black;
}
.skp:hover{
    background-color: black;
    color: white;
}
.sub:hover{
    background-color: black;
    border: 1px solid black;
    color: white;
}
    </style>
  </head>
  <body>
    <div class="content">
        <div class="container">
            <div class="head">
                <div class="heading"><h1>Share your experience</h1></div>
                <div class="close">
                    <div class="s s1"></div>
                    <div class="s s2"></div>
                </div>
            </div>
            <div class="mid">
                <div class="media"><img src="https://cdn-icons-png.flaticon.com/128/3260/3260838.png" name="rat" value="angry" alt="angry" id="1"  class="" onclick="myFunction()"></div>
                <div class="media"><img src="https://cdn-icons-png.flaticon.com/128/42/42901.png" name="rat" value="moderate"  alt="moderate" id="2" class="" onclick="myFunctio()"></div>
                <div class="media"><img src="https://cdn-icons-png.flaticon.com/128/3260/3260877.png" name="rat" value="neutral"  alt="neutral" id="3" class="" onclick="myFuncti()"></div>
                <div class="media"><img src="https://cdn-icons-png.flaticon.com/128/569/569501.png" name="rat" value="smile"  alt="smile" id="4" class="" onclick="myFunct()"></div>
                <div class="media"><img src="https://cdn-icons-png.flaticon.com/128/1356/1356639.png" name="rat" value="happy"  alt="happy" id="5" class="" onclick="myFunc()"></div>
            </div>
            <div class="textarea">
                <p>Share your experience</p>
                <textarea name="exp" id="exp" placeholder="Let we know..."></textarea>
            </div>
             <input type="hidden" name="rate" id="val" placeholder="Let we know..."></textarea>
             
            </div>
            <div class="end">
                <div class="submission">
                    <button class="sub btn">Send</button>
                </div>
                <div class="skip">
                    <button class="skp btn" onclick="reload()">Skip</button>
                </div>
            </div>
        </div>
    </div>
  </body>
</html>
<script>
function myFunction() {
  const element = document.getElementById("1");
  
  if (element.className == "") {
    element.className = "active";
  } else {
    element.className = "";
  }
}
function myFunctio() {
	  const element = document.getElementById("2");
	  
	  if (element.className == "") {
	    element.className = "active";
	  } else {
	    element.className = "";
	  }
	}
	 
function myFuncti() {
	  const element = document.getElementById("3");
	  
	  if (element.className == "") {
	    element.className = "active";
	  } else {
	    element.className = "";
	  }
	}
	 
function myFunct() {
	  const element = document.getElementById("4");
	  
	  if (element.className == "") {
	    element.className = "active";
	  } else {
	    element.className = "";
	  }
	}
	 
function myFunc() {
	  const element = document.getElementById("5");
	  
	  if (element.className == "") {
	    element.className = "active";
	  } else {
	    element.className = "";
	  }
	}
	 
 
</script>
