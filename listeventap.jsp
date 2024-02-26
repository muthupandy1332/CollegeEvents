<%@ page import="Dbcon.Dbcon" %>
<%@page import="java.sql.PreparedStatement"%>
<%@ page import="java.sql.*"%>
<%
String id=session.getAttribute("nmoe").toString();




String status="Accepted";
try{
	if(id.equals("Free")){
	response.sendRedirect("events.jsp?valid");
}
	else if(id.equals("Limit")){
		response.sendRedirect("limitevent.jsp?valid");
	}
	else if(id.equals("Cost")){
		response.sendRedirect("eventspaid.jsp?valid");
	}
}
catch(Exception e){
	response.sendRedirect("error.jsp?inval id");
System.out.println(e);
}
%>