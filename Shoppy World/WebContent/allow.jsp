<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ page import="java.sql.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<%
String id=request.getParameter("id");
try{
Class.forName("com.mysql.jdbc.Driver");
Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/sys","root","asimjazah8@gmail.com");

out.println("connection established");

Statement stmt=con.createStatement();
stmt.executeUpdate("update sw_products set product_status='verified' where id='"+id+"'");
response.sendRedirect("new_products.jsp");

}
catch(Exception e)
{
out.println(e);
}

%>
</body>
</html>