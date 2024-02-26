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
<link rel="stylesheet" href="css/bootstrap.min.css">
<title>Insert title here</title>
</head>
<%-- <%String team=session.getAttribute("tlteam").toString(); %> --%>
<button onclick="history.back();" class="btn btn-outline-danger" style="float:right">Back</button>
<style>
body{
width:100%;

}
container{
width:70%;
}
</style>
<body >
<br>
<div class="container">
<div class="row">

<%
 String id=session.getAttribute("Sid").toString();
String eve=session.getAttribute("eventty").toString().toUpperCase();
String mail=session.getAttribute("Stumail").toString().toUpperCase();
String organ=session.getAttribute("organis").toString().toUpperCase();
 %>

       <%
       
       Connection con;
       
       
       con=Dbcon.create();
       PreparedStatement ps=con.prepareStatement("SELECT * FROM `collegeevent`.`freeapplyevent` where id='"+id+"' and eventname='"+eve+"'");
       PreparedStatement ps1=con.prepareStatement("SELECT * FROM `collegeevent`.`stureg` where  email='"+mail+"'");
       PreparedStatement ps2=con.prepareStatement("SELECT * FROM `collegeevent`.`freeevent` where Etype='"+eve.toLowerCase()+"' and organiser='"+organ+"'");
      
       ResultSet rs=ps.executeQuery();
       ResultSet rs1=ps1.executeQuery();
       ResultSet rs2=ps2.executeQuery();
       while(rs.next() && rs1.next() && rs2.next())
       {
    

    	
    	  
    	   
       %>
       
<div class="col-md-10"><br><br>
<div class="">
	

	  <div class="card-body">
		<center><p class="card-text"><strong><span style="color:blue; font-family:bold;"><h1><%= eve%>   EVENT</h1></span></strong></p></center><br>
	<center><p class="card-text"><strong><span style="color:blue; "><p>(Student Applied)</p></span></strong></p></center><br>
	

 </h1></br></br>
	  <div class="row">

                <div class="col-md-6 g-mb-30">
                  <div class="row">
                       <div class="col-sm-12 g-mb-30">
                      
                      <ul class="list-unstyled g-color-text">
                      <div class="col-md-3 g-mb-30">
        <h3 class="h6 g-font-weight-60 text-uppercase mb-0">Student Details:</h3>
    </div>
                      <li class="g-py-5">
                          <i class="align-middle mr-2 icon-science-143 u-line-icon-pro"></i>
                         Student Name: <span class="g-font-weight-500 g-color-lightred"><%=rs.getString(2).toUpperCase() %> <%=rs.getString(3).toUpperCase() %></span>
                        </li></br>
                        <li class="g-py-5">
                          <i class="align-middle mr-2 icon-science-143 u-line-icon-pro"></i>
                         Email: <span class="g-font-weight-500 g-color-lightred"><%=rs.getString(4)%></span>
                        </li></br>
                         <li class="g-py-5">
                          <i class="align-middle mr-2 icon-science-143 u-line-icon-pro"></i>
                         Mobile Number: <span class="g-font-weight-500 g-color-lightred"><%=rs1.getString(4)%></span>
                        </li></br>
                        <li class="g-py-5">
                          <i class="align-middle mr-2 icon-science-143 u-line-icon-pro"></i>
                         College: <span class="g-font-weight-500 g-color-lightred"><%=rs.getString(5)%></span>
                        </li></br>
                        <li class="g-py-5">
                          <i class="align-middle mr-2 icon-science-143 u-line-icon-pro"></i>
                         Degree: <span class="g-font-weight-500 g-color-lightred"><%=rs.getString(6)%></span>
                        </li></br>
                        <li class="g-py-5">
                          <i class="align-middle mr-2 icon-science-143 u-line-icon-pro"></i>
                        Department: <span class="g-font-weight-500 g-color-lightred"><%=rs.getString(7)%></span>
                        </li></br>
                         
                         <li class="g-py-5">
                          <i class="align-middle mr-2 icon-science-143 u-line-icon-pro"></i>
                         Roll Number: <span class="g-font-weight-500 g-color-lightred"><%=rs.getString(9)%></span>
                        </li></br>
                         <li class="g-py-5">
                          <i class="align-middle mr-2 icon-science-143 u-line-icon-pro"></i>
                         Gender: <span class="g-font-weight-500"><%=rs.getString(11) %></span></a>
                        </li></br>
                        <li class="g-py-5">
                          <i class="align-middle mr-2 icon-science-143 u-line-icon-pro"></i>
                         Date Of Birth: <span class="g-font-weight-500"><%=rs.getString(10) %></span></a>
                        </li></br>
<li class="g-py-5">
                          <i class="align-middle mr-2 icon-science-143 u-line-icon-pro"></i>
                        Admission Year: <span class="g-font-weight-500"><%=rs.getString(8) %></span></a>
                        </li></br>
                  

                      </ul>
                      <div class="col-lg-12 align-self-center g-mb-10">
<%-- <img width="640" height="360" class="img-fluid w-100 u-shadow-v21 rounded" src="/files/uploads/Untitled-1-2022032805.png" alt="<%=rs.getString(25)%>"> --%>          </div>
                    </div>
                  </div></br>


                <!--   <a class="d-inline-block g-brd-bottom--dashed g-brd-primary g-color-indigo g-color-primary--hover g-font-size-13 g-text-underline--none--hover g-pb-1" href="https://sites.google.com/view/velammal collegeofengineeringandtechnology">Visit Event Website</a>
                  <span class="g-color-text mx-3">|</span>
                  <a class="d-inline-block g-brd-bottom--dashed g-brd-primary g-color-lightred g-color-primary--hover g-font-size-13 g-text-underline--none--hover g-pb-1" href="https://docs.google.com/forms/d/e/1FAIpQLSdHwIcz4S9uivz6gLJ6s02lSKFJDtropDSzAt67HXOxwgcPdw/viewform">Register Now</a>
                --> </div>
                <div class="col-md-6 g-mb-30">
                  <div class="row">
                       <div class="col-sm-12 g-mb-30">

                      <ul class="list-unstyled g-color-text">
                     
                        <div class="col-md-3 g-mb-30">
        <h4 class="h6 g-font-weight-600 text-uppercase mb-0">Event Details:</h4>
    </div>
     <li class="g-py-5">
                          <i class="align-middle mr-2 icon-science-143 u-line-icon-pro"></i>
                         Event Name: <span class="g-font-weight-500"><%=rs.getString(16) %></span></a>
                        </li></br>
                        <li class="g-py-5">
                          <i class="align-middle mr-2 icon-science-143 u-line-icon-pro"></i>
                         Category: <span class="g-font-weight-500">Technical Symposium</span></a>
                        </li></br>
                        <li class="g-py-5">
                          <i class="align-middle mr-2 icon-science-143 u-line-icon-pro"></i>
                         Organiser: <span class="g-font-weight-500"><%=rs.getString(17) %></span></a>
                        </li></br>
                         <li class="g-py-5">
                          <i class="align-middle mr-2 icon-science-143 u-line-icon-pro"></i>
                         College: <span class="g-font-weight-500"><%=rs2.getString(4) %></span></a>
                        </li></br>
                        <li class="g-py-5">
                          <i class="align-middle mr-2 icon-science-123 u-line-icon-pro"></i>
                          City: <span class="g-font-weight-500"><%=rs2.getString(11) %></span></a>
                        </li></br>
                        <li class="g-py-5">
                          <i class="align-middle mr-2 icon-science-018 u-line-icon-pro"></i>
                         State: <a href="/college-fests/state/Tamil-Nadu" target="_blank"><span class="g-font-weight-500"><%=rs2.getString(12) %></span></a>
                        </li><br>
                        
                      </ul>
                    </div>
                  </div>

               
    </div>
</div>
<p>This application was successfully applied by <%=rs.getString(2) %> for <%=eve%> event...................</p>
    <%--<p class="card-text">Name : <%=rs.getString(2)%></p>
    <p class="card-text">Email :<%=rs.getString(3)%></p>
    <p class="card-text">Mobile :<%=rs.getString(4)%></p>
     <p class="card-text">Picture :<%=rs.getString(7)%></p>  --%>
          
    
     <center><a href="approved.jsp?id=<%=rs.getString(1)%>&&event=<%=eve%>"><button class="btn btn-primary">Approved</button></a></center>
      
    
      </div>
      </div>
      </div>

	<%}
       %>
	</div>
 </div>
</body>
</html>