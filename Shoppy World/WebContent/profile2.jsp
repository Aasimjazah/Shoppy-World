<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ page import="java.sql.*" %>
<!doctype html>
<html lang="en">
  <head>
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">

    <title>OnLine Shopping Site</title>
  </head>
 <%!
   String name;
 
   %>
   <%
   HttpSession s=request.getSession();
  
  
   
   %>
   
   						<%!
String first_name;
String last_name;
String email;
String password;
String nickname;
String contact;
String address;


%>
<%

String email=(String)s.getAttribute("email");
String password=(String)s.getAttribute("password");
String id=(String)s.getAttribute("id");
try{
	Class.forName("com.mysql.jdbc.Driver");
	
	Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/sys","root","asimjazah8@gmail.com");
	
	Statement stmt=con.createStatement();
	
	ResultSet rs=stmt.executeQuery("select user_email,user_name,user_contact,user_password,address from sw_user where user_email='"+email+"' and user_password='"+password+"'");
	if(rs.next())
	{
			 email=rs.getString(1);
			 name=rs.getString(2);
			 contact=rs.getString(3);
			 password=rs.getString(4);
			 address=rs.getString(5);			 
			
			
	 }
		else
		{
			out.println(email);
		}

}
catch(Exception e)
{
	out.println(e);
}


%>
   


  <body>
  <!-- Navbar starts here -->

					 <nav class="navbar navbar-expand-lg navbar-dark bg-dark fixed-top ">
					  <a class="btn btn-outline-danger" href="index1.jsp">Shoppe World</a>
					    <a class="btn btn-outline-info" href="#"><%=name %></a>
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
	response.sendRedirect("index.jsp");
}
response.setHeader("pragma","no-cache");
response.setHeader("cache-control","no-store");
response.setHeader("Expires","0");
response.setDateHeader("Expires",-1);
 %>
					
					
					
					
					
					
						

						
						
						
						
<br><br><br>
<div class="container">
	<div class="row">
		<div class="col-md-12">
		    <div class="card">
		        <div class="card-body">
		            <div class="row">
		                <div class="col-md-12">
		                    <h4>Your Profile</h4>
		                    <hr>
		                </div>
		            </div>
		            <div class="row">
		                <div class="col-md-12">
		                    <form action="update_profile2.jsp" method="post">
                           
                             
                              <div class="form-group row">
                                <label for="name" class="col-4 col-form-label">Name</label> 
                                <div class="col-8">
                                  <input id="name" name="name" value="<%=name %>" class="form-control here" type="text">
                                </div>
                                </div>
                             
                            
                              
                              <div class="form-group row">
                                <label for="email" class="col-4 col-form-label">Email*</label> 
                                <div class="col-8">
                                  <input id="email" name="email" value="<%=email %>" class="form-control here" required="required" type="text">
                                </div>
                              </div>
                            
                              <div class="form-group row">
                                <label for="publicinfo" class="col-4 col-form-label">Contact</label> 
                                <div class="col-8">
                                  <input id="contact" name="contact" value="<%=contact %>" class="form-control here" type="text">
                                </div>
                              </div>
                              <div class="form-group row">
                                <label for="newpass" class="col-4 col-form-label">password</label> 
                                <div class="col-8">
                                  <input id="newpass" name="password" value="<%=password %>" class="form-control here" type="text">
                                </div>
                              </div> 
                              <div class="form-group row">
                                <label for="publicinfo" class="col-4 col-form-label">Address</label> 
                                <div class="col-8">
                                  <input id="contact" name="user_address" value="<%=address %>" class="form-control here" type="text">
                                </div>
                              </div>
                              
                              <div class="form-group row">
                                <div class="offset-4 col-8">
                                  <button name="submit" type="submit" class="btn btn-primary">Update My Profile</button>
                                </div>
                              </div>
                              
                            </form>
		                </div>
		            </div>
		            
		        </div>
		    </div>
		</div>
	</div>
</div>

						
						
						
						
						
						
						 
<%@ include file="footer.jsp" %> 