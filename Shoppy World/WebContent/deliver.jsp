<%@page import="java.sql.*" %>
<%@ include file="header1.jsp" %>

					  					
					  					
					  					
<br><br><br>
<div class="row">
<div class="col-md-12">
<table class="table table-bordered bg-info">

  <thead class="thead-dark">
    <tr>
      <th scope="col">Product_ID</th>  
      <th scope="col">Product_owner_email</th>
      <th scope="col">User_email</th>
      <th scope="col">Purchase_status</th>
      <th scope="col">User_address</th>
     <th scope="col"></th>
        <th scope="col"></th>
    </tr>
  </thead>
 



  <tbody>
  
    
    <%!
    ResultSet rs;
  
    
    %>
   
    
    
      <%
      HttpSession sess=request.getSession();
      String msg1=request.getParameter("msg");
    
     String email=(String)s.getAttribute("email");
   
      try{
	Class.forName("com.mysql.jdbc.Driver");
	Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/sys","root","asimjazah8@gmail.com");
	Statement stmt=con.createStatement();
	 rs=stmt.executeQuery("select * from sw_purchase  WHERE (purchase_status='verified' AND p_o_email='"+email+"')OR (purchase_status='show-vendor' AND p_o_email='"+email+"')");
	 while(rs.next())
	 {

     %>
     
   <tr>
      <td><%=rs.getString(1) %></td>
      <td><%=rs.getString(2) %></td>
      <td><%=rs.getString(3) %></td>
      <td><%=rs.getString(4) %></td>
      <td><%=rs.getString(5) %></td>
      <%
      if("show-vendor".equals(rs.getString(4)))
      {
      
      %>
     
        <td><a class="btn btn-warning" href="verify_product.jsp?id=<%=rs.getString(1)%>">Deliver_product</a></td>  
      
    
    <%
      }
      else
      {
    	  %>
    	    <td></td> 
    	     
    	 
    	  <%
      }
      %>
      </tr>
      <%
	 }
    	  %>
<%
}
      catch(Exception e)
      {
    	  out.println(e);
      }
      %>
      </tbody>
      </table>
      </div>
      </div>
					  					
					  					<%@ include file="footer.jsp" %> 