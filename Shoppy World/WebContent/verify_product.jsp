<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
     <%@page import="java.sql.*" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<%
String product_id=request.getParameter("id");

try{
	
	Class.forName("com.mysql.jdbc.Driver");
	Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/sys","root","asimjazah8@gmail.com");
	PreparedStatement pst=con.prepareStatement("update sw_purchase set purchase_status='verified' where product_id='"+product_id+"'");
	pst.execute();
	response.sendRedirect("deliver.jsp");
   		  

}
      catch(Exception e)
      {
    	  out.println(e);
      }
   



%>

</body>
</html>

</body>
</html>