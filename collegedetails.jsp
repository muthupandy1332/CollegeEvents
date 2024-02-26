<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@page import="Dbcon.Dbcon"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.*"%>
<%@page import="java.util.*"%>
<%@page import="java.io.FileInputStream"%>
<%@page import="java.io.IOException"%>
<%@page import="java.io.PrintWriter"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
<link rel="stylesheet" href="css/bootstrap.min.css">
</head>
<Style>
p {
	Color: red;
	text-align: center;
}
</Style>
<button type="button" class="btn btn-primary" onclick="history.back();"
	style="float: right">Back</button>
<br>
<br>
<body>


	<div class="container">
		<p>Accepted Students list for College Event
			Here!!.......................................</p>
		<table class="table  table-hover">
			<thead>
				<tr>
					<th> ID</th>
					<th>College Name</th>
					<th>College Email</th>

					<th>College Phone</th>
					<th>Address</th>
					<th>Password</th>
					


					<th>Status</th>

<th>Remark</th>



				</tr>
			</thead>
			<%
				Connection con;

				con = Dbcon.create();
				PreparedStatement ps = con
						.prepareStatement("SELECT * FROM `collegeevent`.`colmanreg`  ");

				ResultSet rs = ps.executeQuery();

				while (rs.next()) {

					
			%>
			<tbody>
				<tr>
					<td><%=rs.getString(1)%></td>
					<td><%=rs.getString(2)%></td>
					<td><%=rs.getString(3)%></td>
					<td><%=rs.getString(4)%></td>

					<td><%=rs.getString(7)%></td>
<td><%=rs.getString(5)%></td>
					<td><%=rs.getString(8)%></td>
			
					<td><a href="colaccept.jsp?id=<%=rs.getString(1)%>"><button class="btn btn-primary">Accept </button></a></td>
						<%-- <td><img class="card-img-top" src="product/<%=image %>" width="40" height="50" alt="Card image cap"></td> --%>

				</tr>
			</tbody>
			<%
				}
			%>
		</table>
	</div>
</body>
</html>