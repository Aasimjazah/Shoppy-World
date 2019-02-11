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
String email2=(String)s.getAttribute("email");
String email=request.getParameter("email");
s.setAttribute(email,"email");
String id=(String)s.getAttribute("id");
String contact=request.getParameter("contact");
String password=request.getParameter("password");
String address=request.getParameter("user_address");
out.println(name);
out.println(email);
out.println(contact);
out.println(password);
out.println(address);
try{
Class.forName("com.mysql.jdbc.Driver");
Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/sys","root","asimjazah8@gmail.com");
out.println("connection established");
Statement stmt=con.createStatement();
stmt.executeUpdate("update sw_user set user_name='"+name+"',user_email='"+email+"',user_contact='"+contact+"',user_password='"+password+"',address='"+address+"' where user_id='"+id+"'");
out.println("your profile is successfully updated");
}
catch(Exception e)
{
out.println(e);
}




%>

</body>
</html>