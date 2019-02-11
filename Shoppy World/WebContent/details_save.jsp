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
<%!
 
%>
<%
  String owner_email=request.getParameter("email");
  String owner_name=request.getParameter("name");
  String owner_contact=request.getParameter("contact");
  String product_name=request.getParameter("product_name");
  String product_price=request.getParameter("product_price");
  String product_category=request.getParameter("category");
  String product_info=request.getParameter("info");
  String product_dis=request.getParameter("product_dis");
  String product_size=request.getParameter("product_size");
  String product_quantity=request.getParameter("product_quantity");
  String p_i_path="images/card1.jpeg";
  String p_i_name=null;
  String status="pending";
  String product_order="not placed";
try{
	Class.forName("com.mysql.jdbc.Driver");
	Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/sys","root","asimjazah8@gmail.com");
	PreparedStatement stmt=con.prepareStatement("insert into sw_products(product_owner_email,product_owner_name,product_owner_contact,product_name,product_price,product_category,product_detail,product_status,discount,quantity,size,p_i_path,p_i_name) values(?,?,?,?,?,?,?,?,?,?,?,?,?)");
	stmt.setString(1,owner_email);
	stmt.setString(2,owner_name);
	stmt.setString(3,owner_contact);
	stmt.setString(4,product_name);
	stmt.setString(5,product_price);
	stmt.setString(6,product_category);
	stmt.setString(7,product_info);
	stmt.setString(8,status);
	stmt.setString(9,product_dis);
	stmt.setString(10,product_quantity);
	stmt.setString(11,product_size);
	stmt.setString(12,p_i_path);
	stmt.setString(13,p_i_name);
	stmt.setString(14,product_order);
    stmt.execute();
    out.println("<h1>Thanx we will notify you shortly after verification of your product by the admin<h1>");
   }
catch(Exception e)
{
	out.println(e);
}

%>

</body>
</html>