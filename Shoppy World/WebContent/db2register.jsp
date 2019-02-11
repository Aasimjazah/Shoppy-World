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
String Email=request.getParameter("email");
String name=request.getParameter("name");
String contact=request.getParameter("contact");
String password=request.getParameter("password");
String address=request.getParameter("addr");
HttpSession s = request.getSession();
s.setAttribute("email",Email);
s.setAttribute("password",password);
s.setAttribute("name",name);
String from="shoppeworld93@gmail.com"; 
String password1="dynamic@123"; 
String host="smtp.gmail.com";
String to=Email;
try{
Class.forName("com.mysql.jdbc.Driver");
Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/sys","root","asimjazah8@gmail.com");
PreparedStatement stmt=con.prepareStatement("insert into sw_user(user_email,user_name,user_contact,user_password,address) values(?,?,?,?,?)");
stmt.setString(1,Email);
stmt.setString(2,name);
stmt.setString(3,contact);
stmt.setString(4,password);
stmt.setString(5,address);
stmt.execute();

Properties p=new Properties();

Session sess=Session.getInstance(p); 

MimeMessage msg =new MimeMessage(sess); 

InternetAddress toId =new InternetAddress(to);

InternetAddress fromId =new InternetAddress(from);	

msg.setFrom(fromId);

msg.setRecipient(Message.RecipientType.TO,toId);	

msg.setSubject("Welcome to Shoppe World\t"+name);

msg.setText("Congratulation\t"+name+" your Are Successfully Registered to Shoppe World as a User.. \nWe Provide you Best products Deals on the valid price..And serves you the excellence facilities of E-commerce Website..\ncheck the latest update day to day and browse the products\nHave a nice day :-) "); 

Transport tpt= sess.getTransport("smtps"); 

tpt.connect(host,from,password1); 

tpt.sendMessage(msg,msg.getAllRecipients()); 
HttpSession s4=request.getSession();
s4.setAttribute("msg2","success");
response.sendRedirect("usersignup.jsp");
}
catch(Exception e)
{
	 HttpSession s4=request.getSession();
	   s4.setAttribute("msg2","fail");
	   response.sendRedirect("usersignup.jsp");	
}
%>



</body>
</html>