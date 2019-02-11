<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>


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
	</ul>
	</div>
	</nav>
</body>	













  

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>

 <head>
    <!-- Required meta tags -->
  
     <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.6.3/css/all.css" integrity="sha384-UHRtZLI+pbxtHCWp1t77Bi1L4ZtiqrqD80Kn4Z8NTSRyMA2Fd33n5dQ8lWUE00s/" crossorigin="anonymous">
    <link rel="stylesheet" type="text/css" href="css/gliphicon.css">
    <link href="/bootstrap4-glyphicons/css/bootstrap-glyphicons.min.css" rel="stylesheet" type="text/css" />
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
    <link rel="stylesheet" href="css/demo.css">
    <title>OnLine Shopping Site</title>
  </head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<br>
<h1 style="margin-left:20px;">WELCOME</h1>



<li class="nav-item">
       <button type="button" class="btn btn-primary" data-toggle="modal" data-target="#exampleModal1">
 		create account: new to Shoppe World
       </button>

							<!-- Modal -->
							<div class="modal fade" id="exampleModal1" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
							  <div class="modal-dialog" role="document">
							    <div class="modal-content">
							      <div class="modal-header">
							        <h5 class="modal-title" id="exampleModalLabel1">Registeration Form</h5>
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
        <center><h4></h4></center>
   <form action="db2register.jsp" onsubmit="return validation()">
  <label>Email:</label>
  <input type="Email" class="form-control" placeholder="email" id="email" name="email" >
  <span id="msg1" class="text text-danger"></span>
  <label>Name:</label>
  <input type="text" class="form-control" placeholder="name" id="name" name="name" >
  <span id="msg2" class="text text-danger"></span>
  <label>Contact:</label>
  <input type="text" class="form-control" placeholder="contact" id="num" name="contact" >
  <span id="msg3" class="text text-danger"></span>
  <label>Password:</label>
  <input type="password" class="form-control" placeholder="password" name="pass" >
  <span id="msg4" class="text text-danger"></span>
  <label>Confirm Password:</label>
  <input type="password" class="form-control" placeholder="password" name="confirm_pass" >
  <span id="msg5" class="text text-danger"></span>
  <input type="submit" class="btn btn-primary" value="login">
  </form>
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
			


<script>
function validation()
{
	patt1=new RegExp("@gmail.com");
    var email=document.getElementById('email').value
    var name=document.getElementById('name').value
    var num=document.getElementById('num').value
    var pass=document.getElementById('pass').value
    var confirm_pass=document.getElementById('confirm_pass').value
    
    if(!(patt1.test(email)))
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
else if(pass!=confirm_pass)
	{
	 document.getElementById("msg5").innerHTML ="**password is not matched";
	 return false;
	}
else
	{
	 document.getElementById("msg").innerHTML =" ";
	 return true;
	}
}

</script>

			



<br> <br>
<li class="nav-item">
       <button type="button" class="btn btn-primary" data-toggle="modal" data-target="#exampleModal">
 		Login: Already user
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
	 <%!
	


%>
<%
HttpSession s1=request.getSession();
String id=(String)s1.getAttribute("id");
String p_o_email=(String)s1.getAttribute("p_o_email");




%>	
	 

<!-- Loginform body starts here -->
  <div class="container">
     <div class="row">
        <div class="col-sm-2">
        </div>
        <div class="col-sm-8">
        <center><h4></h4></center>
   <form action="check.jsp">
  <label>Email:</label>
  <input type="Email" class="form-control" placeholder="email" name="email" required>
  <label>Password:</label>
  <input type="password" class="form-control" placeholder="password" name="pass" required>
  <input type="hidden" name="id" value="<%=id%>">
  <input type="hidden" name="p_o_email" value=<%=p_o_email%>>
 <input type="submit" class="btn btn-primary" value="login">
 </form>
</div>
</div>
<!-- Loginform  body ends here -->
           
</div>
 <div class="modal-footer">
  <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
  </div>
							     
							    </div>
							  </div>
							</div>
					      </li>




<br>

<%@include file="footer.jsp" %>
</body>
</html>