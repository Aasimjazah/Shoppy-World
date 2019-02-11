<%@page import="java.sql.*" %>
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
 


  <body>
  <!-- Navbar starts here -->

					 <nav class="navbar navbar-expand-lg navbar-dark bg-dark fixed-top">
					  <a class="btn btn-outline-danger" href="index1.jsp">Shoppe World</a>
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
  <label>User Name:</label>
  <input type="text" class="form-control" name="name">
  <label>Password:</label>
  <input type="password" class="form-control" name="pass">
  <div class="form-check"><br>
    <label class="form-check-label">
      <input class="form-check-input" type="checkbox"> Remember me
    </label>
   <br><br>    
    <b>Type:</b><select name="type" required>
      <option value="admin">Vendor Login</option>
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
<br><br>



<table class="table">

  <thead class="thead-dark">
    <tr>
     <th scope="col">s.no</th>
      <th scope="col">Email</th>
      <th scope="col">Name</th>
      <th scope="col">Contact</th>
    
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
	 rs=stmt.executeQuery("select * from sw_user");
	 while(rs.next())
	 {

     %>
     
   <tr>
     <th scope="row"><%=i %></th>
      <td><%=rs.getString(1) %></td>
      <td><%=rs.getString(2) %></td>
      <td><%=rs.getString(3) %></td>
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
 <%@ include file="footer.jsp" %> 
