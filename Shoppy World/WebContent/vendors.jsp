
<%@ include file="header1.jsp" %>
   <!-- Navbar ends here -->
  
  <br>
  <div class="row jumbotron">
  <div class="col-md-12">
  <h1>Welcome! <%=name %></h1>
  <p>We provide you to best and pure deals on your branded products.. The price you mention for your product is directly seen by the user who visit our website for shopping. So please enter the valid Price for your Product  </p>
  </div>
  
  </div>
  <div class="row ">
  <div class="col-md-3">
  <div id="p_img" class="thumbnail">
  <a href="Add_product.jsp">
   <img style="width:70%;height:70%" src="images/product.png">
  <h4 class="btn btn-info">Add new product</h4>
  </a>
  </div>
  
  </div>
  
  <%!

  ResultSet rs;
  int notify=0;
  %>


  <%	
  try{
	 String email=(String) s.getAttribute("email");
	  
  Class.forName("com.mysql.jdbc.Driver");
  Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/sys","root","asimjazah8@gmail.com");
  Statement stmt=con.createStatement();
  rs=stmt.executeQuery("select * from sw_products where product_owner_email='"+email+"'");
  while(rs.next())
  {
  	notify++;
  }
  }
  catch(Exception e)
  {
  	
  }
  %>
  
  
  
  
  
  
  
  
   <div class="col-md-3">
  <div id="p_img" class="thumbnail">
  <a  href="my_product.jsp">
  <img style="width:70%;height:70%" src="images/seshe.png">
  <h4 class="btn btn-info"> My product <span style="font-size:20px;"class="badge badge-warning"><%=notify %></span> </h4>
  </a>
  </div>
  
  </div>


  
  
   <div class="col-md-3">
  <div id="p_img" class="thumbnail">
  <a href="#">
   <img style="width:70%;height:70%" src="images/money.png">
  <h4 class="btn btn-info" >Total product Sale</h4>
  </a>
  </div>
  
  </div>
  
  
  
  
   <div class="col-md-3">
  <div id="p_img" class="thumbnail">
  <a href="deliver.jsp">
   <img style="width:70%;height:70%" src="images/deliver.png">
  <h4 class="btn btn-info">Item to be deliver</h4>
  </a>
  </div>
  
  </div>
  
 
  
  
  
  </div>
 
  
  
  
  
  
  
  
  
  

  
  
  
  
   <%
   notify=0;
   
   %>
<%@ include file="footer.jsp" %> 