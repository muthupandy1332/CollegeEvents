<%@ page import="Dbcon.Dbcon" %>
<%@page import="java.sql.PreparedStatement"%>
<%@ page import="java.sql.*"%>
<%@ page import="java.util.UUID"%> 

<%
String a=session.getAttribute("car").toString();
String qty="1";



try{
	Connection con=Dbcon.create();
	

	PreparedStatement ps2=con.prepareStatement("UPDATE collegeevent.freeevent f SET token=token-? where id=?");
    ps2.setString(1,qty);
    ps2.setString(2,a);
   
   
    ps2.executeUpdate();
    response.sendRedirect("Studentmain.jsp");
}
catch(Exception e){
System.out.println(e);	
}

%>