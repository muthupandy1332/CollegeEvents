<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@page import="Dbcon.Dbcon"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement" %>
<%@page import="java.sql.*" %>
<%@page import="java.util.*" %>
<%@page import="java.io.FileInputStream" %>
<%@page import="java.io.IOException" %>
<%@page import="java.io.PrintWriter" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
<link rel="stylesheet" href="css/bootstrap.min.css">

<style>

ul {
  list-style-type: none;
  margin: 0;
  padding: 0;
  overflow: hidden;
   background: linear-gradient(to left, #db4914 0%, #0af574 100%);
}

li {
  float: right;
  padding-right:105px;
}

li a {
  display: block;
  color: white;
  text-align: center;
  text-style:bold;
  padding: 14px 16px;

  text-decoration: none;
}

body {
  background-image: url("bg/w.jpg");
  background-repeat: no-repeat; 
  background-size: cover;
}

</style>


</head>
<%
       
       Connection con;
       
       
       con=Dbcon.create();
       PreparedStatement ps=con.prepareStatement("SELECT count(*) FROM `collegeevent`.`stureg` where status='' ");
       PreparedStatement ps1=con.prepareStatement("SELECT count(*) FROM `collegeevent`.`colmanreg` where status='' ");
       PreparedStatement ps2=con.prepareStatement("SELECT count(*) FROM `collegeevent`.`freeevent` where status='Not Approved' ");

       
       ResultSet rs=ps.executeQuery();
       ResultSet rs1=ps1.executeQuery();
     ResultSet rs2=ps2.executeQuery();
       while(rs.next()&&rs1.next()&&rs2.next())
       {
    
    	 int count=rs.getInt(1);
    	 int count1=rs1.getInt(1);
    	 int count2=rs2.getInt(1);
       


%>
       
<body>

<ul>

<li><a href="homepage.jsp">Logout</a></li>
<!-- <li><a href="response.jsp">Response</a></li> -->
<li><a href="eventsapprovedbyadmin.jsp">Events Approve(<%=count2 %>)</a></li>
<li><a href="studentdetails.jsp">Student Details(<%=count %>)</a></li>
  <li><a href="collegedetails.jsp">College Details(<%=count1 %>)</a></li>
        
</ul>

</body>
<%}
       %>
</html> 