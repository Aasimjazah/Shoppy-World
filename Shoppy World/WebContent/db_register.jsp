<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
 <%@page import="java.sql.*" %>
 <%@page import="java.sql.*,java.util.Properties,javax.mail.*,javax.mail.internet.*"%>	
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<%
String email=request.getParameter("email");
String name=request.getParameter("name");
String contact=request.getParameter("contact");
String password=request.getParameter("password");
HttpSession s = request.getSession();
s.setAttribute("email",email);
s.setAttribute("password",password);

String from="shoppeworld93@gmail.com"; 
String password1="dynamic@123"; 
String host="smtp.gmail.com";
String to=email;

try{
   Class.forName("com.mysql.jdbc.Driver");
   out.println("driver loaded");
   Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/sys","root","asimjazah8@gmail.com");
   out.println("connection establish");
   PreparedStatement stmt=con.prepareStatement("insert into sw_vendors(vendor_email,vendor_name,vendor_contact,vendor_password) values(?,?,?,?)");
   stmt.setString(1,email);
   stmt.setString(2,name);
   stmt.setString(3,contact);
   stmt.setString(4,password);
   stmt.execute();
   Properties p=new Properties();

   Session sess=Session.getInstance(p); 

   MimeMessage msg =new MimeMessage(sess); 

   InternetAddress toId =new InternetAddress(to);

   InternetAddress fromId =new InternetAddress(from);	

   msg.setFrom(fromId);

   msg.setRecipient(Message.RecipientType.TO,toId);	

   msg.setSubject("Welcome to Shoppe World\t"+name);
   
   msg.setText("Congratulation\t"+name+" your Are Successfully Registered to Shoppe World as a vendor.. \nWe Provide you Best Deals with your customers and great E-commerce facility.\n CEO: Aasim Izhar and Mohammad saad"); 
   
   Transport tpt= sess.getTransport("smtps"); 

   tpt.connect(host,from,password1); 
   
   tpt.sendMessage(msg,msg.getAllRecipients()); 
   HttpSession s3=request.getSession();
   s3.setAttribute("msg2","success");
  response.sendRedirect("vensignup1.jsp");
   
   }
   catch(Exception e)
    {
	   HttpSession s3=request.getSession();
	   s3.setAttribute("msg2","fail");
	   response.sendRedirect("vensignup1.jsp");	
    }
%>


</body>
</html>