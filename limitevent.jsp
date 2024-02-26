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
 String mail=session.getAttribute("smail").toString();
String id=session.getAttribute("fid").toString();

 String b[]=mail.split("@gmail.com");
  String c="";
  for(String k:b){
	c=c+k;}
  
	
 
 %>

       <%
       
       Connection con;
       
       
       con=Dbcon.create();
       PreparedStatement ps=con.prepareStatement("SELECT * FROM `collegeevent`.`freeevent` where Etype='limit' and id='"+id+"'");
       
       ResultSet rs=ps.executeQuery();
       
       while(rs.next())
       {
    
 
    	String image=rs.getString(23);
    	System.out.println(image);
    	  
    	   
       %>
       
<div class="col-md-10"><br><br>
<div class="">
	

	  <div class="card-body">
		<center><p class="card-text"><strong><span style="color:blue; font-family:bold;"><h1><%=rs.getString(24).toUpperCase()%>   EVENT</h1></span></strong></p></center><br>
	<div class="hero-txt">
        <h6>Dear  <%=   c %>, welcome to technical or Non-Technical Event of  <%=rs.getString(3)%>.We are really happy to invite you...... </h6><br>
      </div>
	<center>  <p class="card-text"><img class="card-img-top" src="product/<%=image %>" width="50%" height="250" alt="Card image cap"></p>
	</center> 
	</br><h1 class="h5 d-inline-block g-font-weight-600 mb-0">
<%=rs.getString(25)%>, <%=rs.getString(3)%>,Technical Symposium, <%=rs.getString(11) %>,<%=rs.getString(12) %>, (<%=rs.getString(8) %>) to (<%=rs.getString(9) %>)

 </h1></br></br>
 
 <%HttpSession ses=request.getSession();
 ses.setAttribute("car",rs.getString(1));%>
	  <div class="row">

                <div class="col-md-6 g-mb-30">
                  <div class="row">
                       <div class="col-sm-12 g-mb-30">
                      
                      <ul class="list-unstyled g-color-text">
                        <li class="g-py-5">
                          <i class="align-middle mr-2 icon-science-143 u-line-icon-pro"></i>
                         Category: <span class="g-font-weight-500 g-color-lightred">Technical Symposium</span>
                        </li></br>
                        <li class="g-py-5">
                          <i class="align-middle mr-2 icon-science-123 u-line-icon-pro"></i>
                          Start Date:<span class="g-font-weight-500 g-color-indigo"> <strong>(<%=rs.getString(8) %>) </strong></span>
                        </li></br>
                        <li class="g-py-5">
                          <i class="align-middle mr-2 icon-science-123 u-line-icon-pro"></i>
                          End Date:<span class="g-font-weight-500 g-color-indigo"> (<%=rs.getString(9) %>)</span>
                        </li></br>
                        <li class="g-py-5">
                          <i class="align-middle mr-2 icon-science-143 u-line-icon-pro"></i>
                          Event Mode:<span class="g-font-weight-500 g-color-indigo"> Venue</span>
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
                        <li class="g-py-5">
                          <i class="align-middle mr-2 icon-science-143 u-line-icon-pro"></i>
                         Organiser: <span class="g-font-weight-500"><%=rs.getString(7) %></span></a>
                        </li></br>
                        <li class="g-py-5">
                          <i class="align-middle mr-2 icon-science-123 u-line-icon-pro"></i>
                          City: <span class="g-font-weight-500"><%=rs.getString(11) %></span></a>
                        </li></br>
                        <li class="g-py-5">
                          <i class="align-middle mr-2 icon-science-018 u-line-icon-pro"></i>
                         State: <a href="/college-fests/state/Tamil-Nadu" target="_blank"><span class="g-font-weight-500"><%=rs.getString(12) %></span></a>
                        </li><br>
                        
                      </ul>
                    </div>
                  </div>

                 <!--  <a class="d-inline-block g-brd-bottom--dashed g-brd-primary g-color-indigo g-color-primary--hover g-font-size-13 g-text-underline--none--hover g-pb-1" href="https://vcet.ac.in">Organiser Website</a>
<span class="g-color-text mx-3">|</span>
                  <a class="d-inline-block g-brd-bottom--dashed g-brd-primary g-color-text g-color-primary--hover g-font-size-13 g-text-underline--none--hover g-pb-1" href="mailto:yanthro22.klu@gmail.com">yanthro22.klu@gmail.com</a>
                 --></div>
              </div>
              <div class="row">
                <div class="col-md-3 g-mb-30">
                  <h3 class="h6 g-font-weight-600 text-uppercase mb-0">Description</h3>
                </div>

                <div class="col-md-9 g-mb-30">
                 <p><%=rs.getString(13) %> .National Level Symposium conducted <%=rs.getString(16) %> Department of <%=rs.getString(3) %> .</p>
                </div>
              </div>
              <div class="row">
                <div class="col-md-3 g-mb-30">
                  <h3 class="h6 g-font-weight-600 text-uppercase mb-0">Events</h3>
                </div>

                <div class="col-md-9 g-mb-30">
                 <p>Technical Events:<br>
                  <%=rs.getString(14)%></br>
           Non-Technical Events:<br>
                 <%=rs.getString(15) %></p>
                </div>
              </div>
              <div class="row">
    <div class="col-md-3 g-mb-30">
        <h3 class="h6 g-font-weight-600 text-uppercase mb-0">Event Theme</h3>
    </div>
    <div class="col-md-9 g-mb-30">
        Feed for Talents               
    </div>
</div><br>
<div class="row">
    <div class="col-md-3 g-mb-30">
        <h3 class="h6 g-font-weight-600 text-uppercase mb-0">Accommodation</h3>
    </div>
    <div class="col-md-9 g-mb-30">
        <p>No Accommodation :Provided.</p>
               
    </div>
</div><br>
<div class="row">
    <div class="col-md-3 g-mb-30">
        <h3 class="h6 g-font-weight-600 text-uppercase mb-0">Contact Details</h3>
    </div>
    <div class="col-md-9 g-mb-30">
        <p><%=rs.getString(17)%>-<%=rs.getString(19)%><br><%=rs.getString(18)%>-<%=rs.getString(20)%></p>
               
    </div>
</div><br>

<div class="row">
    <div class="col-md-3 g-mb-30">
        <h3 class="h6 g-font-weight-600 text-uppercase mb-0">Last Dates for Registration</h3>
    </div>
    <div class="col-md-9 g-mb-30">
        <p><%=rs.getString(21)%></p>
               
    </div>
</div><br>
<div class="row">
    <div class="col-md-3 g-mb-30">
        <h3 class="h6 g-font-weight-600 text-uppercase mb-0">Certificate</h3>
    </div>
    <div class="col-md-9 g-mb-30">
        <p>Certificates will be provided to Participants</p>
               
    </div>
</div><br>

<div class="row">
    <div class="col-md-3 g-mb-30">
        <h3 class="h6 g-font-weight-600 text-uppercase mb-0">Limited Token</h3>
    </div>
    <div class="col-md-9 g-mb-30">
        <p><%=rs.getString(26)%></p>
               
    </div>
</div>
    <%--<p class="card-text">Name : <%=rs.getString(2)%></p>
    <p class="card-text">Email :<%=rs.getString(3)%></p>
    <p class="card-text">Mobile :<%=rs.getString(4)%></p>
     <p class="card-text">Picture :<%=rs.getString(7)%></p>  --%>
          
    
     <center><a href="studentapplylimit.jsp?event=limit&&eventname=<%=rs.getString(25)%>&&cad=<%=rs.getString(26)%>&&organ=<%=rs.getString(7)%>&&sdate=<%=rs.getString(8)%>"><button class="btn btn-primary">Apply</button></a></center>
      
    
      </div>
      </div>
      </div>

	<%} %>
	</div>
 </div>
</body>
</html>