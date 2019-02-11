<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ page import="java.sql.*,java.util.Properties,javax.mail.*,javax.mail.internet.*" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
  <style>
     @media only screen and (max-width: 600px) {
 #p_img{
   
    width:80%;  
   height:100%;  
    margin-left:20%;
  }
}
</style>

</head>
<body>
<h1>thanks for purchasing</h1>


   <%@page import="java.sql.*" %>
   
   <%!
   String id;
		String p_o_email;
		String user_email;
		String user_address;
   %>
   <%
   HttpSession s1=request.getSession();
   id=(String)s1.getAttribute("id");
   p_o_email=(String)s1.getAttribute("p_o_email");
   user_email=(String)s1.getAttribute("user_email");
   user_address=(String)s1.getAttribute("user_address");

   %>
   
   
    <%!
    String auther_name;
    String product_name;
    int product_price;
    String product_category;
    String product_detail;
    int product_discount;
    int final_price;
    ResultSet rs;
    String image_name;
    %>
    <%
    
    try{
    	Class.forName("com.mysql.jdbc.Driver");
    	Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/sys","root","asimjazah8@gmail.com");
    	Statement stmt=con.createStatement();
    	rs=stmt.executeQuery("select * from sw_products where id='"+id+"'");
     if(rs.next())
       {
	    auther_name= rs.getString(3);
	    product_name= rs.getString(5);
	    product_price=Integer.parseInt(rs.getString(6));
	    product_category=rs.getString(7);
	    product_detail= rs.getString(8);
	    image_name= rs.getString(15);
	    product_discount= Integer.parseInt(rs.getString(10));
        
	    int discount_price= (product_price* product_discount)/100;
	    final_price=product_price-discount_price;
       }
    }
    catch(Exception e)
    {
    	
    }
 
    
    
    %>
     <div class="container-fluid">
	  <div class="row">
		<div class="col-md-3">
		  <a  href="#" class="thumbnail">
           <img id="p_img" style="height:30%;width:30%" src="images/<%=image_name %>" alt="...">
         </a>
		</div>
		  <div class="col-md-9 ">
		    <h3>By:<%=auther_name %> </h3>
		    <h5><%=product_name%> | <%=product_category%> </h5>
		    <h4>Price: <%=final_price%></h4>
		    <p>Inclusive of all taxes</p>
		    <p><%=product_detail %></p>
		 </div>
       </div>
      </div>

		  
		  
		  

    
<%
String to=user_email;
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

 msg.setSubject("Congratulations your order has beeen placed");
 
 msg.setText("Product Name:\t"+product_name+"\nCategory:\t"+product_category+"\n Price:\t"+final_price+"\nProduct Details:\t"+product_detail+"\nYour order will be placed on this address:\t"+user_address); 
 
 Transport tpt= sess.getTransport("smtps"); 

 tpt.connect(host,from,password); 
 
 tpt.sendMessage(msg,msg.getAllRecipients()); 
 
 tpt.close(); 

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
    	PreparedStatement pst=con.prepareStatement("insert into sw_purchase values(?,?,?,?,?)");  
    	pst.setString(1,id); 
        pst.setString(2,p_o_email); 
        pst.setString(3,user_email); 
        pst.setString(4,"request"); 
        pst.setString(5,user_address);  
        pst.execute();    
    }
    catch(Exception e)
    {
    	out.println(e);
    }
 
    
 
    
    
    
    
    
    %>	
	
		  
    

</body>
</html>