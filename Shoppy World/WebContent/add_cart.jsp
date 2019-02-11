<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
     <%@page import="java.sql.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<%!
HttpSession session1;
String user_name;
%>
<%
String email=request.getParameter("email");
String pass=request.getParameter("pass");
String id=request.getParameter("id");
try{
	Class.forName("com.mysql.jdbc.Driver");
	
	Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/sys","root","asimjazah8@gmail.com");
	
	Statement stmt=con.createStatement();
	
	ResultSet rs=stmt.executeQuery("select user_id,user_name from sw_user where user_email='"+email+"' and user_password='"+pass+"'");

	if(rs.next())
 {
		String user_id=rs.getString(1);
		 user_name=rs.getString(2);
		
		PreparedStatement stmt1=con.prepareStatement("insert into sw_cart values(?,?)");
		stmt1.setString(1,user_id);
		stmt1.setString(2,id);
		stmt1.execute();
		response.sendRedirect("show_item.jsp?msg=success");
 }
	else
	{
		out.println("<h1>Oops!</h1><h3>Wrong Email or Password</h3>");
	}
}
catch(Exception e)
{
	
	response.sendRedirect("show_item.jsp?msg=notadded");
}



%>

</body>
</html>