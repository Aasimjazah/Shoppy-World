<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
 <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">

    <title>OnLine Shopping Site</title>
</head>
<body>
<%!
String name;

%>
<%
HttpSession s=request.getSession();
name=(String)s.getAttribute("name");
%>








	 <nav class="navbar navbar-expand-lg navbar-dark bg-dark fixed-top ">
					  <a class="btn btn-outline-danger" href="index1.jsp">Shoppe World</a>
					    <a class="btn btn-outline-info" href="profile.jsp"><%=name %></a>
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
					
					<br><br><br>
					<h1 style="text-align:center" class="text bg-info ">Add Products details</h1>
					
					 
					
			
					
					
<div class="row justify-content-center ">
 <div class="col-md-8 centered-form">
  <form action="details_save.jsp" onsubmit="return validation()" >
   <div class="input-group mb-3">
    <div class="input-group-prepend">
     <span class="input-group-text" id="basic-addon1">Enter owner Email</span>
    </div>
    <input type="text" class="form-control" placeholder="email" id="email" name="email" aria-label="Username" aria-describedby="basic-addon1">
    <span id="msg1" class="text text-danger"></span>
   </div>




<div class="input-group mb-3">
  <div class="input-group-prepend">
    <span class="input-group-text" id="basic-addon1">Enter owner name</span>
  </div>
  <input type="text" name="name" id="name" class="form-control" placeholder="name" aria-label="Username" aria-describedby="basic-addon1" >
  <span id="msg2" class="text text-danger"></span>
</div>




<div class="input-group mb-3">
  <div class="input-group-prepend">
    <span class="input-group-text" id="basic-addon1">Enter owner contact</span>
  </div>
  <input type="text" class="form-control" name="contact" id="contact" placeholder="contact" aria-label="Username" aria-describedby="basic-addon1">
  <span id="msg3" class="text text-danger"></span>
</div>




<div class="input-group mb-3">
  <div class="input-group-prepend">
    <span class="input-group-text" id="basic-addon1">Enter product name</span>
  </div>
  <input type="text" class="form-control" name="product_name" placeholder="productname" aria-label="Username" aria-describedby="basic-addon1" required>
 <span id="msg4" class="text text-danger"></span>
</div>




<div class="input-group mb-3">
  <div class="input-group-prepend">
    <span class="input-group-text" id="basic-addon1">Enter product price</span>
  </div>
  <input type="text" class="form-control" name="product_price" placeholder="price" aria-label="Username" aria-describedby="basic-addon1" required>
  <span id="msg5" class="text text-danger"></span>
</div>






<div class="input-group mb-3">
  <div class="input-group-prepend">
    <span class="input-group-text" id="basic-addon1">select_category</span>
  </div>
  <select name="category">Select Cetegory
  <option>Mobile</option>
  <option>Electronic</option>
  <option>Womens Wear</option>
  <option>Kids wear</option>
  </select>
</div>



<div class="input-group mb-3">
  <div class="input-group-prepend">
    <span class="input-group-text" id="basic-addon1">Write product details</span>
  </div>
  <textarea name="info" rows="4" cols="90"></textarea>
</div>


<div class="input-group mb-3">
  <div class="input-group-prepend">
    <span class="input-group-text" id="basic-addon1">Discount</span>
  </div>
  <input type="text" class="form-control" name="product_dis" placeholder="optional" aria-label="Username" aria-describedby="basic-addon1">
</div>


<div class="input-group mb-3">
  <div class="input-group-prepend">
    <span class="input-group-text" id="basic-addon1">Size</span>
  </div>
  <input type="text" class="form-control" name="product_size" placeholder="size" aria-label="Username" aria-describedby="basic-addon1" required>
  <span id="msg6" class="text text-danger"></span>
</div>

<div class="input-group mb-3">
  <div class="input-group-prepend">
    <span class="input-group-text" id="basic-addon1">quantity</span>
  </div>
  <input type="text" class="form-control" name="product_quantity" placeholder="quantity" aria-label="Username" aria-describedby="basic-addon1" required>
  <span id="msg7" class="text text-danger"></span>
</div>

  <input type="submit" value="add details">
  </form>
 </div>
</div>
					
					
					
<script>					

function validation()
 {
	patt=new RegExp("@gmail.com");
    var email=document.getElementById('email').value
    var name=document.getElementById('name').value
    var num=document.getElementById('contact').value

if(!(patt.test(email)))
	{
	 document.getElementById("msg1").innerHTML ="**Enter Valid Email";
	 return false;
	} 

else if((name.length<3)||(name.length>15))
	{
	 document.getElementById("msg2").innerHTML="name length is not proper";
     return false;
    }
else  if (isNaN(num) || num.length!=10)
	{
	 document.getElementById("msg3").innerHTML ="**Enter Valid number";
	 return false;
	}
else
	{
	 return true;
	}
 }			
					
</script>
</body>
</html>	
   
<%@ include file="footer.jsp" %>  