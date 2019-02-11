<%@ include file="header.jsp" %>
<%@page import="java.sql.*" %>

   <!-- banner starts here -->
   
    
    <div class="container mt-3">
			    	<div id="carouselExampleIndicators" class="carousel slide" data-ride="carousel">
			  <ol class="carousel-indicators">
			    <li data-target="#carouselExampleIndicators" data-slide-to="0" class="active"></li>
			    <li data-target="#carouselExampleIndicators" data-slide-to="1"></li>
			    <li data-target="#carouselExampleIndicators" data-slide-to="2"></li>
			    <li data-target="#carouselExampleIndicators" data-slide-to="3"></li>
			  </ol>
			  <div class="carousel-inner">
			   
			    <div class="carousel-item active">
			      <img class="d-block w-100" src="images/b1.jpg" alt="First slide">
			    </div>
			    <div class="carousel-item">
			      <img class="d-block w-100" src="images/b2.jpg" alt="Second slide">
			    </div>
			    <div class="carousel-item">
			      <img class="d-block w-100" src="images/b3.jpg" alt="Third slide">
			    </div>
			    <div style="height:50%;" class="carousel-item ">
			      <img class="d-block w-100" src="images/courosel-image1.png" alt="Fourth slide">
			    </div>
			  </div>
			  <a class="carousel-control-prev" href="#carouselExampleIndicators" role="button" data-slide="prev">
			    <span class="carousel-control-prev-icon" aria-hidden="true"></span>
			    <span class="sr-only">Previous</span>
			  </a>
			  <a class="carousel-control-next" href="#carouselExampleIndicators" role="button" data-slide="next">
			    <span class="carousel-control-next-icon" aria-hidden="true"></span>
			    <span class="sr-only">Next</span>
			  </a>
			</div>
    </div>
        <hr>
<!-- banner ends here -->
<!-- card starts here -->

    <div id="container">
    	<div class="row mt-3 mr-2 ml-2">
    
    	<%!
        ResultSet rs;
    	int i;
    %>
    
    	 <%
    	 HttpSession sess=request.getSession();
    	 String search=(String)sess.getAttribute("search");
    	
    	
try{
	
	Class.forName("com.mysql.jdbc.Driver");
	Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/sys","root","asimjazah8@gmail.com");
	Statement stmt=con.createStatement();
	if(search!=null)
	{
		rs=stmt.executeQuery("select *from sw_products where product_category like '%"+search+"%' or product_name like '%"+search+"%'");
	}
	else
	{
		rs=stmt.executeQuery("select * from sw_products where product_status='verified'");
		 
	}
	 while(rs.next())
	 {

     %>
    	
  
    	
    	
    		  <div class="col-md-2">
    		  	 <div id="p_img" class="card" >
    		  	 <span style="background-color:#EFDECD  " class="badge badge-default"> <h5><%=rs.getString(10) %>%off</h5></span>
				  	  	 <a href="show_item.jsp?id=<%=rs.getString(1)%>"><img style="width:100%" src="images/<%=rs.getString(15)%>" class="img-fluid img-thumbnail" alt="Responsive image"></a>
    	                   
				  <div class="card-body">
				  <h6>Rs.<%=rs.getString(6) %></h6>
				    <h6 class="card-title"><%=rs.getString(5) %></h6>
				    <p class="card-text"><%=rs.getString(8) %></p>
				    <a href="show_item.jsp?id=<%=rs.getString(1)%>" class="btn btn-primary">Check Out</a>
				  </div>
				</div>
    		  </div>
    		 
    		 
    		 
    		  
    		  
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
   
    </div>
    </div>
        <hr>

<!-- card ends here -->
   <div class="container">
   	   <div class="row mt-2">
   	   	  <div class="col-sm-4">
   	   	    	  	 <img src="images/card11.jpg" class="img-fluid" alt="Responsive image">
    	  	
   	   	  </div>
   	   	  <div class="col-sm-4">
   	   	    	  	 <img src="images/card12.jpg" class="img-fluid" alt="Responsive image">
    	  	
   	   	  </div>
   	   	  <div class="col-sm-4">
   	   	   	  	 <img src="images/card13.jpg" class="img-fluid" alt="Responsive image">
    	  	
   	   	  </div>
   	   	  
   	   </div>
   	
   </div>   
   
   
   
   
   
   
<%@ include file="footer.jsp" %>
   