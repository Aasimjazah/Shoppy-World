<%@page import="java.sql.*" %>
<!doctype html>
<html lang="en">
  <head>
   <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.6.3/css/all.css" integrity="sha384-UHRtZLI+pbxtHCWp1t77Bi1L4ZtiqrqD80Kn4Z8NTSRyMA2Fd33n5dQ8lWUE00s/" crossorigin="anonymous">
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">

    <title>OnLine Shopping Site</title>
  </head>
 


  <body>
  <!-- Navbar starts here -->

					 <nav class="navbar navbar-expand-lg navbar-dark bg-dark fixed-top">
					  <a class="btn btn-outline-danger" href="index1.jsp"><i style="font-size:26px" class="fab fa-speakap"></i> Shoppe World</a>
					  <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
					    <span class="navbar-toggler-icon"></span>
					  </button>

					  <div class="collapse navbar-collapse" id="navbarSupportedContent">
					    <ul class="navbar-nav mr-auto">
					      <li class="nav-item active">
					        <a class="nav-link" href="index1.jsp"> <span class="glyphicon glyphicon-home "></span>Home <span class="sr-only">(current)</span></a>
					      </li>
					      <li class="nav-item">
					        <a class="nav-link" href="about.jsp">About us</a>
					      </li>
					       <li class="nav-item">
					        <a class="nav-link" href="session_out.jsp">Logout</a>
					      </li>
					     
					      <li class="nav-item dropdown">
					        <a class="nav-link dropdown-toggle" href="#" id="navbarDropdown" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
					          Category
					        </a>
					        <div class="dropdown-menu" aria-labelledby="navbarDropdown">
					          <a class="dropdown-item" href="#">Mobile</a>
					          <a class="dropdown-item" href="#">Electronic</a>
					          <a class="dropdown-item" href="#">Womens wear</a>
					          <a class="dropdown-item" href="#">Kids wear</a>
					          
					          
					          <div class="dropdown-divider">Mens wear</div>

					          <a class="dropdown-item" href="#">Something else here</a>
					        </div>
					      </li>
					       <li class="nav-item">
					        

							<!-- Modal -->
										      <li>
					      <img style="height:40px;width:40px" src="images/admin.jpg" class="rounded-circle" alt="admin photo" >
					      
					      </li>
					         
					    
					      
					    </ul>
					    <form class="form-inline my-2 my-lg-0">
					      <input class="form-control mr-sm-2" type="search" placeholder="Search" aria-label="Search">
					      <button class="btn btn-outline-success my-2 my-sm-0" type="submit">Search</button>
					    </form>
					    

					  </div>
					  
					  					</nav>

<br><br><br>



  <div class="container md-3">
			    	<div id="carouselExampleIndicators" class="carousel slide" data-ride="carousel">
			  <ol class="carousel-indicators">
			    <li data-target="#carouselExampleIndicators" data-slide-to="0" class="active"></li>
			    <li data-target="#carouselExampleIndicators" data-slide-to="1"></li>
			    <li data-target="#carouselExampleIndicators" data-slide-to="2"></li>
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

<br><br>
  <!-- Marketing messaging and featurettes
  ================================================== -->
  <!-- Wrap the rest of the page in another container to center all the content. -->

<%!

ResultSet rs;
int notify=0;
%>

<%	
try{

Class.forName("com.mysql.jdbc.Driver");
Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/sys","root","asimjazah8@gmail.com");
Statement stmt=con.createStatement();
rs=stmt.executeQuery("select * from sw_products where product_status='pending'");
while(rs.next())
{
	notify++;
}
}
catch(Exception e)
{
	
}
%>







<%!

ResultSet rs1;
int notify1=0;
%>

<%	
try{

Class.forName("com.mysql.jdbc.Driver");
Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/sys","root","asimjazah8@gmail.com");
Statement stmt=con.createStatement();
rs1=stmt.executeQuery("select * from sw_vendors");
while(rs1.next())
{
	notify1++;
}
}
catch(Exception e)
{
	
}
%>





<%!

ResultSet rs2;
int notify2=0;
%>

<%	
try{

Class.forName("com.mysql.jdbc.Driver");
Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/sys","root","asimjazah8@gmail.com");
Statement stmt=con.createStatement();
rs2=stmt.executeQuery("select * from sw_user");
while(rs2.next())
{
	notify2++;
}
}
catch(Exception e)
{
	
}
%>


  <div class="container-fluid">

    <!-- Three columns of text below the carousel -->
    <div class="row">
      <div class="col-md-3">
        <img src="images/vendorlogo.png" alt="vendorslogo">
        <h2>All vendors</h2>
        <p>Check all the vendors those are connected to our website </p>
        <p><a class="btn btn-secondary" href="all_vendors.jsp" role="button">Click me <span style="font-size:20px;"class="badge badge-warning"><%=notify1 %></span></a></p>
      </div>
      <div class="col-md-3">
        <img src="images/requests.png" alt="vendorslogo" height="20%",width="40%"> 
 
        <h2>Delivery Requests</h2>
        <p>The item which is selected by the customer have to be shipped on the perticular address.. check all the delivery requests and take early response</p>
        <p><a class="btn btn-secondary" href="order_request.jsp" role="button">Check Out &raquo;</a></p>
      </div>
     
      <div class="col-md-3">
          <img src="images/users.png" alt="vendorslogo" height="20%",width="40%">        
        <h2>All users</h2>
        <p>Regularly check all the users those are registered to the Shoppe world. it seems to be normalize the data about the users.. and inform about latest update </p>
        <p><a class="btn btn-secondary" href="all_users.jsp" role="button">All Users <span style="font-size:20px;"class="badge badge-warning"><%=notify2 %></span></a></p>
      </div>
      
      
   
       <div class="col-md-3">
          <img src="images/update.png" alt="vendorslogo" style="height:20%;width:100%">        
        <h2>Update site</h2>
        <p>The products add by the user in the site check that and move that products on to the shoppee World </p>
        <p><a class="btn btn-secondary" href="new_products.jsp" role="button">Check the New Products <span style="font-size:20px;"class="badge badge-warning"><%=notify %></span></a></p>
      </div>
    </div>
    </div>



<%notify= 0;
notify1=0;
notify2=0;
%>
<%@ include file="footer.jsp" %> 