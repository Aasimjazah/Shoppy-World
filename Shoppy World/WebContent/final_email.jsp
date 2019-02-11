<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@page import="java.sql.*,java.util.Properties,javax.mail.*,javax.mail.internet.*"%>
    <%@page import="java.sql.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
 
    <%!
    ResultSet rs;
    String p_id;
    String p_o_name;
    String p_name;
    int p_price;
    String p_category;
    String p_detail;
    int p_discount;
    String p_size;
    String id;
    String toId1;
    String user_name;
    int final_price;
    String user_address;
    
    %>
<%
id=request.getParameter("id");
toId1=request.getParameter("user_email");

try{
	Class.forName("com.mysql.jdbc.Driver");
	Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/sys","root","asimjazah8@gmail.com");
	Statement stmt=con.createStatement();
	 rs=stmt.executeQuery("select * from sw_user where user_email='"+toId1+"'");

	   if(rs.next())
	   {
		   user_name=rs.getString(3);
		   user_address=rs.getString(6);
	   }
}
catch(Exception e)
{
out.println(e);	
}

%>

<%

try{
	Class.forName("com.mysql.jdbc.Driver");
	Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/sys","root","asimjazah8@gmail.com");
	Statement stmt=con.createStatement();
	 rs=stmt.executeQuery("select * from sw_products where id="+id);
     if(rs.next())
      {
    	 p_id=rs.getString(1);
    	 p_o_name= rs.getString(3);
    	 p_name=rs.getString(5);
    	 p_price=Integer.parseInt(rs.getString(6));
    	 p_category=rs.getString(7);
    	 p_detail= rs.getString(8);
    	 p_discount= Integer.parseInt(rs.getString(10));
    	 p_size=rs.getString(13);
    	 String from="shoppeworld93@gmail.com"; 
    	 String password="dynamic@123"; 
    	 String host="smtp.gmail.com";
    	 
    	 
    	 
    	 int discount_price= (p_price* p_discount)/100;
    		final_price=p_price-discount_price;
    	 
    	
    	 Properties p=new Properties();

    	 Session sess=Session.getInstance(p); 

    	 MimeMessage msg =new MimeMessage(sess); 

    	 InternetAddress toId =new InternetAddress(toId1);

    	 InternetAddress fromId =new InternetAddress(from);	

    	 msg.setFrom(fromId);

    	 msg.setRecipient(Message.RecipientType.TO,toId);	

    	 msg.setSubject("hello "+user_name+" your order Is Ready to shipped");
    	 
    	 msg.setText("Product:\t"+p_name+"\nProduct ID:\t"+p_id+"\n with price:\t"+p_price+" On\t"+p_discount+"% discount\nfinal price:\t"+final_price+"\nSize:\t"+p_size+"\nProduct details:\t"+p_detail+"\nShipping Address:\t"+user_address); 
    	 
    	 Transport tpt= sess.getTransport("smtps"); 

    	 tpt.connect(host,from,password); 
    	 
    	 tpt.sendMessage(msg,msg.getAllRecipients()); 
    	 
    	 tpt.close(); 
    	
    	
      }
}
    catch(Exception e)
    {
  	  out.println(e);
    }
   %>
     



</body>
</html>