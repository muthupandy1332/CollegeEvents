<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>

<link rel="stylesheet" href="css/bootstrap.min.css">
 <%
 String mail=session.getAttribute("smail").toString();
 
 String b[]=mail.split("@gmail.com");
  String c="";
  for(String k:b){
	c=c+k;}
	
	
 
 %>
</head>
<style>
@import url('https://fonts.googleapis.com/css2?family=Work+Sans:wght@200;300;400;500;600;700;800&display=swap');

* {
    box-sizing: border-box;
    padding: 0;
    font-family: 'Work Sans', sans-serif;
}

header {
    background-color: white;
    height: 64px;
    display: flex;
    justify-content: space-between;
    padding: 0 40px;
}

.logo-container {
    width: 400px;
    height: 64px;
    display: flex;
    justify-content: space-around;
    align-items: center;
    padding: 0 12px;
}

.menu-container {
    background-color: white;
    width: 64px;
    height: 64px;
    display: flex;
    justify-content: center;
    align-items: center;
    position: relative;
}

.menu-icon {
    display: flex;
    flex-direction: column;
    height: 64px;
    width: 100%;
    justify-content: center;
    align-items: flex-end;
    padding-right: 17px;
    cursor: pointer;
}

.line {
    width: 30px;
    height: 2px;
    background-color: black;
}

.line2 {
    width: 20px;
    height: 2px;
    background-color: black;
    margin: 5px 0;
    transition-duration: 0.5s;
}

.menu-icon:hover .line2 {
    width: 30px;
}

#menu-nav {
    display: none;
}

#menu-nav::before {
    content: '';
    position: absolute;
    top: -20px;
    right: 22.5px;
    border: 10px solid transparent;
    border-bottom: 10px solid black;
}

.menu-icon:hover #menu-nav {
    background-color: black;
    position: absolute;
    top: 100%;
    right: 0;
    width: 200px;
    display: grid;
    align-content: center;
}

.menu-list a {
    padding: 15px 0 15px 15px;
    text-decoration: none;
    color: white;
    border-bottom: 1px solid #ececec;
    font-size: 0.95rem;
    font-weight: 500;
    transition: 0.5s;
}

.menu-list a:nth-child(4) {
    border-bottom: none;
}

.menu-list a:hover {
    padding-left: 30px;
}

.hero {
    height: calc(100vh - 65px);
    background-image: url(https://images.unsplash.com/photo-1478515463067-d20f52aace26?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=774&q=80);
    background-repeat: no-repeat;
    background-size: cover;
    background-position: center;
    display: flex;
    justify-content: center;
    text-align: center;
}

.hero-txt {
    
}

.hero h1 {
    font-size: 1.8rem;
    font-weight: 800;
  margin-top: 80px;
  line-height: 50px;
}
</style>



<body>

 <header>
      <div class="logo-container">
        <h3>STUDENT EVENTS PAGE</h3>
      </div>
      <div class="menu-container">
        <div class="menu-icon">
          <div class="line"></div>
          <div class="line2"></div>
          <div class="line"></div>
          
          <div class="menu-list">
            <nav id="menu-nav">
              <a href="listofevents.jsp?name=Free">Free  Event</a>
              <a href="listofevents.jsp?name=Limit">Limitation Event</a>
              <a href="listofevents.jsp?name=Cost">Paid Event</a>
              <a href="appliedeventview.jsp">Applied Event Details</a>
               <a href="acceptedview.jsp">Applied Events Status</a>
            </nav>
          </div>
        </div>
      </div>
    </header>

<section class="hero">
      <div class="hero-txt">
        <h1>WELCOME  <%=c.toUpperCase() %></h1>
      </div>
    </section>

</body>
</html>