<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ page import="java.sql.*" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>

<%
   String email=request.getParameter("email");
   String pass=request.getParameter("pass");
   String id=request.getParameter("id");
   String p_o_email=request.getParameter("p_o_email");
 
	try
     {
	  Class.forName("com.mysql.jdbc.Driver");
	  out.println("driver loaded");
	  Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/sys","root","asimjazah8@gmail.com");
	  out.println("connextion establish");
	  Statement stmt=con.createStatement();
	  ResultSet rs=stmt.executeQuery("select user_email,user_password,address from sw_user where user_email='"+email+"' and user_password='"+pass+"'");
	  out.println("DataBase");
	  if(rs.next())
	   {
		  String user_email=rs.getString(1);
		  String user_address=rs.getString(3);
		  HttpSession s1=request.getSession();
		  s1.setAttribute("user_email",user_email);
		  s1.setAttribute("user_address", user_address);
		 response.sendRedirect("purchase.jsp");
		 
	 }
	 else
	 {
		
	 }

 }
 catch(Exception e)
 {
	 out.println(e);
 }

 %>

</body>
</html>