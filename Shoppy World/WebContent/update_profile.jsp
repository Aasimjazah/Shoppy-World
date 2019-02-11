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
String name=request.getParameter("name");
HttpSession s = request.getSession();
s.setAttribute("name",name);
String email2=(String)s.getAttribute("email");
String email=request.getParameter("email");
s.setAttribute(email,"email");
String contact=request.getParameter("contact");
String password=request.getParameter("password");
out.println(name);
out.println(email);
out.println(contact);
out.println(password);
try{
Class.forName("com.mysql.jdbc.Driver");
Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/sys","root","asimjazah8@gmail.com");
out.println("connection established");
Statement stmt=con.createStatement();
stmt.executeUpdate("update sw_vendors set vendor_name='"+name+"',vendor_email='"+email+"',vendor_contact='"+contact+"',vendor_password='"+password+"' where vendor_email='"+email2+"'");
out.println("your profile is successfully updated");
}
catch(Exception e)
{
out.println(e);
}




%>

</body>
</html>