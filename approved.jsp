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

String status="Accepted";
try{
	Connection con=Dbcon.create();
	Statement st=con.createStatement();
	st.executeUpdate("UPDATE collegeevent.freeapplyevent f SET status='"+status+"' where id='"+id+"' and eventname='"+event+"'  ");
	if(event.equals("FREE")){
	response.sendRedirect("tablestudspplyview.jsp?valid");
	}
	else if(event.equals("LIMIT")){
		response.sendRedirect("tablestudspplyviewlimit.jsp?valid");
		}
	else{
		response.sendRedirect("tablestudspplyviewcost.jsp?valid");
		}
}
catch(Exception e){
	response.sendRedirect("error.jsp?invalid");
System.out.println(e);
}
%>