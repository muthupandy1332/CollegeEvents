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
</head>
<Style>
p{
Color:red;
text-align:center;}
body{
background-image:url("bg/q.jpg");
  background-attachment: fixed;
}


</Style>
<button type="button" class="btn btn-outline-primary"  style="float:right"><a href="Adminmain.jsp"> Back </a></button><br><br>
<body>


<div class="container">
             <p>APPOINTED HERE!! </p>
  <table class="table  table-striped table-dark" style="opacity:0.9;">
    <thead>
      <tr>
      <th>Your ID</th>
        <th>Your Name</th>
        <th>Your Email</th>
  
        <th>College</th>
         <th>Event start Date	</th>
        <th>Organised By</th>
                <th>Event Type</th>
               <th>Event Name</th>
        
       
                <th>Status</th>
                        <th>Remark</th>
                
        
       
       
      </tr>
    </thead>
     <%
       
       Connection con;
       
       
       con=Dbcon.create();
       PreparedStatement ps=con.prepareStatement("SELECT * FROM `collegeevent`.`freeevent` where  status='Not Approved'  ");
       
       
       ResultSet rs=ps.executeQuery();
       
       while(rs.next())
       {
    
    	 
   
    	
    	String image=rs.getString(9);
    	  String id=rs.getString(1);
    	  String mail=rs.getString(1);
    	   System.out.println(id);
       %>
    <tbody>
      <tr>
      <td><%=rs.getString(1)%></td>
        <td><%=rs.getString(2)%></td>
        <td><%=rs.getString(4)%></td>
        <td><%=rs.getString(5)%></td>
      
        <td><%=rs.getString(18)%></td>
        <td><%=rs.getString(17)%></td>
         <td><%=rs.getString(15)%></td>
                  <td><%=rs.getString(24)%></td>
         
                <td><%=rs.getString(27)%></td>
                
               <% HttpSession sess=request.getSession();
        		sess.setAttribute("Sdi", id);
        		
        		
        		sess.setAttribute("eveny",rs.getString(24)); 
        		%> 
       
        	  <%-- <td><img class="card-img-top" src="product/<%=image %>" width="40" height="50" alt="Card image cap"></td> --%>
        <td><a href="admineventapprove.jsp?"><button class="btn btn-primary">View More Details</button></a>
      </tr>
    </tbody>
    	<%} %>
  </table>
</div>
</body>
</html>