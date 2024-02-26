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
<%@page import="java.util.Date"%>
<%@page import="java.text.SimpleDateFormat"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html><head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
<link rel="stylesheet" href="css/bootstrap.min.css">
<style>
p{
Color:red;
text-align:center;}
body{
margin-left:20px;
margin-right:40px;
width:90%;
background-image:url(background/11.jpg) ;
background-size:cover;
}	
a{
color:white;
text-decoration:none;
}

</style>

</head>
<%String id=request.getParameter("name").toString(); %>
<body><button type="button" class="btn btn-primary" onclick="history.back();" style="float:right"> Back </button><br><br>

<!-- <script>  
var date=new Date();  
var day=date.getDate();  
var month=date.getMonth()+1;  
var year=date.getFullYear();  

var yearmonth=month+" "+year;

document.getElementByName("rj").value=yearmonth;
</script> -->
<h2 style="margin-left:30px;">  List of latest college Event festivals  in Tamil Nadu in May 2022. </h2><br>

					<%
       
       Connection con;
       
       
       con=Dbcon.create();
       PreparedStatement ps=con.prepareStatement("SELECT * FROM `collegeevent`.`freeevent` where Etype='"+id+"' and status='Approved'");
       PreparedStatement ps1=con.prepareStatement("SELECT count(*) FROM `collegeevent`.`freeevent` where Etype='"+id+"' and status='Approved'");
       ResultSet rs=ps.executeQuery();
       ResultSet rs1=ps1.executeQuery();
       
       
 while( rs1.next())
       {
    
    	   int cout=rs1.getInt(1);  
    	   
    	   %>
    	   <%if(cout>0) {
    	   
    	   %>
    	   <h2 style="margin-left:40px;"> <span class="badge badge-secondary"><%=cout%> Upcoming College Fests </span></h2></h2>
    	<center> 
		<table id="tablaDatos" class="table table-dark"><thead><tr data-page="1" style="">


<div id="tablaDatos-pbToolbar" class="row hidden-print" style="width:70%;height:10px;"><div class="col-lg-12"><div class="input-group"><input id="search-tablaDatos" search-in="tablaDatos" type="search" class="form-control" placeholder="Type here to Search..." autofocus=""><div name="sectionForButtons" class="input-group-btn"></div></div></div></div>
            
             <br> <br> <th>Start Date</th>
				<th>Fest Name</th>
				<th class="optout">Fest Type</th>
				<th class="optout">College Name</th>
				<th class="optout">Last Date <br>for Registration</th>
				<th>City</th>				
			</tr></thead>
				<tbody style="cursor: pointer;">
				
			
    <%   while(rs.next() )
       {
    	String idde=rs.getString(1);
    	String idd=rs.getString(21);
    	Date date = new Date();  
    	 SimpleDateFormat formatter = new SimpleDateFormat("yyyy-MM-dd");
    	/*  System.out.println(formatter.format(date.nextDay(1))); */
    	 if(idd.equals(formatter.format(date))){
    		 
    		 Statement st=con.createStatement();
    			st.executeUpdate("DELETE FROM collegeevent.freeevent where id='"+idde+"' ");
    			
    	 }
    	  
    	String img=rs.getString(23);
    	String fid=rs.getString(1);
    	   System.out.println(fid);
       %>
       <%HttpSession ses=request.getSession();
       ses.setAttribute("nmoe", id);
       ses.setAttribute("fid", fid);
       %>
				
				   				
						<td><%=rs.getString(8)%></td>
						<td><%=rs.getString(25)%> <span class="btn btn-outline-primary  float-right "><a href="listeventap.jsp">View More</a></span></td>
						<td class="optout"><%=rs.getString(24)%></td>
					

						<td class="optout"><%=rs.getString(4)%></td>
						<td class="optout"><%=rs.getString(21)%></td>
						<td><%=rs.getString(5)%></td>
						
					</tr>
					<%} %>
						<%} %>
						<% if(cout==0)
						{
						%>
						<h4 style="margin-left:30px;]">There is no any kind of events updated here. So please wait for the next updates from colleges................<br> Thank You<h4>
						<%} %>
						
					    	  <%} %>			  
					    		</tbody><tfoot></tfoot></table></center>

</body></html>