<!doctype html>
<html lang="en">
  <head>
    <!-- Required meta tags -->
    <meta charset="utf-8">
     <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.6.3/css/all.css" integrity="sha384-UHRtZLI+pbxtHCWp1t77Bi1L4ZtiqrqD80Kn4Z8NTSRyMA2Fd33n5dQ8lWUE00s/" crossorigin="anonymous">
    <link rel="stylesheet" type="text/css" href="css/gliphicon.css">
    <link href="/bootstrap4-glyphicons/css/bootstrap-glyphicons.min.css" rel="stylesheet" type="text/css" />
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
    <link rel="stylesheet" href="css/demo.css">
    <title>OnLine Shopping Site</title>
    <style>
     @media only screen and (max-width: 600px) {
 #p_img{
   
    width:70%;  
   height:95%;  
  margin-left:10%;
    
  }
  
  #form{
   
    width:80%;  
   height:95%;  
    margin-left:10%;
    
  }
}
</style>
  </head>
 


  <body>
  <!-- Navbar starts here -->
 <nav class="navbar navbar-expand-lg navbar-dark bg-dark ">				 
  <a class="btn btn-outline-danger" href="index1.jsp"><i style="font-size:26px" class="fab fa-speakap"></i> Shoppe World</a>
  <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
    <span class="navbar-toggler-icon"></span>
  </button>
 <div class="collapse navbar-collapse" id="navbarSupportedContent">
 <ul class="navbar-nav mr-auto">
  <li class="nav-item active">
   <a class="nav-link" href="index1.jsp"><span class="glyphicon glyphicon-home" aria-hidden="true"></span> Home <span class="sr-only">(current)</span></a>
  </li>
 <li class="nav-item">
   <a class="nav-link" href="about.jsp"><span class="glyphicon glyphicon-info-sign" aria-hidden="true"></span> About us</a>
 </li>
   <li class="nav-item">
    <a class="nav-link" href="contact.jsp"><span class="glyphicon glyphicon-phone-alt" aria-hidden="true"></span> Contact us</a>
   </li>
     <li class="nav-item dropdown">
        <a class="nav-link dropdown-toggle" href="#" id="navbarDropdown" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
          Category
        </a>
     <div class="dropdown-menu" aria-labelledby="navbarDropdown">
         <a class="dropdown-item" href="search.jsp?search=all">All</a>
					          <a class="dropdown-item" href="search.jsp?search=mobile">Mobile</a>
					          <a class="dropdown-item" href="search.jsp?search=electronic">Electronic</a>
					          <a class="dropdown-item" href="search.jsp?search=womens wear">Womens wear</a>
					          <a class="dropdown-item" href="search.jsp?search=kids">Kids wear</a>
            <div class="dropdown-divider">Mens wear</div>
           
        </div>
	</li>
	  <li class="nav-item">
       <button type="button" class="btn btn-primary" data-toggle="modal" data-target="#exampleModal">
 		Login & SignUp
       </button>

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
        <center><h4>Select your category must</h4></center>
   <form action="check_admin.jsp">
  <label>Email:</label>
  <input type="Email" class="form-control" name="email" required>
  <label>Password:</label>
  <input type="password" class="form-control" name="pass" required>
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
							        
							      </div>
							      </form>
							    </div>
							  </div>
							</div>
					      </li>
					         
					    
					      
					    </ul>
					    <form class="form-inline my-2 my-lg-0" action="search.jsp">
					      <input class="form-control mr-sm-2" type="search" name="search" placeholder="Search" aria-label="Search">
					      <button class="btn btn-outline-success my-2 my-sm-0" type="submit">Search</button>
					    </form>

					  </div>
					</nav>



   <!-- Navbar ends here -->