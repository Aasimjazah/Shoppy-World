<%@ include file="header.jsp" %>
<br><br>

<div id="form" class="row justify-content-center ">
<div class=" col-md-6 border border-muted ">

<h1 class="text text-muted ml-1">User Registration</h1>
<%
  HttpSession s4=request.getSession();
String msg1=(String)s4.getAttribute("msg2");
   if("success".equals(msg1))
   {
  %>
<p style="color:green; "><img style="height:220px;width:280px;" src="images/succ.gif">successfully registered</p> 


  <%
  s4.invalidate();
  
}
else if("fail".equalsIgnoreCase(msg1))
{
%> 
	 <p style="color:red"><img alt="" src="images/exclamation5.png"> Email already exist </p> 
<% 
	 s4.invalidate();
}
%>
<hr>
<form action="db2register.jsp" onsubmit="return validation()" autocomplete="off">

  <div class="form-group ">
    <label>Email address</label>
    <input type="text" class="form-control bg-info" id="email" placeholder="Enter email" name="email" autocomplete="off">
    <span id="msg" class="text text-danger">  </span>
  </div>
  
  
   <div class="form-group ">
    <label >Name</label>
    <input type="text" id="name" class="form-control bg-info" placeholder="Enter name" name="name">
     <span id="msg1" class="text text-danger"> </span>
  </div>
  
  
   <div class="form-group ">
    <label>Contact</label>
    <input type="text" id="num"class="form-control bg-info" placeholder="Enter contact" name="contact">
    <span id="msg2" class="text text-danger"> </span>
  </div>
  
  
  <div class="form-group ">
    <label>Address</label>
    <input type="text" class="form-control bg-info" id="" placeholder="Enter email" name="addr" autocomplete="off" required>
    <span id="msg" class="text text-danger">  </span>
  </div>
  
  
   <div class="form-group ">
    <label>Password</label>
    <input type="password" id="pass" class="form-control bg-info" placeholder="Enter Password" name="password" required>
    
  </div>
  
   <div class="form-group ">
    <label >Confirm Password</label>
    <input type="password" id="confirm_pass" class="form-control bg-info" placeholder="Enter password again" name="confirm_pass"> 
     <span id="msg3" class="text text-danger"> </span>
  </div>
  
 
  <input type="submit" class="btn btn-success mb-3" value="submit">

</form>
</div>
</div>

 <br><br>
 
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
	document.getElementById("msg").innerHTML ="**Enter Valid Email";
	return false;
	} 

else if((name.length<3)||(name.length>15))
	{
	 document.getElementById("msg1").innerHTML="name length is not proper";
        return false;
}
else  if (isNaN(num) || num.length!=10)
	{
	document.getElementById("msg2").innerHTML ="**Enter Valid number";
	return false;
	}
else if(pass!=confirm_pass)
	{
	document.getElementById("msg3").innerHTML ="**password is not matched";
	return false;
	}
else
	{
	document.getElementById("msg").innerHTML =" ";
	 return true;
	}
}

</script>
</body>
</html>

 
