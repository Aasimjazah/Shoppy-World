<%@page import="java.sql.*,java.util.Properties,javax.mail.*,javax.mail.internet.*"%>	
<%
String msg1="success";
String msg2="null";
HttpSession s;
%>

<%
 String name=request.getParameter("name");
 String contact=request.getParameter("contact");
 String address1=request.getParameter("address");
 String address2=request.getParameter("address2");
 String city=request.getParameter("city");
 String state=request.getParameter("state");
 String zip=request.getParameter("zip");
 String queries=request.getParameter("queries");
 String to="asimjazah8@gmail.com";
 String from="shoppeworld93@gmail.com"; 
 String password="dynamic@123"; 
 String host="smtp.gmail.com";

try
{
 Properties p=new Properties();

 Session sess=Session.getInstance(p); 

 MimeMessage msg =new MimeMessage(sess); 

 InternetAddress toId =new InternetAddress(to);

 InternetAddress fromId =new InternetAddress(from);	

 msg.setFrom(fromId);

 msg.setRecipient(Message.RecipientType.TO,toId);	

 msg.setSubject("Any body want contact from you");
 
 msg.setText("Name:\t"+name+"\ncontact:\t"+contact+"\n address1:\t"+address1+"\naddress2:\t"+address2+"\nCity:\t"+city+"\nstate:\t"+state+"\nZip:\t"+zip+"\nquery:\t"+queries); 
 
 Transport tpt= sess.getTransport("smtps"); 

 tpt.connect(host,from,password); 
 
 tpt.sendMessage(msg,msg.getAllRecipients()); 
 
 tpt.close(); 
 s=request.getSession();
 s.setAttribute("msg","success");
 response.sendRedirect("contact.jsp");
}
catch(Exception e)
{
	s=request.getSession();
	s.setAttribute("msg",null); 
	response.sendRedirect("contact.jsp");
}

%>

</body>
</html>