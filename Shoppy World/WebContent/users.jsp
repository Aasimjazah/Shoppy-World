<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ page import="java.sql.*" %>
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
     <style>
    @media only screen and (max-width: 600px) {
 #p_img{
   
    width:60%;
    height:60%;  
    margin-left:10%;
    
  }
}
</style>
  </head>
 <%!
   String name;
   %>
   <%
   HttpSession s=request.getSession();
   name=(String)s.getAttribute("name");
  
   
   %>
   


  <body>
  <!-- Navbar starts here -->

					 <nav class="navbar navbar-expand-lg navbar-dark bg-dark fixed-top ">
					  <a class="btn btn-outline-danger" href="index1.jsp">Shoppe World</a>
					    <a class="btn btn-outline-info" href="profile2.jsp"><%=name %></a>
					  <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
					    <span class="navbar-toggler-icon"></span>
					  </button>

					  <div class="collapse navbar-collapse" id="navbarSupportedContent">
					    <ul class="navbar-nav mr-auto">
					      <li class="nav-item active">
					        <a class="nav-link" href="index1.jsp">Home <span class="sr-only">(current)</span></a>
					      </li>
					      <li class="nav-item">
					        <a class="nav-link" href="about.jsp">About us</a>
					      </li>
					      <li class="nav-item">
					        <a class="nav-link" href="contact.jsp">Contact us</a>
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
					        <a class="nav-link" href="session_out.jsp">Logout</a>
					      </li>
					       <li class="nav-item">
					        <h6 class="nav-link text text-success">Users Area</h6>
					      </li>
					        </li>
					          <li class="nav-item">
					   
					      </li>
					      
					       <li class="nav-item">
					       
							<!-- Modal -->
							<div class="modal fade" id="exampleModal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
							  <div class="modal-dialog" role="document">
							    <div class="modal-content">
							      <div class="modal-header">
							        <h5 class="modal-title" id="exampleModalLabel">Login Form</h5>
							        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
							          <span aria-hidden="true">&times;</span>
							        </button>
							      </div>
							      <div class="modal-body">
							         
							           <!-- Loginform body starts here -->
						
							<%
  String msg=request.getParameter("msg");
if(msg!=null)
{
	out.println("<html><body>");
	out.println("<center><font color=green size=5 text-align=center>"+msg);
	out.println("</font></center>");
	out.println("</body></html>");
}
%>
   <div class="container">
     <div class="row">
        <div class="col-sm-2">
        </div>
        <div class="col-sm-8">
        <center><h4>Admin Login</h4></center>
   <form action="check_admin.jsp">
  <label>Email:</label>
  <input type="Email" class="form-control" name="email">
  <label>Password:</label>
  <input type="password" class="form-control" name="pass">
  <div class="form-check"><br>
    <label class="form-check-label">
      <input class="form-check-input" type="checkbox"> Remember me
    </label>
   <br><br>    
    <b>Type:</b><select name="type" required>
      <option value="admin">Admin</option>
	    <option value="vendor">Vendor Login</option>
	    <option value="user">User Login</option>
	    
	</select><br><br>
  </div>
  <input type="submit" class="btn btn-primary"  value="Login"><a href="vensignup1.jsp" class="btn btn-outline-primary">VenSignUp</a><a href="usersignup.jsp" class="btn btn-outline-primary">UserSignUp</a>
  
  
  
</form>
   </div>
   <div class="col-sm-2">
   </div>
   
 </div>
							           <!-- Loginform  body ends here -->
							           
							      </div>
							      <div class="modal-footer">
							        <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
							        <input type="submit" class="btn btn-outline-default" value="login"></input>
							      </div>
							      </form>
							    </div>
							  </div>
							</div>
					      </li>
					         
					    
					      
					    </ul>
					

					  </div>
					</nav>
<%
if(name==null)
{
	response.sendRedirect("index1.jsp");
}
response.setHeader("pragma","no-cache");
response.setHeader("cache-control","no-store");
response.setHeader("Expires","0");
response.setDateHeader("Expires",-1);
 %>















   <!-- Navbar ends here -->
  
  <br>
  <div style="background-color:#40E0D0" class="row jumbotron">
  <div class="col-md-12">
  <h1 style="color:#2F4F4F">Welcome! <%=name %></h1>
  <p>We provide you to best and pure deals on your branded products.. The price you mention for your product is directly seen by the user who visit our website for shopping. So please enter the valid Price for your Product  </p>
  </div>
  
  </div>
  <div class="row">
 
  <div  class="col-md-2">
  <div id="p_img">
  <a class="btn btn-warning" href="my_cart.jsp">
 <img style="width:70%" src="images/cart.png">
   <br>My cart 
  
  </a>
  </div>
  <br>
  </div> 
  
  <div class="col-md-2">
  <div id="p_img">
  <a class="btn btn-warning" href="my_purchased.jsp">
 <img style="width:70%" src="images/purchased.png">
   <br>My purchased Products 
  
  </a>
  </div>
  </div>
  
  
  
  
  
  
   <div class="col-md-2">
  
  
  
  
  
  </div>
  
   <div class="col-md-2">
  
  
  
  
  
  </div>
 
  <div class="col-md-2">
  
  
  
  
  
  </div>
  
   <div class="col-md-2">
  
  
  
  
  
  </div>
  
  
  
  </div>
 
  
  
  
  
  
  
  
  
  

  
  
  
  
   
<%@ include file="footer.jsp" %> 