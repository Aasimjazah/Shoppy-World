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
<%
String email=request.getParameter("email");
String pass=request.getParameter("pass");
String type=request.getParameter("type");


if(type.equals("admin"))
 {
  if(email.equals("admin@gmail.com")&&pass.equals("1234"))
   {
    response.sendRedirect("admin_area.jsp");	
   }
  else
   {
	out.println("<h1>Oops!</h1><h3>Wrong Email or Password</h3>");
   }

 }
 else if(type.equals("vendor"))
  {
	try{
		Class.forName("com.mysql.jdbc.Driver");
		
		Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/sys","root","asimjazah8@gmail.com");
		
		Statement stmt=con.createStatement();
		
		ResultSet rs=stmt.executeQuery("select vendor_email,vendor_name,vendor_contact,vendor_password from sw_vendors where vendor_email='"+email+"' and vendor_password='"+pass+"'");
	
		if(rs.next())
	 {
			String email2=rs.getString(1);
			String name2=rs.getString(2);
			String contact2=rs.getString(3);
			String password2=rs.getString(4);
			HttpSession s = request.getSession();
			s.setAttribute("name", name2);
			s.setAttribute("email", email2);
			s.setAttribute("contact", contact2);
			s.setAttribute("password",password2);
		
			response.sendRedirect("vendors.jsp");
	 }
		else
		{
			out.println("<h1>Oops!</h1><h3>Wrong Email or Password</h3>");
		}
	}
	catch(Exception e)
	{
		
	}
}
else if(type.equals("user"))
{
	try{
		Class.forName("com.mysql.jdbc.Driver");
		
		Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/sys","root","asimjazah8@gmail.com");
		
		Statement stmt=con.createStatement();
		
		ResultSet rs=stmt.executeQuery("select user_email,user_name,user_id,user_password from sw_user where user_email='"+email+"' and user_password='"+pass+"'");
	
		if(rs.next())
		 {
				String name=rs.getString(2);
				String email2=rs.getString(1);
				String id=rs.getString(3);
				String password=rs.getString(4);
				HttpSession s = request.getSession();
				s.setAttribute("name", name);
				s.setAttribute("email", email2);
			    s.setAttribute("id",id);
			    s.setAttribute("password",password);
				
				response.sendRedirect("users.jsp");
		 }
		else
		{
			out.println("<h1>Oops!</h1><h3>Wrong Email or Password</h3>");
		}
}
	catch(Exception e)
	{
		
	}
	
}


%>




</body>
</html>