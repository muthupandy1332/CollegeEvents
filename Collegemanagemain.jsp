<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<style>
* {
  margin: 0;
  padding: 0;
}

body {
background-image:url("image/3.jpg");
background-size:100%,100%;
  background-color: gray;
}
dd {
  display: flex;
  align-items: center;
  justify-content: center;
  height: 100vh;
  padding: 10px;
}

a {
  text-decoration: none;
}

.hamburger {
  display: flex;
  flex-direction: column;
  height: 25px;
  justify-content: space-between;
  margin: 1em 1em;
  z-index: 3;
}

.hamburger:hover {
  cursor: pointer;
}

.nav-bar {
  width: 32px;
  height: 3px;
  background-color: black;
  transition: 500ms ease-in-out all;
}

.nav-container {
  width: 100%;
  height:40%;
  display: flex;
  justify-content: flex-end;
}
.dropdown {
  top: -300px;
  position: absolute;
  height: 50%;
  width: 100%;
  background-color: #2d2929;
  transition: 500ms ease-in-out all;
  display: flex;
  flex-direction: column;
  align-items: center;
  justify-content: center;
  border-bottom: 1px solid white;
}

.dropdown p {
  font-size: 1.6em;
  font-family: "Urbanist", sans-serif;
  color: white;
  margin: 0.6em 0;
  border-bottom: 1px solid transparent;
  padding: 0 1.2em; /* adjust padding to make the underline longer or shorter */
  padding-bottom: 4px; /* this padding can be used to adjust the distance from text to underlink */
  transition: 200ms ease all;
}

.dropdown p:hover {
  cursor: pointer;
  border-bottom: 1px solid white;
}

.dropdown-active {
  top: 0;
}

.one-active {
  background-color: #6f63ff;
  transform: translateY(13px) rotate(45deg);
}

.two-active {
  display: none;
}

.three-active {
  background-color: #6f63ff;
  transform: translateY(-9px) rotate(135deg);
}

</style>
<body>
<nav class="nav-container">
  <div class="hamburger">
    <div class="nav-bar one"></div>
    <div class="nav-bar two"></div>
    <div class="nav-bar three"></div>
    <div class="nav-bar four"></div>
    <div class="nav-bar five"></div>
  </div>
  <div class="dropdown">
    <a href="Eventss.jsp?name=Free">
      <p class="drop-item">Free Event</p>
    </a>
    <a href="Eventss.jsp?name=Limit">
      <p class="drop-item">Limit Event</p>
    </a>
    <a href="Eventss.jsp?name=Cost">
      <p class="drop-item">Cost Event</p>
    </a>
    <a href="applyview.jsp">
      <p class="drop-item">Students Applied</p>
    </a>
    <a href="approvedlistview.jsp">
      <p class="drop-item">Students Approved List</p>
    </a>
    <dd>
    <div role="group" class="dropdown btn-group"><button id="dropdown-variants-Primary" aria-expanded="false" type="button" class="dropdown-toggle btn btn-warning btn-lg" data-bs-toggle="dropdown">Warning Drop</button>
  <ul class="dropdown-menu" aria-labelledby="dropdownMenuButton1">
    <li><a class="dropdown-item" href="#">Item 1</a></li>
    <li><a class="dropdown-item" href="#">Item 2</a></li>
    <li><a class="dropdown-item" href="#">Item 3</a></li>
  </ul>
</div></dd>
  </div>
</nav>
</body>
</html>
<script>
const hamburger = document.querySelector(".hamburger");

function onDropClick(e) {
  const dropdown = e.currentTarget.nextElementSibling;
  const burgerBars = [].slice.call(e.currentTarget.children);

  if (!dropdown.classList.contains("dropdown-active")) {
    //If dropdown isn't active give it and the bars their active classes
    dropdown.classList.add("dropdown-active");
    burgerBars[0].classList.add("one-active");
    burgerBars[1].classList.add("two-active");
    burgerBars[2].classList.add("three-active");
  } else if (dropdown.classList.contains("dropdown-active")) {
    //else remove them
    dropdown.classList.remove("dropdown-active");
    burgerBars[0].classList.remove("one-active");
    burgerBars[1].classList.remove("two-active");
    burgerBars[2].classList.remove("three-active");
  }
}

hamburger.addEventListener("click", onDropClick);
</script>