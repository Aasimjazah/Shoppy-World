<%@ include file="header1.jsp" %>

<%
String email=(String)s.getAttribute("email");
%>



<hr><hr><hr><hr>
<table class="table">

  <thead class="thead-dark">
    <tr>
      <th scope="col">s.no</th>
      <th scope="col">PO_Email</th>
      <th scope="col">PO_name</th>
      <th scope="col">PO_contact</th>
      <th scope="col">P_name</th>
      <th scope="col">P_Price</th>
      <th scope="col">P_category</th>
      <th scope="col">P_details</th>
     <th scope="col">P_status</th>
     <th scope="col"></th>
     
    </tr>
  </thead>
 



  <tbody>
    
    <%!
    ResultSet rs;
    int i=1;
    
    %>
   
    
    
      <%
      
      
      try{
	Class.forName("com.mysql.jdbc.Driver");
	Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/sys","root","asimjazah8@gmail.com");
	Statement stmt=con.createStatement();
	 rs=stmt.executeQuery("select * from sw_products where product_owner_email='"+email+"'");
	 while(rs.next())
	 {

     %>
     
   <tr>
     <th scope="row"><%=rs.getString(1)%></th>
      <td><%=rs.getString(2) %></td>
      <td><%=rs.getString(3) %></td>
      <td><%=rs.getString(4) %></td>
      <td><%=rs.getString(5) %></td>
      <td><%=rs.getString(6) %></td>
      <td><%=rs.getString(7) %></td>
      <td><%=rs.getString(8) %></td>
       <td><%=rs.getString(9) %></td>
       <%
       if(rs.getString(15)==null)
       {
       %>
       <td><a class="btn btn-info" href="product_image_set.jsp?id=<%=rs.getString(1)%>">upload image </a> </td>
    <%
       }
       else
       {
    %>
    <td><a class="btn btn-success" href="product_image_set.jsp?id=<%=rs.getString(1)%>">image uploaded </a> </td>
    <%
       }
    %>
    
    </tr>
    <%
    i++;
	 }
	 i=1;
}
      catch(Exception e)
      {
    	  out.println(e);
      }
      %>
      
    </tbody>

</table>




 
 


 
 
 
 
 
 <br>
 <%@ include file="footer.jsp" %> 