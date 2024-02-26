<%@ page import="Dbcon.Dbcon" %>
<%@page import="java.sql.PreparedStatement"%>
<%@ page import="java.sql.*"%>
<%
/* String id=session.getAttribute("Sidmail").toString(); */
String id=request.getParameter("id");
String event=request.getParameter("event");
System.out.println(id);
System.out.println(event);
/* String even=event.toUpperCase(); */

String status="Approved";
try{
	Connection con=Dbcon.create();
	Statement st=con.createStatement();
	st.executeUpdate("UPDATE collegeevent.freeevent f SET status='"+status+"' where id='"+id+"' and Etype='"+event+"'  ");

	response.sendRedirect("eventsapprovedbyadmin.jsp?valid");


}
catch(Exception e){
	response.sendRedirect("error.jsp?invalid");
System.out.println(e);
}
%>